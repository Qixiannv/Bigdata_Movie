package com.front.movie.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.front.movie.service.MovieSearchServiceImpl;

@Controller
public class MovieSearchController {
	@Resource
	private MovieSearchServiceImpl mssi;
	
	@GetMapping("search_movie")
	public String movieSearch(String name,HttpServletRequest request) {
		
		request.setAttribute("searchresult", this.mssi.movieSearch(name));
		request.setAttribute("actorresult", this.mssi.actorSearch(name));
		
		return "select-movie";
	}
	
	@GetMapping("back_search_movie")
	public String movieSearch1(String name,HttpServletRequest request) {
		
		request.setAttribute("movies", this.mssi.movieSearch(name));
		
		return "backstagemovielist";
	}
	@GetMapping("back_search_actor")
	public String movieSearch2(String name,HttpServletRequest request) {
		
		request.setAttribute("actorlist", this.mssi.actorSearch(name));
		
		return "backstageactorlist";
	}
}
