package com.desafio.app.repository;

import java.util.List;

import com.desafio.app.model.Produto;

public interface ProdutoRepository {
	
	public Produto save(Produto produto);
	public Produto find(Long id);
	public List<Produto> findAll();
	public Produto alter(Produto produto);

}
