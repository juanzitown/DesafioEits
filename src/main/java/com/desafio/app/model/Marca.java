package com.desafio.app.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="marca")
public class Marca {
	
	@Id
	@GeneratedValue
	@Column(name="id")
	private Long id;
	
	public Marca() {
		// TODO Auto-generated constructor stub
	}
	
	private String descricao;
	
	
	public String getDescricao() {
		return descricao;
	}
	public Long getId() {
		return id;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public void setId(Long id) {
		this.id = id;
	}
}
