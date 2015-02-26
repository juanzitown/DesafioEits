package com.desafio.app.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

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

	@Override
	public List<Marca> findAllMarca() {
		Query query = entityManager.createQuery("SELECT e FROM Marca e");
		return (List<Marca>) query.getResultList();
	}

	@Override
	public Marca alterMarca(Marca marca) {
		entityManager.merge(marca);
		return marca;
	}

}
