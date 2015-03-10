package com.desafio.app.service;

import java.util.List;

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
	public Marca saveMarca(Marca marca) {
		return marcaRepository.save(marca);
	}

	@Override
	@RemoteMethod
	public Marca findMarca(Long id) {
		return marcaRepository.find(id);
	}

	@Override
	@RemoteMethod
	public List<Marca> findAllMarca() {
		return marcaRepository.findAllMarca();
	}

	@Override
	@RemoteMethod
	public Marca alterMarca(Marca marca) {
		return marcaRepository.alterMarca(marca);
	}
	
	@Override
	public void deleteMarca(Marca marca) {
		marcaRepository.delete(marca);
	}

}