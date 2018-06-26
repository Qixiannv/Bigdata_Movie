package com.front.movie.service;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.front.movie.dao.MovieDaoImpl;
import com.front.movie.entity.Movie;

@Service(value = "movieServiceImpl")
@Transactional
public class MovieServiceImpl {

	@Resource
	private MovieDaoImpl mdi;
	
	//根据movie_id找movie
	public Movie findMovieById(int id) {
		return this.mdi.findMovieById(id);
	}
	
	//找所有的movie
	public List<Movie>  searchAllMovie() {
		 return this.mdi.searchAllMovie();
	}
	//top10
	public List<Movie> top10Movies(){
		return this.mdi.searchTop10();
	}
	//suck
	public List<Movie> searchSuck(){
		return this.mdi.searchSuck();
	}
}
