package com.desafio.app.repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.desafio.app.model.Marca;

@Repository
public class MarcaRepositoryImpl implements MarcaRepository {

	@PersistenceContext
	private EntityManager entityManager;
	
	@Override
	public Marca save(Marca marca) {
		entityManager.persist(marca);
		System.out.println("Marca salvo com sucesso!");
		return marca;
	}

	@Override
	public Marca find(Long id) {
		return entityManager.find(Marca.class, id);
	}

}
