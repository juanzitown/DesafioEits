package com.desafio.app.repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.desafio.app.model.Produto;

@Repository
public class ProdutoRepositoryImpl implements ProdutoRepository {

	@PersistenceContext
	EntityManager entityManager;

	@Override
	public Produto save(Produto produto) {
		entityManager.persist(produto);
		System.out.println("Produto Salvo com Sucesso!");
		return produto;
	}

	@Override
	public Produto find(Long id) {
		return null;
	}

}
