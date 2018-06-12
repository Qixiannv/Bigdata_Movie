package com.front.movie.entity;

import java.sql.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.criteria.Order;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.annotations.GenericGenerator;

import com.front.actor.entity.Actor;
import com.front.user.entity.UserLikeMovie;
@Entity
@Table(name="movie")
public class Movie {
	
	private int movie_id;
	
	private String movie_name;
	
	private String movie_summary;
	
	private String movie_pic;
	private Set actor_movieSet = new HashSet<MovieAndActor>();
	
	private Set type_movieSet = new HashSet<MovieTypeAndMovie>();
	
	private Date date;
	private String movie_time;
	private Float rate;
	
	private Set userlikemovie = new HashSet<UserLikeMovie>();
	private Set movieCommentSet = new HashSet<MovieComment>();






	public Movie() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	public Movie(int movie_id, String movie_name, String movie_summary, String movie_pic, Set actor_movieSet,
			Set type_movieSet, Date date, String movie_time, Float rate, Set userlikemovie, Set movieCommentSet) {
		super();
		this.movie_id = movie_id;
		this.movie_name = movie_name;
		this.movie_summary = movie_summary;
		this.movie_pic = movie_pic;
		this.actor_movieSet = actor_movieSet;
		this.type_movieSet = type_movieSet;
		this.date = date;
		this.movie_time = movie_time;
		this.rate = rate;
		this.userlikemovie = userlikemovie;
		this.movieCommentSet = movieCommentSet;
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
	
	@OneToMany(mappedBy="movie", targetEntity=MovieComment.class,fetch = FetchType.LAZY)
	@Cascade(value = {CascadeType.SAVE_UPDATE, 	CascadeType.DELETE_ORPHAN,CascadeType.ALL})
	public Set getMovieCommentSet() {
		return movieCommentSet;
	}
	public void setMovieCommentSet(Set movieSet) {
		this.movieCommentSet = movieSet;
	}
	@Column(name="date")
	public Date getDate() {
		return date;
	}
	
	public void setDate(Date date) {
		this.date = date;
	}
	
	@Column(name = "movie_time")
	public String getMovie_time() {
		return movie_time;
	}


	public void setMovie_time(String movie_time) {
		this.movie_time = movie_time;
	}





	@Column(name="rate")
	public Float getRate() {
		return rate;
	}
	
	public void setRate(Float rate) {
		this.rate = rate;
	}
	@OneToMany(mappedBy="movie", targetEntity=MovieAndActor.class,fetch = FetchType.LAZY)
	@Cascade(value = {CascadeType.SAVE_UPDATE, 	CascadeType.DELETE_ORPHAN,CascadeType.ALL})
	public Set getActor_movieSet() {
		return actor_movieSet;
	}
	public void setActor_movieSet(Set actor_movieSet) {
		this.actor_movieSet = actor_movieSet;
	}

	@OneToMany(mappedBy="movie", targetEntity=MovieTypeAndMovie.class,fetch = FetchType.EAGER)
	@Cascade(value = {CascadeType.SAVE_UPDATE, 	CascadeType.DELETE_ORPHAN,CascadeType.ALL})
	public Set getType_movieSet() {
		return type_movieSet;
	}


	public void setType_movieSet(Set type_movieSet) {
		this.type_movieSet = type_movieSet;
	}

	@OneToMany(mappedBy="type", targetEntity=UserLikeMovie.class,
			cascade=javax.persistence.CascadeType.ALL,fetch = FetchType.EAGER)
	public Set getUserlikemovie() {
		return userlikemovie;
	}
	public void setUserlikemovie(Set userlikemovie) {
		this.userlikemovie = userlikemovie;
	}

	
	
	
	
	
}
