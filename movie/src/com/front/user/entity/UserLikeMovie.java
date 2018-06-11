package com.front.user.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;

import com.front.movie.entity.Movie;

@Entity
@Table(name="user_movie")
@DynamicInsert(true)
@DynamicUpdate(true)
public class UserLikeMovie {

	private int id;
	private User user;
	private Movie movie;
	
	
	
	public UserLikeMovie() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	@Id
	@GeneratedValue(generator="umid")
	@GenericGenerator(name="umid",strategy="native")
	@Column(name="um_id")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	@ManyToOne
	@JoinColumn(name="user_id")
	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}

	@ManyToOne
	@JoinColumn(name="movie_id")
	public Movie getMovie() {
		return movie;
	}


	public void setMovie(Movie movie) {
		this.movie = movie;
	}

	
}
