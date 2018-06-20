package com.front.movie.dao;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

@Repository
public class MovieRateInsertDao {

	@Resource
	private SessionFactory sessionFactory;
}
