package com.front.movie.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.front.movie.dao.AddTypeDaoImpl;

@Service
public class AddTypeServiceImpl {
	@Resource
	private AddTypeDaoImpl atdi;
	
	public void addType(String name) {
		this.atdi.addType(name);
	}
}
