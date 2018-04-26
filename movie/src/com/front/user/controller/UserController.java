package com.front.user.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.front.user.entity.User;
import com.front.user.service.UserImp;



@Controller
public class UserController {
	
	@Resource
	private UserImp userRegisterImp;
	
	@RequestMapping("/UserRegisterController")
	public String UserRegister(User u)throws Exception{
		System.out.println("111111");
		return this.userRegisterImp.RegisterUser(u);
		
	}
	
	@RequestMapping("/UserLoginController")
	public String Userlogin(String username,String password,HttpServletRequest request,HttpSession session){
		return this.userRegisterImp.UserLogin(username,password,request,session);
	}
}
