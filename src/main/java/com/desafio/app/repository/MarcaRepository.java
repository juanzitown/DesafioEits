package com.desafio.app.repository;

import com.desafio.app.model.Marca;

public interface MarcaRepository {
	
	public Marca save(Marca marca);
	public Marca find(Long id);
}
