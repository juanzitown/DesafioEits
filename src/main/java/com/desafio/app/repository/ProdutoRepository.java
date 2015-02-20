package com.desafio.app.repository;

import com.desafio.app.model.Produto;

public interface ProdutoRepository {
	
	public Produto save(Produto produto);
	public Produto find(Long id);

}
