package com.desafio.app.repository;

import java.util.List;

import com.desafio.app.model.RoleUsuario;

public interface RoleRepository {
	
	public RoleUsuario save(RoleUsuario role);
	public RoleUsuario find(Long id);
	public List<RoleUsuario> findAllRole();
	public RoleUsuario alterRole(RoleUsuario role);
}
