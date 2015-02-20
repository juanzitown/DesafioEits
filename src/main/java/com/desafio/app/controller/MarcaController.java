package com.desafio.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.desafio.app.model.Marca;
import com.desafio.app.service.MarcaService;

@Controller
public class MarcaController {
	
	@Autowired
	private MarcaService marcaService;
	
	@RequestMapping(value = "/marca", method = RequestMethod.GET)
	public String marca() {
		Marca marca = new Marca();
		marca.setDescricao("marcaTeste");
		marcaService.save(marca);
		return "home";
	}
}
