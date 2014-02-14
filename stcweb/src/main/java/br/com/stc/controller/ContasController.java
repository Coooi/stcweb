package br.com.stc.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/contas")
public class ContasController {
	
	@RequestMapping(value="/pagar", method=RequestMethod.GET)
	public ModelAndView displayContasPagar(){
		return new ModelAndView("contas/pagar");
	}
	
	@RequestMapping(value="/receber", method=RequestMethod.GET)
	public ModelAndView displayContasReceber(@RequestParam("params") Map<String, Object> params){
		ModelAndView modelAndView = new ModelAndView("contas/receber");
		//call the contasService.findAllByName()
		modelAndView.addObject(null);
		return modelAndView;
	}

}
