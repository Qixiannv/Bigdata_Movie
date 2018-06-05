package com.front.movie.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.front.user.entity.User;

@Entity
@Table(name="type_user")
public class MovieTypeAndUser {

	private Integer tu_id;
	private MovieType type;
	private User user;
	
	public MovieTypeAndUser(){
		super();
	}
	public MovieTypeAndUser(MovieType type,User u){
		super();
		this.type = type;
		this.user = u;
	}

	@Id
	@GeneratedValue(generator="tid")
	@GenericGenerator(name="tid",strategy="native")
	@Column(name="tu_id")
	public Integer getTu_id() {
		return tu_id;
	}

	public void setTu_id(Integer tu_id) {
		this.tu_id = tu_id;
	}

	
	@ManyToOne
	@JoinColumn(name="type_id")
	public MovieType getType() {
		return type;
	}

	public void setType(MovieType type) {
		this.type = type;
	}

	@ManyToOne
	@JoinColumn(name="user_id")
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
}
