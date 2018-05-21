package com.front.movie.controller;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.front.actor.service.ActorServiceImpl;
import com.front.movie.service.MovieServiceImpl;


@Controller
public class MovieIndexShowController {
	
	@Resource
	private MovieServiceImpl msi;
	@Resource
	private ActorServiceImpl asi;
	//主页轮播图
	@GetMapping("/indexshow")
	public String IndexShow(HttpServletRequest request) {
		request.setAttribute("movielist", this.msi.searchAllMovie());
		request.setAttribute("actorlist", this.asi.findActors());
		return "/index";
	}
}
