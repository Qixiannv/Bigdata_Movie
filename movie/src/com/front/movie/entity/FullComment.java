package com.front.movie.entity;

import com.front.user.entity.User;

public class FullComment {
	private User user;
	private MovieComment mc;
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public MovieComment getMc() {
		return mc;
	}
	public void setMc(MovieComment mc) {
		this.mc = mc;
	}
}
