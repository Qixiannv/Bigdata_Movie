package com.front.user.controller;

import java.io.File;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
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
	public String UserRegister(User u)throws Exception{
		return this.userRegisterImp.RegisterUser(u);
		
	}
	/**
	 * 用户登录跳转
	 * @param email
	 * @param password
	 * @param request
	 * @param session
	 * @return 在service中
	 */
	@RequestMapping("/UserLoginController")
	public String Userlogin(String email,String password,HttpServletRequest request,HttpSession session){
	return this.userRegisterImp.UserLogin(email,password,request,session);
	}
	
	public String UserChange(MultipartFile uploadFile,HttpSession session,User u)throws Exception{
		this.userRegisterImp.UserChange(u);
		if(uploadFile.getSize()>0){
			String filename=uploadFile.getOriginalFilename();
			if(filename.endsWith("jpg")||filename.endsWith("gif")||filename.endsWith("png")){
				String leftPath=session.getServletContext().getRealPath("/images");
				File file =new File(leftPath,filename);
				uploadFile.transferTo(file);
			}else{
				return "error.jsp";
			}
		}
		return "";
	}
	/**
	 *更改用户信息跳转
	 * @param session
	 * @param u
	 * @return 
	 * @throws Exception
	 */
	@RequestMapping("/ChangeController")
	public String Change(HttpSession session,User u)throws Exception{
		this.userRegisterImp.UserChange(u);
		return "";
	}
	
	
}
