package com.desafio.app.service;

import java.util.List;

import com.desafio.app.model.Produto;
import com.desafio.app.model.Usuario;

public interface UsuarioService {

	public Usuario saveUsuario(Usuario user);
	public Usuario findUsuario(Long id);
	public List<Usuario> findAllUsuario();
	public Usuario alterUsuario(Usuario user);

}
