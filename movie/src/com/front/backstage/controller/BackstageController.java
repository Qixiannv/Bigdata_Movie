package com.front.backstage.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.front.actor.entity.Actor;
import com.front.actor.service.ActorServiceImpl;
import com.front.backstage.service.AdminImp;
import com.front.movie.entity.Movie;
import com.front.movie.entity.Page;
import com.front.movie.service.MoviePageImp;
import com.front.movie.service.MovieServiceImpl;
import com.front.user.entity.User;
import com.front.user.service.UserImp;

@Controller
public class BackstageController {
	
	@Resource
	private MoviePageImp MP;
	@Resource
	private MovieServiceImpl msi;
	
	@Resource
	private UserImp userRegisterImp;
	
	@Resource
	private AdminImp AdIm;
	@Resource
	private ActorServiceImpl asi;
	
	@RequestMapping("/backstagemovielist")
	public String BackstageMovieList(HttpServletRequest request,
            HttpServletResponse response)throws Exception{

		 try {
	            String pageNo = request.getParameter("pageNo");
	            if (pageNo == null) {
	                pageNo = "1";
	            }
	            Page page = MP.queryForPage(Integer.valueOf(pageNo), 10);
	            request.setAttribute("page", page);
	            List<Movie> list = page.getList();
	    		request.setAttribute("movies", list);
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
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
	public String showAllActors(HttpServletRequest request,
            HttpServletResponse response) {
		try {
            String pageNo = request.getParameter("pageNo");
            if (pageNo == null) {
                pageNo = "1";
            }
            Page page = asi.queryActorForPage(Integer.valueOf(pageNo), 10);
            request.setAttribute("page", page);
            List<Actor> list = page.getList();
    		request.setAttribute("actorlist", list);
        } catch (Exception e) {
            e.printStackTrace();
        }
		
		return "backstageactorlist";
	}
	
	
}
