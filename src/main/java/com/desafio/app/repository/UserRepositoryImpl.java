package com.desafio.app.repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import com.desafio.app.model.Usuario;

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
	public Usuario findUser(Usuario usuario) {
		return entityManager.find(Usuario.class, usuario);
	}
}
