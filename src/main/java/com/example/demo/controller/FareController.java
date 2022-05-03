package com.example.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.Fare;
import com.example.demo.service.FareService;
import com.example.demo.service.StationService;

@Controller
public class FareController {
	
	@Autowired
	private FareService service;
	
	@Autowired
	private StationService stationService;
	
	@RequestMapping("/viewfares")
	public String viewFares(Model model)
	{
		List<Fare> fares=service.findAll();
		model.addAttribute("fares",fares);
		return "viewfares";
	}
	
	@RequestMapping("/viewfare")
	public String viewFare(@RequestParam int id,Model model)
	{
		model.addAttribute("fare",service.findById(id));
		return "viewfare";
	}
	
	@RequestMapping("/addfare")
	public String addFare(Model model)
	{
		model.addAttribute("fare",new Fare());
		model.addAttribute("stations",stationService.findAll());
		return "addfare";
	}

	@RequestMapping(value = "/savefare",method = RequestMethod.POST)
	public String saveFare(HttpServletRequest request, Model model,@ModelAttribute("fare") Fare fare)
	{
		service.save(fare);
		return "redirect:/viewfares";
	}
}

