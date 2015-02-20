package com.desafio.app.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.desafio.app.model.Produto;
import com.desafio.app.repository.ProdutoRepository;


@Service("produtoService")
@Transactional
public class ProdutoServiceImpl implements ProdutoService{
	
	@Autowired
	ProdutoRepository produtoRepository;

	@Override
	public Produto save(Produto produto) {
		return produtoRepository.save(produto);
	}

}
