package com.front.user.service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.front.user.dao.UserDaoImp;
import com.front.user.entity.User;

@Service
public class UserImp {
	@Resource
	private UserDaoImp userRegisterDaoImp;
	
	public String RegisterUser(User u)throws Exception{
		this.userRegisterDaoImp.UserRegister(u);
		return "index";
	}
	
	public String UserLogin(String username,String password,HttpServletRequest request,HttpSession session){
		try{
		User u=this.userRegisterDaoImp.Userlogin(username);
			if(password.equals(u.getPassword())){
				session.setAttribute("user", u);
				return "index";
			}else{
				return "cuowu";
			}
		
		}catch(Exception e){
			e.printStackTrace();
			return "cuowu";
		}
	}
}
