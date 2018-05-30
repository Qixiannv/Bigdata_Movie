package com.front.user.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.front.user.dao.UserBackstageDaoImpl;

@Service
public class UserBackstageServiceImpl {

	@Resource
	private UserBackstageDaoImpl ubdi;
	
	/**
	 * 删除用户
	 * @author 闫相垠
	 * @param user_id 用户id
	 */
	public void deleteUser(Integer user_id) {
		this.ubdi.deleteMovie(user_id);
	}
}
