package com.front.movie.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.front.movie.entity.Movie;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.front.movie.service.MovieServiceImpl;

@Controller
public class SingleController {

	@Resource
	private MovieServiceImpl msi;
	
	//跳转页面
	@GetMapping("/movie/gotosingle")
	public String ShowMovieSingle(HttpServletRequest request,@PathVariable("id") int id) {
		this.msi.findMovieById(request, id);
		return "/single";
		}
	
	@GetMapping("/leave_comment")
	public String LeaveComment(HttpServletRequest request,@RequestParam("comment") String comment) {
		String url = (String) request.getAttribute("movie_id");
		return "/gotosingle";
	}

}
