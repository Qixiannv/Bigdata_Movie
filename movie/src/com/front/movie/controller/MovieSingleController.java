package com.front.movie.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.front.movie.service.MovieServiceImpl;

@Controller
public class MovieSingleController {

	@Resource
	private MovieServiceImpl msi;
	
	//跳转页面
	@GetMapping("/movie_single")
	public void ShowMovieSingle(HttpServletRequest request,@RequestParam("id") int id) {
		this.msi.findMovieById(request, id);
		}
}
