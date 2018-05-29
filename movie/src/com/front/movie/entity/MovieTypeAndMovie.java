package com.front.movie.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="type_movie")
public class MovieTypeAndMovie {
	private Integer tm_id;
	private MovieType type;
	private Movie movie;
	
	public MovieTypeAndMovie(){}
	
	public MovieTypeAndMovie(MovieType type,Movie m){
		super();
		this.type = type;
		this.movie = m;
	}

	
	@Id
	@GeneratedValue(generator="mid")
	@GenericGenerator(name="mid",strategy="native")
	@Column(name="tm_id")
	public Integer getTm_id() {
		return tm_id;
	}

	public void setTm_id(Integer tm_id) {
		this.tm_id = tm_id;
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
	@JoinColumn(name="movie_id")
	public Movie getMovie() {
		return movie;
	}

	public void setMovie(Movie movie) {
		this.movie = movie;
	}

	
	
}
