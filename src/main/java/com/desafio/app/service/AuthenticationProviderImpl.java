package com.desafio.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.stereotype.Component;

import com.desafio.app.model.Usuario;

@Component
public class AuthenticationProviderImpl implements AuthenticationProvider{
	
	@Autowired
	private UsuarioService usuarioService;

	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		Usuario usuario = null;
		authentication.setAuthenticated(false);
		String nome = authentication.getName();
		String password = authentication.getCredentials().toString();
		
		usuario = usuarioService.findUser(nome, password);
		
		if(usuario != null) 
			authentication.setAuthenticated(true);
		return authentication;
	}

	@Override
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return false;
	}
	
}
