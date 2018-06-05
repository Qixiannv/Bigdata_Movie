package com.front.movie.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.front.movie.entity.Movie;
import com.front.movie.entity.MovieType;

@Repository
public class MovieTypeDaoImpl {
	
	@Resource
	private SessionFactory sessionFactory;
	/**
	 * 存储标签
	 * @author 李孟明
	 * @param MovieType 标签
	 * @return
	 */
	public int savaMovieType(MovieType mt) {
		this.sessionFactory.getCurrentSession().save(mt);
		return mt.getType_id();
	}
	/**
	 * 用id查找标签
	 * @author 李孟明
	 * @param id 标签id
	 * @return
	 */
	public MovieType findMovieTypeById(int id){
		return this.sessionFactory.getCurrentSession().get(MovieType.class, new Integer(id));
	}
	/**
	 * 查询所有标签
	 * @author 李孟明
	 * @param  
	 * @return
	 */
	public List<MovieType> searchAllMovieType() {
		Query<MovieType> query =this.sessionFactory.getCurrentSession().createQuery("from MovieType");
		return query.list();
	}
}
