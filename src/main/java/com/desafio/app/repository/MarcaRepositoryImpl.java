package com.desafio.app.repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.desafio.app.model.Marca;

@Repository
public class MarcaRepositoryImpl implements MarcaRepository {

	@PersistenceContext
	private EntityManager entityManager;
	
	@Override 
	public Marca save(Marca marca) {
		entityManager.persist(marca);
		return marca;
	}

}
