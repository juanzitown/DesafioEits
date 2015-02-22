package com.desafio.app.service;

import javax.transaction.Transactional;

import org.apache.log4j.Logger;
import org.directwebremoting.annotations.RemoteMethod;
import org.directwebremoting.annotations.RemoteProxy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.desafio.app.model.Marca;
import com.desafio.app.repository.MarcaRepository;

@Service("MarcaService")
@RemoteProxy(name="marcaServiceDwr")
@Transactional
public class MarcaServiceImpl implements MarcaService{
	
	protected static Logger logger = Logger.getLogger("service");

	@Autowired
	private MarcaRepository marcaRepository;

	@Override
	public Marca save(Marca marca) {
		return marcaRepository.save(marca);
	}

	@Override
	public Marca find(Long id) {
		return marcaRepository.find(id);
	}
	
	@Override
	@RemoteMethod
	public float add(Integer operand1, Integer operand2) {
		logger.debug("Adding two numbers");
		  // A simple arithmetic addition
		  return operand1 + operand2;
	}

}