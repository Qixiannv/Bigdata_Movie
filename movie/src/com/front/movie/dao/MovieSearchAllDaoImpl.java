package com.front.movie.dao;

import java.util.List;
import javax.annotation.Resource;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;
import com.front.movie.entity.Movie;

@Repository
public class MovieSearchAllDaoImpl {

	@Resource
	private SessionFactory sessionFactory;
	public List<Movie> searchAllMovie() {
		Query<Movie> query=this.sessionFactory.getCurrentSession().createQuery("from Movie");
		return query.list();
	}

}
