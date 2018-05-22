package com.front.movie.controller;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.front.movie.entity.Movie;
import com.front.movie.service.MovieServiceImpl;

@Controller
public class MovieRateController {

	@Resource
	private MovieServiceImpl msi;
	
	//跳转页面
		/**
		 * @exception 跳转界面到charts.jsp
		 * @author 李孟明
		 * @param HttpServletRequest
		 * @return jsp跳转标识符
		 **/
			@GetMapping("/charts")
			public String ShowCharts(HttpServletRequest request) {
				//通过调用movieServiceImpl中的方法在request里添加查询的电影
				List<Movie> list = this.msi.searchAllMovie();
				
				list.sort(new Comparator<Movie>(){
					public int compare(Movie o1, Movie o2) {
		                return o2.getRate().compareTo(o2.getRate());//从大到小
		            }
				});
				request.setAttribute("movie",list);
				//返回跳转标识
				
				return "movie-single";
				}
}
