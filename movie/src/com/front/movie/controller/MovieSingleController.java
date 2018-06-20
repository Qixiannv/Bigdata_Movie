package com.front.movie.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.front.actor.service.ActorServiceImpl;
import com.front.movie.dao.MovieTypeDaoImpl;
import com.front.movie.entity.Movie;
import com.front.movie.entity.MovieComment;
import com.front.movie.entity.MovieType;
import com.front.movie.service.MovieServiceImpl;

@Controller
public class MovieSingleController {
	@Resource
	private MovieServiceImpl msi;
	@Resource
	private ActorServiceImpl asi;
	@Resource
	private MovieTypeDaoImpl mtsi;

	
	//跳转页面
	/**
	 * @exception 跳转界面到movie-single.jsp
	 * @author 李孟明
	 * @param HttpServletRequest RequestParam
	 * @return jsp跳转标识符
	 **/
		@GetMapping("/moviesingle")
		public String ShowMovieSingle(HttpServletRequest request,int id) {
			//通过调用movieServiceImpl中的方法在request里添加查询的电影
			request.setAttribute("movie",this.msi.findMovieById(id));
			//返回跳转标识
			
			return "movie-single";
			}
		
		
		
}
