package com.front.movie.dao;

import java.util.List;
import javax.annotation.Resource;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;
import com.front.movie.entity.Movie_Comment;

@Repository
public class MovieCommentDaoImpl {

	@Resource
	private SessionFactory sessionFactory;
	
	//查询所有movie_comment
	public List<Movie_Comment> searchAllMovieComment() {
		Query<Movie_Comment> query=this.sessionFactory.getCurrentSession().createQuery("from Movie_Comment");
		return query.list();
	}
	
	//根据comment_id查
	public Movie_Comment findByCommentId(int id) {
		return this.sessionFactory.getCurrentSession().get(Movie_Comment.class, new Integer(id));
	}
	//根据user_id查
	public List<Movie_Comment> findByUserId(int id){
		Query<Movie_Comment> query =this.sessionFactory.getCurrentSession().createQuery("from Movie_Comment where user_id =?");
		return query.list();
	}
	//根据movie_id查
	public List<Movie_Comment> findByMovieId(int id){
		Query<Movie_Comment> query =this.sessionFactory.getCurrentSession().createQuery("from Movie_Comment where movie_id =?");
		return query.list();
	}
}
