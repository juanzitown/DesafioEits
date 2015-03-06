package com.desafio.app.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

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

	@Override
	public List<Produto> findAll() {
		Query query = entityManager.createQuery("SELECT e FROM Produto e");
		return query.getResultList();
	}

	@Override
	public Produto alter(Produto produto) {
		entityManager.merge(produto);
		return produto;
	}

}
