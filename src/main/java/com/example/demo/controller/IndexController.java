package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@RequestMapping("/")
	public String index(Model model)
	{
		return "index";
	}
	
	@RequestMapping("/aboutus")
	public String aboutus(Model model)
	{
		return "aboutus";
	}
	
	@RequestMapping("/contactus")
	public String contactus(Model model)
	{
		return "contactus";
	}
}

