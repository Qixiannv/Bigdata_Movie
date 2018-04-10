package com.front.movie.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="movie_comment")
public class Movie_Comment {

	private int comment_id;
	private int user_id;
	private int movie_id;
	private String comment_text;
	private String comment_time;
	
	public Movie_Comment() {}
	public Movie_Comment(int user_id, int movie_id, String comment_text, String comment_time) {
		super();
		this.user_id = user_id;
		this.movie_id = movie_id;
		this.comment_text = comment_text;
		this.comment_time = comment_time;
	}
	@Id
	@GeneratedValue(generator="moviecommentid")
	@GenericGenerator(name="moviecommentid",strategy="native")
	public int getComment_id() {
		return comment_id;
	}
	public void setComment_id(int comment_id) {
		this.comment_id = comment_id;
	}
	@Column(name="user_id")
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	@Column(name="movie_id")
	public int getMovie_id() {
		return movie_id;
	}
	public void setMovie_id(int movie_id) {
		this.movie_id = movie_id;
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
	
}
