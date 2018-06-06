package com.front.movie.controller;

import java.util.Random;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.front.movie.dao.MovieDaoImpl;
import com.front.movie.dao.MovieTypeDaoImpl;
import com.front.movie.entity.MovieTypeAndMovie;
@Controller
public class MovieTypeAndMovieController {
	@Resource
	private SessionFactory sessionFactory;
	
	@Resource
	private MovieDaoImpl mdi;
	@Resource
	MovieTypeDaoImpl mtdi;
	
	public int qianzhi(){
		Query query = sessionFactory.getCurrentSession().createQuery("select count(*) from Movie");
		int j = ((Long) query.iterate().next()).intValue();
		return j;
	}
	
	
	@GetMapping("/addMovieTypeAndMovie")
	public String addMovieTypeAndMovie(){
		 int j=this.qianzhi();
			System.out.println(j);
		for(int i=1;i<j;i++){
			Random rand=new Random();
			int m=rand.nextInt(10)+1;
			MovieTypeAndMovie mtm=new MovieTypeAndMovie();
			mtm.setMovie(mdi.findMovieById(i));
			
			mtm.setType(mtdi.findMovieTypeById(m));
			this.sessionFactory.getCurrentSession().save(mtm);
			
		}
		System.out.println("111");
		
		return "";
	}
}
