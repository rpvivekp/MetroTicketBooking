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

import com.example.demo.model.Route;
import com.example.demo.service.RouteService;

@Controller
public class RouteController {

	@Autowired
	private RouteService service;
	
	@RequestMapping("/viewroutes")
	public String viewRoutes(Model model)
	{
		List<Route> routes=service.findAll();
		model.addAttribute("routes",routes);
		return "viewroutes";
	}
	
	@RequestMapping("/viewroute")
	public String viewRoute(@RequestParam int id,Model model)
	{
		model.addAttribute("route",service.findById(id));
		return "viewroute";
	}

	@RequestMapping("/addroute")
	public String addRoute(Model model)
	{
		model.addAttribute("route",new Route());
		return "addroute";
	}

	@RequestMapping(value = "/saveroute",method = RequestMethod.POST)
	public String saveRoute(HttpServletRequest request, Model model,@ModelAttribute("route") Route route)
	{
		service.save(route);
		return "redirect:/viewroutes";
	}
}

