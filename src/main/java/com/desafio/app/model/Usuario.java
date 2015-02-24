package com.desafio.app.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="usuario")
public class Usuario implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -3073434107550350799L;
	
	@Id
	@GeneratedValue
	@Column(name="id")
	private Long id;
	private String nome;
	
	private String username;
	private String password;
	
	@ManyToOne
	@JoinColumn(name="idRoleUsuario")
	private RoleUsuario roleUsuario;
	
	public Usuario() {
		// default no-arg
	}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getUsuario() {
		return username;
	}
	public void setUsuario(String usuario) {
		this.username = usuario;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

}
