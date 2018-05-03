package com.front.movie.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.front.movie.entity.Movie;
import com.front.movie.service.MovieServiceImpl;

@Controller
public class MovieSingleController {
	@Resource
	private MovieServiceImpl msi;

	
	//跳转页面
		@GetMapping("/moviesingle")
		public String ShowMovieSingle(HttpServletRequest request,@RequestParam("id") int id) {
			this.msi.findMovieById(request, id);
			Movie m = (Movie) request.getAttribute("movie");
			return "movie-single";
			}
}
