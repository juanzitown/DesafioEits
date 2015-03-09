package com.desafio.app.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.desafio.app.model.RoleUsuario;

@Repository
public class RoleRepositoryImpl implements RoleRepository {

	@PersistenceContext
	private EntityManager entityManager;
	
	@Override
	public RoleUsuario save(RoleUsuario role) {
		entityManager.persist(role);
		System.out.println("Role salvo com sucesso!");
		return role;
	}

	@Override
	public RoleUsuario find(Long id) {
		return entityManager.find(RoleUsuario.class, id);
	}

	@Override
	public List<RoleUsuario> findAllRole() {
		Query query = entityManager.createQuery("SELECT e FROM RoleUsuario e");
		return (List<RoleUsuario>) query.getResultList();
	}

	@Override
	public RoleUsuario alterRole(RoleUsuario role) {
		entityManager.merge(role);
		return role;
	}

}
