package com.front.user.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.front.user.service.UserBackstageServiceImpl;

@Controller
public class UserBackstageController {

	@Resource
	private UserBackstageServiceImpl ubsi;
	
	/**
	 * 删除用户
	 * @author 闫相垠
	 * @param user_id 用户id
	 * @return
	 */
	@GetMapping("delete_user")
	public String deleteUser(Integer user_id) {
		this.ubsi.deleteUser(user_id);
		return "test";
	}
	
}
