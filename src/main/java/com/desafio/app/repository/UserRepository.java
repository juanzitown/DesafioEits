package com.desafio.app.repository;

import org.springframework.stereotype.Repository;

import com.desafio.app.model.Usuario;

@Repository
public interface UserRepository {
	public Usuario saveUser(Usuario user);
	public Usuario findUser(Usuario user);

}
