package com.front.movie.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.front.movie.dao.MovieBackstageDaoImpl;
import com.front.movie.dao.MovieDaoImpl;
import com.front.movie.entity.Movie;

@Service
public class MovieBackstageServiceImpl {
	
	@Resource
	private MovieBackstageDaoImpl mbdi;
	@Resource
	private MovieDaoImpl mdi;
	
	public void changeMovieName(int movie_id,String name) {
		Movie movie = this.mdi.findMovieById(movie_id);
		
		this.mbdi.changeMovieName(movie, name);
	}
}
