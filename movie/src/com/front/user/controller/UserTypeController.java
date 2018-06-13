package com.front.user.controller;

import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.front.movie.entity.MovieType;
import com.front.movie.entity.MovieTypeAndUser;
import com.front.movie.service.MovieTypeServiceImpl;
import com.front.user.entity.User;
import com.front.user.service.UserImp;

@Controller
public class UserTypeController {
	@Resource
	private MovieTypeServiceImpl mtsi;
	@Resource
	private UserImp ui;
	
	
	/**
	 * 跳转添加用户标签页面
	 * @author 李孟明
	 * @param user_id 用户id，type_id 标签id
	 * @return
	 */
	@GetMapping("addtypeforuser")
	public String addTypeForUser(HttpServletRequest request){
		request.setAttribute("types", mtsi.searchAllMovieType());
		return "testforusertype";
	}
	
	/**
	 * 跳转添加用户标签
	 * @author 李孟明
	 * @param user_id 用户id，type_id 标签id
	 * @return
	 * @throws Exception 
	 */
	@GetMapping("addUserType")
	public String addUserType(HttpServletRequest request,@RequestParam("tid") int tid) throws Exception{
		HttpSession session = request.getSession();
		User u = (User) session.getAttribute("user");
		System.out.println(u.getUser_id());
		mtsi.saveUserType(u, tid);
		Integer user_id = u.getUser_id();
		User user = this.ui.UserSelect(user_id);
		session.setAttribute("user", user);
		
		
		
		return "redirect:/movie-personal.jsp";
	}

}
