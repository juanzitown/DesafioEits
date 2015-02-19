package com.desafio.app.repository;

import javax.transaction.Transactional;

import com.desafio.app.model.Marca;

public interface MarcaRepository {
	
	public Marca save(Marca marca);
}
