package com.front.movie.dao;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.front.movie.entity.Movie;

@Component
@Repository

public class MovieBackstageDaoImpl {

	@Autowired
	private SessionFactory sessionFactory;
	
	/**
	 * 删除电影
	 * @author 闫相垠
	 * @param movie_id 需要删除的电影id
	 */
	public void deleteMovie(Integer movie_id) {
		this.sessionFactory.openSession().createQuery("delete from Movie where movie_id ="+movie_id);
	}
	
	/**
	 * 插入电影
	 * @author 闫相垠
	 * @param movie_name 电影名
	 * @param movie_summary 电影简介
	 * @param movie_pic 电影图片路径
	 * @param time 电影时长
	 * @param rate 电影评分
	 */
	public void createMovie(String movie_name,String movie_summary,String movie_pic,Integer time,Float rate) {
		Movie m = new Movie();
		m.setMovie_name(movie_name);
		m.setMovie_summary(movie_summary);
		m.setMovie_pic(movie_pic);
		m.setTime(time);
		m.setRate(rate);
		
		Transaction tran = this.sessionFactory.openSession().beginTransaction();
		this.sessionFactory.openSession().update(m);
		tran.commit();
	}
	/**
	 * 修改电影名称
	 * @author 闫相垠
	 * @param movie 需要修改的电影
	 * @param name 需要修改的名字
	 */
	@Transactional
	public void changeMovieName(Movie movie,String name) {
		Session session = this.sessionFactory.openSession();
		session.beginTransaction();
		Query query = session.createQuery("update Movie m set m.movie_name = ? where m.movie_id = ?");
		query.setParameter(0, name);
		query.setParameter(1, movie.getMovie_id());
		query.executeUpdate();
		session.getTransaction().commit();
		
	}
}
