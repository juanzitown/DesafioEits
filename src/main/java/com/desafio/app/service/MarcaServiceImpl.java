package com.desafio.app.service;

import javax.transaction.Transactional;

import org.directwebremoting.annotations.RemoteMethod;
import org.directwebremoting.annotations.RemoteProxy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.desafio.app.model.Marca;
import com.desafio.app.repository.MarcaRepository;

@Service
@RemoteProxy(name="marcaServiceDwr")
@Transactional
public class MarcaServiceImpl implements MarcaService{

	@Autowired
	private MarcaRepository marcaRepository;

	@Override
	@RemoteMethod
	public Marca saveMarca(String descricao) {
		Marca marca = new Marca();
		marca.setDescricao(descricao);
		return marcaRepository.save(marca);
	}

	@Override
	public Marca findMarca(Long id) {
		return marcaRepository.find(id);
	}

}