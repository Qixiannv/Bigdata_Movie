package com.front.movie.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.front.movie.service.MovieRateInsertServiceImpl;

@Controller
public class MovieRateInsertController {

	@Resource
	private MovieRateInsertServiceImpl mris;
	
	/**
	 * 用户打分
	 * @param movie_id 
	 * @param user_id
	 * @param rate
	 * @return
	 */
	@GetMapping("/insertrate")
	public String insertMovieRate(Integer movie_id,Integer user_id,float rate) {
		
		this.mris.insertMovieRateAndNumber(movie_id, rate);
		if(rate >= 6)
			this.mris.insertMovieRate(movie_id, user_id, rate);
		
		return "";
	} 
}
