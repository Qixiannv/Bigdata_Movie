package com.front.movie.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.front.movie.service.MovieBackstageServiceImpl;

@Controller
public class MovieBackstageController {

	@Resource
	private MovieBackstageServiceImpl mbsi;
	
	@GetMapping("change_movie_name")
	public String changeMovieName(@RequestParam("id") int movie_id,@RequestParam("name") String name) {
		this.mbsi.changeMovieName(movie_id, name);
		return "test";
	}
}
