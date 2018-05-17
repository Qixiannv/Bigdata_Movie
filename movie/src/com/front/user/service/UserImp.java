package com.front.user.service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.front.user.dao.UserDaoImp;
import com.front.user.entity.User;

@Service
public class UserImp {
	@Resource
	private UserDaoImp userRegisterDaoImp;
	/**
	 * 用户注册
	 * @param u
	 * @return 主页
	 * @throws Exception
	 */
	public String RegisterUser(User u)throws Exception{
		this.userRegisterDaoImp.UserRegister(u);
		return "index";
	}
	/**
	 * 用户登录 同时把user 放进session 中
	 * @param email   邮箱
	 * @param password   密码
	 * @param request   
	 * @param session  
	 * @return 注册或者错误呀界面
	 */
	public String UserLogin(String email,String password,HttpServletRequest request,HttpSession session){
		try{
		User u=this.userRegisterDaoImp.Userlogin(email);
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
	/**
	 * 根据user_id 查询出user
	 * @param user_id   用户ID
	 * @return
	 * @throws Exception
	 */
	public User UserSelect(Integer user_id)throws Exception{
		return this.userRegisterDaoImp.UserSelect(user_id);
	}
	/**
	 * 更改用户信息
	 * @param u
	 * @throws Exception
	 */
	public void UserChange(User u)throws Exception{
		this.userRegisterDaoImp.UserChange(u);
	}
	public void AvatarUpdate(String a,int user_id)throws Exception{
		this.userRegisterDaoImp.avatarUpdate(a, user_id);
	}
}
