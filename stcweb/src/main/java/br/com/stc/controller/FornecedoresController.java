package br.com.stc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FornecedoresController {
	
	@RequestMapping("/fornecedores")
	public ModelAndView displayFornecedores(){
		return new ModelAndView("fornecedores/fornecedores");
	}

}
