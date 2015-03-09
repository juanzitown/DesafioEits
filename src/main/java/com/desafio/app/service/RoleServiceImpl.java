package com.desafio.app.service;

import java.util.List;

import javax.transaction.Transactional;

import org.directwebremoting.annotations.RemoteMethod;
import org.directwebremoting.annotations.RemoteProxy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.desafio.app.model.RoleUsuario;
import com.desafio.app.repository.RoleRepository;

@Service
@RemoteProxy(name="roleServiceDwr")
@Transactional
public class RoleServiceImpl implements RoleService{

	@Autowired
	private RoleRepository roleRepository;

	@Override
	@RemoteMethod
	public RoleUsuario saveRole(RoleUsuario role) {
		return roleRepository.save(role);
	}

	@Override
	@RemoteMethod
	public RoleUsuario findRole(Long id) {
		return roleRepository.find(id);
	}

	@Override
	@RemoteMethod
	public List<RoleUsuario> findAllRole() {
		return roleRepository.findAllRole();
	}

	@Override
	@RemoteMethod
	public RoleUsuario alterRole(RoleUsuario role) {
		return roleRepository.alterRole(role);
	}

}