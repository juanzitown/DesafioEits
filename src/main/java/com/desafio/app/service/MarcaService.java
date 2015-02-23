package com.desafio.app.service;

import com.desafio.app.model.Marca;

public interface MarcaService {

	public Marca saveMarca(String descricao);
	public Marca findMarca(Long id);
}
