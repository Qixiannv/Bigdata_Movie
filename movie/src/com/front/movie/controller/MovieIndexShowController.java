package com.front.movie.controller;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import com.front.movie.service.MovieServiceImpl;


@Controller
public class MovieIndexShowController {
	
	@Resource
	private MovieServiceImpl msi;
	//主页轮播图
	@GetMapping("/indexshow")
	public String IndexShow(HttpServletRequest request) {
		request.setAttribute("movielist", this.msi.searchAllMovie());
		return "/index";
	}
}
