package com.desafio.app.service;

import com.desafio.app.model.Produto;

public interface ProdutoService {

	public Produto saveProduto(Produto produto);
	public Produto findProduto(Long id);
}
