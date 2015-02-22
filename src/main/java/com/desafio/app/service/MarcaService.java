package com.desafio.app.service;

import com.desafio.app.model.Marca;

public interface MarcaService {

	public Marca save(Marca marca);
	public Marca find(Long id);
	public float add(Integer operand1, Integer operand2);
}
