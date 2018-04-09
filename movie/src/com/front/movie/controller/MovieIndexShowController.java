package com.front.movie.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.front.movie.service.MoviesIndexShowServiceImpl;

@Controller
public class MovieIndexShowController {
	
	@Resource
	private MoviesIndexShowServiceImpl missi;
	//主页轮播图
	@GetMapping("/indexshow")
	public String IndexShow(HttpServletRequest request) {
		this.missi.searchAllMovie(request);
		return "/index";
	}
}
