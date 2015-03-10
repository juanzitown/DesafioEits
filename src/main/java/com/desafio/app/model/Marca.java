package com.desafio.app.model;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.envers.Audited;

@Entity
@Audited
@Table(name="marca")
public class Marca {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="id")
	private Long id;
	
	private String descricao;
	
	private Calendar dataCriacao;
	private Calendar dataAlteracao;
	
	
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
	
	public String toString() {
		return descricao;
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
