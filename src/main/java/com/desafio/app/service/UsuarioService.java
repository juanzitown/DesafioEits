package com.desafio.app.service;

import com.desafio.app.model.Usuario;

public interface UsuarioService {

	public Usuario findUser(String username, String password);
	public Usuario saveUser(String username, String password, String nome);

}
