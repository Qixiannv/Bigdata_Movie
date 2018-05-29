package com.front.movie.dao;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.front.movie.entity.MovieType;

@Repository
public class MovieTypeDaoImpl {
	
	@Resource
	private SessionFactory sessionFactory;
	
	public int savaMovieType(MovieType mt) {
		this.sessionFactory.getCurrentSession().save(mt);
		return mt.getType_id();
	}
}
