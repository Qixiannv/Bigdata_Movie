package com.front.movie.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.front.movie.dao.MovieRateInsertDao;

@Service
public class MovieRateInsertServiceImpl {

	@Resource
	private MovieRateInsertDao mrid;
	
	public void insertMovieRate(Integer movie_id,Integer user_id,float rate) {
		try {
			this.mrid.insertMovieRate(movie_id, user_id, rate);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void insertMovieRateAndNumber(Integer movie_id,float rate) {
		this.mrid.addMovieRate(movie_id, rate);
		this.mrid.addMovieRateNumber(movie_id);
	}

	
}
