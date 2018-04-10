package com.front.movie.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
<<<<<<< HEAD
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.front.movie.entity.Movie;
=======

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

>>>>>>> 19bb0d9f9c5048a3e39fa3661500f748ff3aa747
import com.front.movie.service.MovieServiceImpl;

@Controller
public class MovieSingleController {
<<<<<<< HEAD
	
	@Resource
	private MovieServiceImpl msi;
	
	
	//跳转电影详情页
	@RequestMapping(value="movie-single/{id}",method=RequestMethod.POST)
	public String movieSingle(@PathVariable int id,HttpServletRequest request){
		msi.findMovieById(request, id);
		return "movie-single";
	}
	
	
=======

	@Resource
	private MovieServiceImpl msi;
	
	//跳转页面
	@GetMapping("/movie_single")
	public void ShowMovieSingle(HttpServletRequest request,@RequestParam("id") int id) {
		this.msi.findMovieById(request, id);
		}
>>>>>>> 19bb0d9f9c5048a3e39fa3661500f748ff3aa747
}
