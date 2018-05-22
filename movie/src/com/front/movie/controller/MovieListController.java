package com.front.movie.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.front.movie.entity.Movie;
import com.front.movie.service.MovieServiceImpl;

@Controller
public class MovieListController {

	@Resource
	private MovieServiceImpl msi;
	
	/**
	 * 跳转movielist页
	 * @author 闫相垠
	 * @param request
	 * @return
	 */
	@GetMapping("/movielist")
	public String movieList(HttpServletRequest request) {
		
		List<Movie> list = this.msi.searchAllMovie();
		request.setAttribute("movies", list);
		
		return "movie-list";
	}
}
