package com.front.movie.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.front.movie.entity.MovieComment;

@Repository
public class MovieCommentDaoImpl {

	@Resource
	private SessionFactory sessionFactory;
	
	//根据主键找到movieComment
	public MovieComment findMovieCommentById(int id) {
		return this.sessionFactory.getCurrentSession().get(MovieComment.class, new Integer(id));
	}
	
	//根据用户id找到movieComment
	public List<MovieComment> findMovieCommentByUserId(int userId){
		Query<MovieComment> query =this.sessionFactory.getCurrentSession().createQuery("from MovieComment where user_id=?");
		query.setParameter(0, userId);
		return query.list();
	}
	//根据电影id找到movieComment
	public List<MovieComment> findMovieCommentByMovieId(int movieId){
		Query<MovieComment> query =this.sessionFactory.getCurrentSession().createQuery("from MovieComment where movie_id=?");
		query.setParameter(0, movieId);
		return query.list();
	}
	
	//插入一条电影评论
	public int savaMovieComment(MovieComment mc) {
		this.sessionFactory.getCurrentSession().save(mc);
		return mc.getComment_id();
	}
}
