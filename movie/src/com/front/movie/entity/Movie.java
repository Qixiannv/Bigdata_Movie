package com.front.movie.entity;

import java.sql.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.criteria.Order;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.GenericGenerator;

import com.front.actor.entity.Actor;
@Entity
@Table(name="movie")
public class Movie {
	
	private int movie_id;
	
	private String movie_name;
	
	private String movie_summary;
	
	private String movie_pic;
	
	private Integer movie_type;
	
	private Set actor_movieSet = new HashSet<MovieAndActor>();
	
	private Date date;
	private Integer time;
	private Float rate;
	
	private Set type = new HashSet<MovieType>();
	@OneToMany(mappedBy="movie", targetEntity=MovieComment.class,
			cascade=CascadeType.ALL)
	public Set getType() {
		return type;
	}
	public void setType(Set type) {
		this.type = type;
	}
	
	private Set moviecCommentSet = new HashSet<MovieComment>();
	public Movie() {}
	
	
	public Movie(int movie_id, String movie_name, String movie_summary, String movie_pic, Integer movie_type,
			Set actor_movieSet, Date date, Integer time, Float rate, Set moviecCommentSet) {
		super();
		this.movie_id = movie_id;
		this.movie_name = movie_name;
		this.movie_summary = movie_summary;
		this.movie_pic = movie_pic;
		this.movie_type = movie_type;
		this.actor_movieSet = actor_movieSet;
		this.date = date;
		this.time = time;
		this.rate = rate;
		this.moviecCommentSet = moviecCommentSet;
	}


	@Id
	@GeneratedValue(generator="mid")
	@GenericGenerator(name="mid",strategy="native")
	public int getMovie_id() {
		return movie_id;
	}
	public void setMovie_id(int movie_id) {
		this.movie_id = movie_id;
	}
	
	@Column(name="movie_name")
	public String getMovie_name() {
		return movie_name;
	}
	public void setMovie_name(String movie_name) {
		this.movie_name = movie_name;
	}
	
	@Column(name="movie_summary")
	public String getMovie_summary() {
		return movie_summary;
	}
	public void setMovie_summary(String movie_summary) {
		this.movie_summary = movie_summary;
	}
	
	@Column(name="movie_pic")
	public String getMovie_pic() {
		return movie_pic;
	}
	public void setMovie_pic(String movie_pic) {
		this.movie_pic = movie_pic;
	}
	
	@Column(name="movie_type")
	public Integer getMovie_type() {
		return movie_type;
	}
	public void setMovie_type(Integer movie_type) {
		this.movie_type = movie_type;
	}
	@OneToMany(mappedBy="movie", targetEntity=MovieComment.class,
			cascade=CascadeType.ALL)
	public Set getMovieCommentSet() {
		return moviecCommentSet;
	}
	public void setMovieCommentSet(Set movieSet) {
		this.moviecCommentSet = movieSet;
	}
	@Column(name="date")
	public Date getDate() {
		return date;
	}
	
	public void setDate(Date date) {
		this.date = date;
	}
	@Column(name="time")
	public Integer getTime() {
		return time;
	}
	
	public void setTime(Integer time) {
		this.time = time;
	}
	
	@Column(name="rate")
	public Float getRate() {
		return rate;
	}
	
	public void setRate(Float rate) {
		this.rate = rate;
	}
	@OneToMany(mappedBy="movie", targetEntity=MovieAndActor.class,
			cascade=CascadeType.ALL)
	public Set getActor_movieSet() {
		return actor_movieSet;
	}
	public void setActor_movieSet(Set actor_movieSet) {
		this.actor_movieSet = actor_movieSet;
	}

	
	
	
	
}
