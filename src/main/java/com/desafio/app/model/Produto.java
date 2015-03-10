package com.desafio.app.model;

import java.util.Calendar;

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
@Table(name="produto")
public class Produto {
	
	@Id
	@GeneratedValue
	@Column(name="id")
	private Long id;
	
	private String descricao;
	
	private Calendar dataCriacao;
	private Calendar dataAlteracao;
	
	@ManyToOne
	@JoinColumn(name="idMarca")
	private Marca marca;
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public Marca getMarca() {
		return marca;
	}
	public void setMarca(Marca marca) {
		this.marca = marca;
	}
	public Calendar getDataCriacao() {
		return dataCriacao;
	}
	public void setDataCriacao(Calendar dataCriacao) {
		this.dataCriacao = dataCriacao;
	}
	public Calendar getDataAlteracao() {
		return dataAlteracao;
	}
	public void setDataAlteracao(Calendar dataAlteracao) {
		this.dataAlteracao = dataAlteracao;
	}
}
