package br.com.stc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ContabilidadeController {
	
	@RequestMapping("/contabilidade")
	public ModelAndView dysplayContabilidade(){
		return new ModelAndView("contabilidade/contabilidade");
	}

}
