package com.front.backstage.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.front.actor.entity.Actor;
import com.front.actor.service.ActorServiceImpl;
import com.front.backstage.service.AdminImp;
import com.front.movie.entity.Movie;
import com.front.movie.service.MovieServiceImpl;
import com.front.user.entity.User;
import com.front.user.service.UserImp;

@Controller
public class BackstageController {
	
	@Resource
	private MovieServiceImpl msi;
	
	@Resource
	private UserImp userRegisterImp;
	
	@Resource
	private AdminImp AdIm;
	@Resource
	private ActorServiceImpl asi;
	
	@RequestMapping("/backstagemovielist")
	public String BackstageMovieList(HttpServletRequest request)throws Exception{
		List<Movie> list = this.msi.searchAllMovie();
		request.setAttribute("list", list);
		return "backstagemovielist";
	}
	@RequestMapping("/backstageuserlist")
	public String BackstageUserList(HttpServletRequest request)throws Exception{
		List<User> list =this.userRegisterImp.searchAllUser();
		request.setAttribute("list", list);
		return "backstageuserlist";
	}
	@RequestMapping("/AdminLogin")
	public String AdminLogin(String admin_name,String admin_password)throws Exception{
		return this.AdIm.AdminLogin(admin_name, admin_password);
	}
	
	@GetMapping("/backstageactorlist")
	public String showAllActors(HttpServletRequest request) {
		List<Actor> la = this.asi.findActors();
		request.setAttribute("list", la);
		
		return "backstageactorlist";
	}
	
	
}
