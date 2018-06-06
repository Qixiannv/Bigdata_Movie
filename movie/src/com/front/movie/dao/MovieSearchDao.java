package com.front.movie.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.front.actor.entity.Actor;
import com.front.movie.entity.Movie;

@Repository
public class MovieSearchDao {

	@Resource
	private SessionFactory sessionFactory;
	
	/**
	 * 模糊查找
	 * @author 闫相垠
	 * @param name 要模糊查找的字段
	 * @return List<Movie> 查找到的电影列表
	 */
	public List<Movie> searchMovie(String name){
		Query<Movie> movie =  this.sessionFactory.openSession().createQuery("from Movie where movie_name like '%"+name+"%' ");
		return movie.list();
	}
	
	/**
	 * 查找演员
	 * @author 闫相垠
	 * @param name 演员字段
	 * @return List<Actor> 查找到的演员列表
	 */
	public List<Actor> searchActor(String name){
		Query<Actor> actor = this.sessionFactory.openSession().createQuery("from Actor where actor_name like '%"+name+"%'");
		return actor.list();
				
	} 
}
