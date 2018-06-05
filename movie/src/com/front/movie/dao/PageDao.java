package com.front.movie.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.front.movie.entity.Movie;

@Repository
public class PageDao {
	@Resource
	private   SessionFactory sessionFactory;
	
	 @SuppressWarnings("unchecked")
	 public   List<Movie> queryForPage(int offset, int length) {
	        // TODO Auto-generated method stub
	        List<Movie> entitylist=null;
	        try{
	            Query query = sessionFactory.getCurrentSession().createQuery("from Movie");
	            query.setFirstResult(offset);
	            query.setMaxResults(length);
	            entitylist = query.list();
	            
	        }catch(RuntimeException re){
	            throw re;
	        }
	        
	        return entitylist;
	    }
	 
	 public  int getAllRowCount(){
		 Query query = sessionFactory.getCurrentSession().createQuery("select count(*) from Movie");
		int i = ((Long) query.iterate().next()).intValue();
		return i;


	 }
}
