package com.front.user.controller;

import java.io.File;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.front.user.entity.User;
import com.front.user.service.UserImp;



@Controller
public class UserController {
	
	@Resource
	private UserImp userRegisterImp;
	/**
	 * 用户注册跳转 
	 * @param u   
	 * @return 在service中
	 * @throws Exception
	 * 
	 */
	@RequestMapping("/UserRegisterController")
	public String UserRegister(User u,HttpSession session,HttpServletRequest request)throws Exception{
		return this.userRegisterImp.RegisterUser(u,session,request);
		
	}
	/**
	 * 用户登录跳转
	 * @param email  邮箱
	 * @param password   密码
	 * @param request
	 * @param session
	 * @return 在service中
	 */
	@RequestMapping("/UserLoginController")
	public String Userlogin(String email,String password,HttpServletRequest request,HttpSession session){
	return this.userRegisterImp.UserLogin(email,password,request,session);
	}
	

	/**
	 *更改用户信息跳转
	 * @param session
	 * @param u 用户 u
	 * @return 
	 * @throws Exception
	 */
	@RequestMapping("/ChangeController")
	public String Change(HttpSession session,User u)throws Exception{
		this.userRegisterImp.UserChange(u);
        int user_id=u.getUser_id();
        User user=this.userRegisterImp.UserSelect(user_id);
		session.setAttribute("user", user);
		return "movie-personal";
	}
	@RequestMapping(value = "/SignatureUpdate",method = RequestMethod.POST)
	public String SignatureUpdate(String signature,HttpSession session,HttpServletRequest request)throws Exception{
		User u=(User)request.getSession().getAttribute("user");
        int user_id=u.getUser_id();
		this.userRegisterImp.SignatureUpdate(signature, user_id);
		User user=this.userRegisterImp.UserSelect(user_id);
		session.setAttribute("user", user);
		return "movie-personal";
	}
	
	@GetMapping("/remove_user")
	public String logOut(HttpSession session) {
		session.removeAttribute("user");
		
		return "redirect:/indexshow";
	}
	
	
	
}
