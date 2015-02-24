package com.desafio.app.service;

import javax.transaction.Transactional;

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
	public Usuario findUser(String username, String password) {
		Usuario usuario = new Usuario();
		usuario.setUsuario(username);
		usuario.setPassword(password);
		return userRepository.findUser(usuario);
	}

	@Override
	public Usuario saveUser(String username, String password, String nome) {
		Usuario usuario = new Usuario();
		usuario.setUsuario(username);
		usuario.setPassword(password);
		usuario.setNome(nome);
		return userRepository.saveUser(usuario);
	}

}
