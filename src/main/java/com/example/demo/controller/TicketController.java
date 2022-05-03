package com.example.demo.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.Station;
import com.example.demo.model.Ticket;
import com.example.demo.model.User;
import com.example.demo.service.FareService;
import com.example.demo.service.StationService;
import com.example.demo.service.TicketService;
import com.example.demo.service.UserService;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;

@Controller
public class TicketController {

	@Autowired
	private TicketService service;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private FareService fareService;
	
	@Autowired
	private StationService stationService;
	
	@RequestMapping("/viewtickets")
	public String viewTickets(HttpSession session,Model model)
	{
		List<Ticket> tickets=service.findAll();
		
		String role=(String)session.getAttribute("role");
		
		if(role.equals("admin"))
		{
			model.addAttribute("tickets",tickets);
		}
		else
		{
			model.addAttribute("tickets",service.findByUserId((Integer)session.getAttribute("userid")));
		}
		
		return "viewtickets";
	}
	
	@RequestMapping("/viewticket")
	public String viewTicket(@RequestParam int id,Model model)
	{
		model.addAttribute("ticket",service.findById(id));
		return "viewticket";
	}
	
	@RequestMapping("/addticket")
	public String addTicket(@RequestParam int routeid,Model model)
	{
		model.addAttribute("ticket",new Ticket());
		
		List<Station> stations=stationService.findByRouteId(routeid);
		model.addAttribute("stations",stations);
		
		return "addticket";
	}
	
	@RequestMapping(value = "/verifyticket",method = RequestMethod.POST)
	public String verifyticket(HttpSession session,Model model,@ModelAttribute("ticket") Ticket ticket)
	{
		session.removeAttribute("message");
		
		User user=userService.findById((Integer)session.getAttribute("userid"));
		
		int fare=fareService.getFareBySourceAndDestination(ticket.getSource(),ticket.getDestination(),ticket.getType());
		fare=fare*ticket.getCount();
		
		ticket.setDate(new Date());
		
		if(!ticket.getSource().equals(ticket.getDestination()))
		{
			if(fare!=0)
			{
				if(user.getBalance()>=fare)
				{
					session.setAttribute("ticket",ticket);
					session.setAttribute("fare",fare);
					System.out.println("while adding");
					
					return "verifyticket";
				}
				else
				{
					session.setAttribute("message","Your Wallet Does not Have Sufficient Balance");
				}
			}
			else
			{
				session.setAttribute("message","Unable to Book Ticket for Selected Sorce and Destination");
			}
		}
		else
		{
			session.setAttribute("message","Source and Destination Should not be Same");
		}
		
		return "redirect:/viewtickets";
	}
	
	@RequestMapping(value = "/cancelticket",method = RequestMethod.GET)
	public String cancelticket(HttpSession session,Model model)
	{
		session.removeAttribute("ticket");
		return "redirect:/viewroutes";
	}
	
	@RequestMapping(value = "/saveticket",method = RequestMethod.GET)
	public String saveTicket(HttpSession session, Model model)
	{
		Ticket ticket=(Ticket)session.getAttribute("ticket");
		
		if(ticket!=null)
		{
			User user=userService.findById((Integer)session.getAttribute("userid"));
			User admin=userService.findById(1);
			
			if(!ticket.getSource().equals(ticket.getDestination()))
			{
				int fare=fareService.getFareBySourceAndDestination(ticket.getSource(),ticket.getDestination(),ticket.getType());
				
				fare=fare*ticket.getCount();
				
				if(fare!=0)
				{
					if(user.getBalance()>=fare)
					{
						user.setBalance(user.getBalance()-fare);
						admin.setBalance(admin.getBalance()+fare);
						
						ticket.setDate(new Date());
						service.save(ticket);
						
						userService.save(user);
						userService.save(admin);
						
						model.addAttribute("message","Your Ticket Booked Successfully");
						
						session.removeAttribute("ticket");
						session.removeAttribute("fare");
					}
					else
					{
						model.addAttribute("message","Your Wallet Does not Have Sufficient Balance");
					}
				}
				else
				{
					model.addAttribute("message","Unable to Book Ticket for Selected Sorce and Destination");
				}
			}
			else
			{
				model.addAttribute("message","Source and Destination Should not be Same");
			}
			
			model.addAttribute("tickets",service.findByUserId((Integer)session.getAttribute("userid")));
			return "viewtickets";
		}
		else
		{
			return "redirect:/viewroutes";
		}
	}
	
	@RequestMapping("/downloadqr")
	public ResponseEntity<Resource> downloadQr(@RequestParam int ticketid,Model model) throws IOException
	{
		Ticket ticket=service.findById(ticketid);
		
		String info="Ticket ID:"+ticket.getId();
		info=info+"\n Source:"+ticket.getSource();
		info=info+"\n Destination:"+ticket.getDestination();
		info=info+"\n Booking Date:"+ticket.getDate();
		info=info+"\n No of Tickets:"+ticket.getCount();
		info=info+"\n Ticket Type:"+ticket.getType();
		
		generateQr(info);
		
		File file=new File("J:\\qr.png");
		InputStreamResource resource = new InputStreamResource(new FileInputStream(file));
		
		HttpHeaders header = new HttpHeaders();
        header.add(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=qr.png");
        header.add("Cache-Control", "no-cache, no-store, must-revalidate");
        header.add("Pragma", "no-cache");
        header.add("Expires", "0");
        
	    return ResponseEntity.ok()
	            .headers(header)
	            .contentLength(file.length())
	            .contentType(MediaType.APPLICATION_OCTET_STREAM)
	            .body(resource);
	}
	
	public static boolean generateQr(String data)
	{
		boolean isGenerated=false;
		try {
	 
	        // The path where the image will get saved
	        String path = "J:\\qr.png";
	 
	        // Encoding charset
	        String charset = "UTF-8";
	 
	        Map<EncodeHintType, ErrorCorrectionLevel> hashMap
	            = new HashMap<EncodeHintType,
	                          ErrorCorrectionLevel>();
	 
	        hashMap.put(EncodeHintType.ERROR_CORRECTION,
	                    ErrorCorrectionLevel.L);
	 
	        // Create the QR code and save
	        // in the specified folder
	        // as a jpg file
	        createQR(data, path, charset, hashMap, 200, 200);
	        
	        isGenerated=true;
	        
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isGenerated;
	}
	
	// Function to create the QR code
    public static void createQR(String data, String path,String charset, Map hashMap,int height, int width)throws WriterException, IOException
    {
        BitMatrix matrix = new MultiFormatWriter().encode(new String(data.getBytes(charset), charset),BarcodeFormat.QR_CODE, width, height);
        
        MatrixToImageWriter.writeToFile(matrix,path.substring(path.lastIndexOf('.') + 1),new File(path));
    }
}

