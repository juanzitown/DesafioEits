package com.desafio.app.service;

import java.util.List;

import com.desafio.app.model.Produto;

public interface ProdutoService {

	public Produto saveProduto(Produto produto);
	public Produto findProduto(Long id);
	public List<Produto> findAllProduto();
	public Produto alterProduto(Produto produto);
	public void deleteProduto(Produto produto);
}
