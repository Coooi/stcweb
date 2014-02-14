package br.com.stc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ApropriacaoController {
	
	@RequestMapping("/apropriacao/nova")
	public ModelAndView novaApropriacao(){
		return new ModelAndView("apropriacao/novaApropriacao");
	}
	
	@RequestMapping("/apropriacao/consulta")
	public ModelAndView consultaApropriacao(){
		return new ModelAndView("apropriacao/consultaApropriacao");
	}

}
