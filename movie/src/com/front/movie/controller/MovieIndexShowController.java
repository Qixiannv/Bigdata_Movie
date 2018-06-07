package com.front.movie.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.front.actor.service.ActorServiceImpl;
import com.front.movie.service.MovieServiceImpl;
import com.front.movie.service.MovieTypeServiceImpl;


@Controller
public class MovieIndexShowController {
	
	@Resource
	private MovieServiceImpl msi;
	@Resource
	private ActorServiceImpl asi;
	@Resource
	private MovieTypeServiceImpl mtsi;
	//主页轮播图
	@GetMapping("/indexshow")
	public String IndexShow(HttpServletRequest request) {
		request.setAttribute("movielist", this.msi.searchAllMovie());
		request.setAttribute("actorlist", this.asi.findActors());
		
		List l = mtsi.searchAllMovieType();
		Map map = new HashMap();
        List listNew = new ArrayList();
        while (map.size() < 4) {
            int random = (int) (Math.random() * l.size());
            if (!map.containsKey(random)) {
                map.put(random, "");
                System.out.println(random + "===========" + l.get(random));
                listNew.add(l.get(random));
            }
        }
        request.setAttribute("typelist", listNew);
		
		return "/index";
	}
}
