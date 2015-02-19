package com.desafio.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.desafio.app.model.Marca;
import com.desafio.app.service.MarcaService;

@Controller
@SessionAttributes("marca")
public class MarcaController {
	
	public MarcaController() {
		// TODO Auto-generated constructor stub
	}
	
	@Autowired
	private MarcaService marcaService;
	
	@RequestMapping(value = "/marca", method = RequestMethod.GET)
	public String marca(Model model) {
		Marca marca = new Marca();
		marca.setDescricao("marcaTeste");
		model.addAttribute("marca", marca);
		return "home";
	}
	
	@RequestMapping(value = "/marca", method = RequestMethod.POST)
	public String saveMarca(@ModelAttribute("marca") Marca marca, BindingResult result) {
		if(result.hasErrors())
			return "home";
		else {
			marcaService.save(marca);
		}
		return "home";
	}

}
