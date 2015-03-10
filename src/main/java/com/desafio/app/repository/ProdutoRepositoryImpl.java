package com.desafio.app.repository;

import java.util.Calendar;
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
		produto.setDataCriacao(Calendar.getInstance());
		entityManager.persist(produto);
		System.out.println("Produto Salvo com Sucesso!");
		return produto;
	}

	@Override
	public Produto find(Long id) {
		return entityManager.find(Produto.class, id);
	}

	@Override
	public List<Produto> findAll() {
		Query query = entityManager.createQuery("SELECT e FROM Produto e");
		return query.getResultList();
	}

	@Override
	public Produto alter(Produto produtoAlterado) {
		Produto produto = find(produtoAlterado.getId());
		
		produto.setDataAlteracao(Calendar.getInstance());
		produto.setMarca(produtoAlterado.getMarca());
		produto.getMarca().setDataAlteracao(Calendar.getInstance());
		produto.setDescricao(produtoAlterado.getDescricao());
		entityManager.merge(produto);
		return produto;
	}

	@Override
	public void delete(Produto produto) {
		 entityManager.remove(entityManager.contains(produto) ? produto : entityManager.merge(produto));
	}

}
