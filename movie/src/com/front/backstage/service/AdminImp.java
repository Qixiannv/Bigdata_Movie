package com.front.backstage.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.front.backstage.dao.AdminDaoImp;
import com.front.backstage.entity.Admin;

@Service
public class AdminImp {
	@Resource
	private AdminDaoImp Ad;
	
	public String AdminLogin(String admin_name,String admin_password){
		try{
			Admin a=this.Ad.Adminlogin(admin_name);
			if(admin_password.equals(a.getAdmin_password())){
				return "adminindex";
			}else{
				return "cuowu";
			}
		}catch(Exception e){
			e.printStackTrace();
			return "cuowu";
		}
	}
}
