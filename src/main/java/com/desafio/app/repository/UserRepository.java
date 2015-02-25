package com.desafio.app.repository;

import com.desafio.app.model.Usuario;

public interface UserRepository {
	public Usuario saveUser(Usuario user);
	public Usuario findUser(Long id);

}
