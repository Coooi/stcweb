package br.com.stc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/home")
	public String displayHome(ModelMap model) {
 
		model.addAttribute("message", "Spring Security Hello World");
		return "home";
 
	}

}
