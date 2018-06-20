package com.front.movie.dao;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.front.movie.entity.Movie;
import com.front.user.dao.UserDaoImp;
import com.front.user.entity.UserLikeMovie;

@Repository
public class MovieRateInsertDao {

	@Resource
	private SessionFactory sessionFactory;
	@Resource
	private UserDaoImp udi;
	@Resource
	private MovieDaoImpl mdi;
	/**
	 * 插入电影和用户的中间表
	 * @param movie_id 电影id
	 * @param user_id 用户id
	 * @param rate 评分
	 * @throws Exception
	 */
	public void insertMovieRate(Integer movie_id,Integer user_id,float rate) throws Exception {
		UserLikeMovie ulm = new UserLikeMovie();
		ulm.setMovie(this.mdi.findMovieById(movie_id));
		ulm.setUser(this.udi.UserSelect(user_id));
		ulm.setRate(rate);
		
		this.sessionFactory.openSession().save(ulm);
	}
	
	/**
	 * 修改电影总分
	 * @param movie_id 电影id
	 * @param rate 用户打分
	 */
	public void addMovieRate(Integer movie_id,float rate) {
		Movie m = this.mdi.findMovieById(movie_id);
		float rate1 = m.getRate();
		rate1 += rate;
		Session session = this.sessionFactory.openSession();
		session.beginTransaction();
		Query query = session.createQuery("update Movie m set m.rate = ? where m.movie_id = ?");
		query.setParameter(0, rate1);
		query.setParameter(1, movie_id);
		query.executeUpdate();
		session.getTransaction().commit();
		
	}
	
	/**
	 * 修改打分总人数
	 * @param movie_id 电影id
	 */
	public void addMovieRateNumber(Integer movie_id) {
		Movie m = this.mdi.findMovieById(movie_id);
		int rate_number = m.getRate_number();
		rate_number += 1;
		Session session = this.sessionFactory.openSession();
		session.beginTransaction();
		Query query = session.createQuery("update Movie m set m.rate_number = ? where m.movie_id = ?");
		query.setParameter(0, rate_number);
		query.setParameter(1, movie_id);
		query.executeUpdate();
		session.getTransaction().commit();
				
	}

	
}
