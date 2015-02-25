package com.desafio.app.repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.desafio.app.model.Usuario;

@Repository
public class UserRepositoryImpl implements UserRepository {

	@PersistenceContext
	private EntityManager entityManager;
	
	@Override
	public Usuario saveUser(Usuario usuario) {
		entityManager.persist(usuario);
		System.out.println("Usuario salvo com sucesso!");
		return usuario;
	}

	@Override
	public Usuario findUser(Long id) {
		return entityManager.find(Usuario.class, id);
	}
}
