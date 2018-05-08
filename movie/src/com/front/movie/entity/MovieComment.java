package com.front.movie.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.front.user.entity.User;

@Entity
@Table(name="movie_comment")
public class MovieComment {

	private int comment_id;
	private User user;
	private String comment_text;
	private String comment_time;
	private Movie movie;
	
	@Id
	@GeneratedValue(generator="moviecommentid")
	@GenericGenerator(name="moviecommentid",strategy="native")
	public int getComment_id() {
		return comment_id;
	}
	public void setComment_id(int comment_id) {
		this.comment_id = comment_id;
	}
	
	@Column(name="comment_text")
	public String getComment_text() {
		return comment_text;
	}
	public void setComment_text(String comment_text) {
		this.comment_text = comment_text;
	}
	
	@Column(name="comment_time")
	public String getComment_time() {
		return comment_time;
	}
	public void setComment_time(String comment_time) {
		this.comment_time = comment_time;
	}
	
	@ManyToOne
	@JoinColumn(name="movie_id")
	public Movie getMovie() {
		return movie;
	}
	public void setMovie(Movie movie) {
		this.movie = movie;
	}
	
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="user_id")
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
}
