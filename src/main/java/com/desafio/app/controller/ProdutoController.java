package com.desafio.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.desafio.app.model.Marca;
import com.desafio.app.model.Produto;
import com.desafio.app.service.MarcaService;
import com.desafio.app.service.ProdutoService;

@Controller
public class ProdutoController {
	
	@Autowired
	ProdutoService produtoService;
	@Autowired
	MarcaService marcaService;
	
	@RequestMapping(value = "/produto", method = RequestMethod.GET)
	public String produto() {
		Produto produto = new Produto();
		Marca marca = marcaService.find(1L);
		produto.setDescricao("Produto01");
		produto.setMarca(marca);
		produtoService.save(produto);
		return "home";
	}
	
}
