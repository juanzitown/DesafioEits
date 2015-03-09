package com.desafio.app.service;

import java.util.List;

import com.desafio.app.model.RoleUsuario;

public interface RoleService {

	public RoleUsuario saveRole(RoleUsuario role);
	public RoleUsuario findRole(Long id);
	public List<RoleUsuario> findAllRole();
	public RoleUsuario alterRole(RoleUsuario role);
}
