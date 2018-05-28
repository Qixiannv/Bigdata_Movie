package com.front.movie.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.front.actor.entity.Actor;

@Entity
@Table(name="actor_movie")
public class MovieAndActor {
	
	private Integer ac_id;
	private Movie movie;
	private Actor actor;
	
	
	
	public MovieAndActor() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public MovieAndActor(Integer ac_id, Movie movie, Actor actor) {
		super();
		this.ac_id = ac_id;
		this.movie = movie;
		this.actor = actor;
	}


	@Id
	@GeneratedValue(generator="mid")
	@GenericGenerator(name="mid",strategy="native")
	@Column(name="ac_id")
	public Integer getId() {
		return ac_id;
	}
	public void setId(Integer ac_id) {
		this.ac_id = ac_id;
	}
	@ManyToOne
	@JoinColumn(name="movie_id")
	public Movie getMovie() {
		return movie;
	}
	public void setMovie(Movie movie) {
		this.movie = movie;
	}
	@ManyToOne
	@JoinColumn(name="actor_id")
	public Actor getActor() {
		return actor;
	}
	public void setActor(Actor actor) {
		this.actor = actor;
	}
}
