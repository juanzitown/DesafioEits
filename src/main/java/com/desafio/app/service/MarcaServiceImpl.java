package com.desafio.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.desafio.app.model.Marca;
import com.desafio.app.repository.MarcaRepository;

@Service("MarcaService")
public class MarcaServiceImpl implements MarcaService{

	@Autowired
	private MarcaRepository marcaRepository;
	
	@Override
	public Marca save(Marca marca) {
		return marcaRepository.save(marca);
	}

}