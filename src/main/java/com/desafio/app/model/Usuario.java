package com.desafio.app.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.envers.Audited;

@Entity
@Audited
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
	
	@Column(name="nome", unique=true)
	private String nome;
	
	@Column(name="username", unique=true)
	private String username;
	
	private String password;
	
	@ManyToOne
	@JoinColumn(name="idRoleUsuario")
	private RoleUsuario roleUsuario;
	
	private boolean enabled;
	
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

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public RoleUsuario getRoleUsuario() {
		return roleUsuario;
	}

	public void setRoleUsuario(RoleUsuario roleUsuario) {
		this.roleUsuario = roleUsuario;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
