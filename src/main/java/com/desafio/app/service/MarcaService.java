package com.desafio.app.service;

import com.desafio.app.model.Marca;

public interface MarcaService {

	public Marca save(Marca marca);
	public Marca find(Long id);
}
