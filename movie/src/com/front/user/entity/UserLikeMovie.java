package com.front.user.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.front.movie.entity.Movie;

@Entity
@Table(name="user_movie")
public class UserLikeMovie {

	private Integer um_id;
	private User user;
	private Movie movie;
	private int rate;
	
	public UserLikeMovie() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public UserLikeMovie(int um_id, User user, Movie movie,int rate) {
		super();
		this.um_id = um_id;
		this.user = user;
		this.movie = movie;
		this.rate = rate;
	}


	@Id
	@GeneratedValue(generator="umid")
	@GenericGenerator(name="umid",strategy="native")
	@Column(name="um_id")
	public Integer getUm_id() {
		return um_id;
	}

	public void setUm_id(Integer id) {
		this.um_id = id;
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

	@Column(name = "rate")
	public int getRate() {
		return rate;
	}

	public void setRate(int rate) {
		this.rate = rate;
	}
	
	

	
}
