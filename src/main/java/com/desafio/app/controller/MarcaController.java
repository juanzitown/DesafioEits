package com.desafio.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MarcaController {
	
	@RequestMapping(value = "/marca", method = RequestMethod.GET)
	public String marca() {
		return "marca";
	}
	
	@RequestMapping(value = "/marca/listar", method = RequestMethod.GET)
	public String marcaListar() {
		return "marcaListar";
	}
	
	
	
}
