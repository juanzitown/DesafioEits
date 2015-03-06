package com.desafio.app.service;

import java.util.List;

import javax.transaction.Transactional;

import org.directwebremoting.annotations.RemoteMethod;
import org.directwebremoting.annotations.RemoteProxy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.desafio.app.model.Produto;
import com.desafio.app.repository.ProdutoRepository;

@RemoteProxy(name="produtoServiceDwr")
@Transactional
public class ProdutoServiceImpl implements ProdutoService{
	
	@Autowired
	ProdutoRepository produtoRepository;

	@Override
	@RemoteMethod
	public Produto saveProduto(Produto produto) {
		return produtoRepository.save(produto);
	}

	@Override
	@RemoteMethod
	public Produto findProduto(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@RemoteMethod
	public List<Produto> findAllProduto() {
		return produtoRepository.findAll();
	}

	@Override
	public Produto alterProduto(Produto produto) {
		return produtoRepository.alter(produto);
	}
	
	

}
