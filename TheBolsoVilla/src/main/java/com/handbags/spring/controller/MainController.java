package com.handbags.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.handbags.spring.Service.CategoryService;
import com.handbags.spring.model.Category;

@Controller
public class MainController {
	
	@Autowired
	CategoryService categoryService;
	
	
	@RequestMapping("/")
	public String getHome(Model model) 
	{
		model.addAttribute("category", new Category());
	model.addAttribute("clist", categoryService.getList());
	
		
		return "index";
	}
}
