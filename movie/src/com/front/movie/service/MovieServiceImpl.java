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
	public void findMovieById(HttpServletRequest request,int id) {
		Movie movie=this.mdi.findMovieById(id);
		request.setAttribute("movie", movie);
	}
	
	//找所有的movie
	public void searchAllMovie(HttpServletRequest request) {
		List<Movie> list=this.mdi.searchAllMovie();
		request.setAttribute("movielist", list);
	}
}
