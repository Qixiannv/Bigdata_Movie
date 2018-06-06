package com.front.movie.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.front.movie.entity.Movie;
import com.front.movie.entity.MovieType;
import com.front.movie.entity.MovieTypeAndMovie;
import com.front.movie.entity.MovieTypeAndUser;
import com.front.user.entity.User;
import com.front.user.service.UserImp;

@Repository
public class MovieTypeDaoImpl {
	
	@Resource
	private SessionFactory sessionFactory;
	private UserImp ui;
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
	/**
	 * 保存用户标签
	 * @author 李孟明
	 * @param  typeid 标签id userid 用户id
	 * @return null
	 */
	public void addUserType(int typeid,User u){
		Session session = sessionFactory.getCurrentSession();
		MovieTypeAndUser mau = new MovieTypeAndUser();
		mau.setType(this.findMovieTypeById(typeid));
		try {
			mau.setUser(u);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.sessionFactory.getCurrentSession().save(mau);
		//String hql = ("insert into MovieTypeAndUser (type_id,user_id)  values(?,?)"); 
		//Query query = session.createQuery(hql); 
		//query.setParameter(0, typeid);   
       // query.setParameter(1, userid);
       // query.executeUpdate();  
        //session.getTransaction().commit();  
		
	}
	
	/**
	 * 保存电影标签
	 * @author 李孟明
	 * @param  typeid 标签id movieid 用户id
	 * @return null
	 */
	public void addMovieType(int typeid,Movie movie){
		Session session = sessionFactory.getCurrentSession();
		MovieTypeAndMovie mam = new MovieTypeAndMovie();
		mam.setType(this.findMovieTypeById(typeid));
		mam.setMovie(movie);
	}
	
	
}
