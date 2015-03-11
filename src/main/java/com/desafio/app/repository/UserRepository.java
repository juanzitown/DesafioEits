package com.desafio.app.repository;

import java.util.List;

import com.desafio.app.model.Usuario;

public interface UserRepository {
	public Usuario saveUser(Usuario user);
	public Usuario findUser(Long id);
	public List<Usuario> findAllUser();
	public Usuario alterUser(Usuario user);
	boolean disableUser(Usuario user);
}
