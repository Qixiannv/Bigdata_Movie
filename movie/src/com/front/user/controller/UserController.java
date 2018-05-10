package com.front.user.controller;

import java.io.File;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

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
}
