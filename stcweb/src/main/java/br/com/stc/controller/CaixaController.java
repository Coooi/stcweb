package br.com.stc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CaixaController {
	
	@RequestMapping("/caixa")
	public ModelAndView dysplayCaixa(){
		return new ModelAndView("caixa/caixa");	
	}

}
