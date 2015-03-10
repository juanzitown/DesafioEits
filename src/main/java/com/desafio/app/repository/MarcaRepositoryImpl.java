package com.desafio.app.repository;

import java.util.Calendar;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.desafio.app.model.Marca;
import com.desafio.app.model.Produto;

@Repository
public class MarcaRepositoryImpl implements MarcaRepository {

	@PersistenceContext
	private EntityManager entityManager;
	
	@Override
	public Marca save(Marca marca) {
		marca.setDataCriacao(Calendar.getInstance());
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
		marca.setDataAlteracao(Calendar.getInstance());
		entityManager.merge(marca);
		return marca;
	}
	
	@Override
	public void delete(Marca marca) {
		 entityManager.remove(entityManager.contains(marca) ? marca : entityManager.merge(marca));
	}

}
