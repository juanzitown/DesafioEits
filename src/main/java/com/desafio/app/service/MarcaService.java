package com.desafio.app.service;

import java.util.List;

import com.desafio.app.model.Marca;

public interface MarcaService {

	public Marca saveMarca(Marca marca);
	public Marca findMarca(Long id);
	public List<Marca> findAllMarca();
	public Marca alterMarca(Marca marca);
	void deleteMarca(Marca marca);
}
