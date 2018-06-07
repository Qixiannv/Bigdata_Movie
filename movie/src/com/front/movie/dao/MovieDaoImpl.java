package com.front.movie.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.front.movie.entity.Movie;

@Repository
public class MovieDaoImpl {

	
	@Resource
	private SessionFactory sessionFactory;
	
	//根据id主键找movie
	public Movie findMovieById(int id) {
		return this.sessionFactory.getCurrentSession().get(Movie.class, new Integer(id));
	}
	
	//查询所有的movie
	public List<Movie> searchAllMovie() {
		Query<Movie> query =this.sessionFactory.getCurrentSession().createQuery("from Movie");
		return query.list();
	}
	//按评分查前十电影
	public List<Movie> searchTop10(){
		Query<Movie> query = this.sessionFactory.getCurrentSession().createQuery("from Movie as m order by rate desc");
		List<Movie> list = query.list();
		for(int i = 10; i<list.size();i++)
		{
			list.remove(i);
		}
		return query.list();
	}
}
