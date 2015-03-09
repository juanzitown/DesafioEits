package com.desafio.app.service;

import java.util.List;

import javax.transaction.Transactional;

import org.directwebremoting.annotations.RemoteMethod;
import org.directwebremoting.annotations.RemoteProxy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.desafio.app.model.Usuario;
import com.desafio.app.repository.UserRepository;

@Service
@RemoteProxy(name="usuarioServiceDwr")
@Transactional
public class UsuarioServiceImpl implements UsuarioService{
	
	@Autowired
	private UserRepository userRepository;

	@Override
	@RemoteMethod
	public Usuario saveUsuario(Usuario user) {
		return userRepository.saveUser(user);
	}

	@Override
	@RemoteMethod
	public Usuario findUsuario(Long id) {
		return findUsuario(id);
	}

	@Override
	@RemoteMethod
	public List<Usuario> findAllUsuario() {
		return userRepository.findAllUser();
	}

	@Override
	@RemoteMethod
	public Usuario alterUsuario(Usuario user) {
		return userRepository.alterUser(user);
	}


}
