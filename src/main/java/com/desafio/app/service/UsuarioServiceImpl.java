package com.desafio.app.service;

import java.util.List;

import javax.transaction.Transactional;

import org.apache.commons.mail.DefaultAuthenticator;
import org.apache.commons.mail.Email;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;
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
	
	private Email email = new SimpleEmail();

	@Override
	@RemoteMethod
	public Usuario saveUsuario(Usuario user) {
		user = userRepository.saveUser(user);
		
		try {
			email.setHostName("smtp.googlemail.com");
			email.setSmtpPort(465);
			email.setAuthenticator(new DefaultAuthenticator("postmastereits@gmail.com", "12441212"));
			email.setSSLOnConnect(true);
			email.setFrom(user.getNome());
			email.setSubject("juan.fernandes@eits.com.br");
			email.setMsg("Registrado em DesafioEits com sucesso! :-)");
			email.addTo(user.getNome());
			email.send();
		} catch (EmailException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return user;
		
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
	
	@Override
	@RemoteMethod
	public boolean disableUsuario(Usuario user) {
		return userRepository.disableUser(user);
	}


}
