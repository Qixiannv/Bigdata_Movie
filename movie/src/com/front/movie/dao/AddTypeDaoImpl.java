package com.front.movie.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.front.movie.entity.MovieType;

@Component
@Repository
public class AddTypeDaoImpl {

	@Autowired
	private SessionFactory sessionFactory;
	
	/**
	 * 增加新类型
	 * @param name 类型名
	 */
	public void addType(String name) {
		MovieType movieType = new MovieType();
		movieType.setType_name(name);
		
		this.sessionFactory.openSession().save(movieType);
	}
}
