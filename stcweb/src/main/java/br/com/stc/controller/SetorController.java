package br.com.stc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SetorController {
	
	@RequestMapping("/setores")
	public ModelAndView displaySetores(){
		
		String message = "Novo setor criado";
		
		return new ModelAndView("setores/setores", "message", message);
	}
	
}
