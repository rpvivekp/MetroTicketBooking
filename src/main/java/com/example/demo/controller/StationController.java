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

import com.example.demo.model.Station;
import com.example.demo.service.StationService;

@Controller
public class StationController {

	@Autowired
	private StationService service;
	
	@RequestMapping("/viewstations")
	public String viewStations(@RequestParam int routeid,Model model)
	{
		List<Station> stations=service.findByRouteId(routeid);
		model.addAttribute("stations",stations);
		return "viewstations";
	}
	
	@RequestMapping("/viewstation")
	public String viewStation(@RequestParam int id,Model model)
	{
		model.addAttribute("station",service.findById(id));
		return "viewstation";
	}
	
	@RequestMapping("/addstation")
	public String addStation(@RequestParam int routeid,Model model)
	{
		model.addAttribute("station",new Station());
		model.addAttribute("routeid",routeid);
		return "addstation";
	}

	@RequestMapping(value = "/savestation",method = RequestMethod.POST)
	public String saveStation(HttpServletRequest request, Model model,@ModelAttribute("station") Station station)
	{
		service.save(station);
		return "redirect:/viewstations?routeid="+station.getRouteid();
	}
}

