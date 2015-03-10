package com.desafio.app.repository;

import java.util.List;

import com.desafio.app.model.Marca;

public interface MarcaRepository {
	
	public Marca save(Marca marca);
	public Marca find(Long id);
	public List<Marca> findAllMarca();
	public Marca alterMarca(Marca marca);
	public void delete(Marca marca);
}
