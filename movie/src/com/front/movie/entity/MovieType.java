package com.front.movie.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.front.user.entity.User;

@Entity
@Table(name="type")
public class MovieType {
	private Integer type_id;
	private String type_name;
	private Set type_userSet = new HashSet<MovieTypeAndUser>();
	private Set type_movie = new HashSet<MovieTypeAndMovie>();
	
	public MovieType(){}
	public MovieType(String t_m,Set tus,Set tms){
		super();
		this.type_name=t_m;
		this.type_userSet = tus;
		this.type_movie = tms;
		
		
	}
	
	
	@Id
	@GeneratedValue(generator="tid")
	@GenericGenerator(name="tid",strategy="native")
	public Integer getType_id() {
		return type_id;
	}
	public void setType_id(Integer type_id) {
		this.type_id = type_id;
	}
	
	@Column(name="type_name")
	public String getType_name() {
		return type_name;
	}
	public void setType_name(String type_name) {
		this.type_name = type_name;
	}
	
	
	@OneToMany(mappedBy="type", targetEntity=MovieTypeAndUser.class,
			cascade=CascadeType.ALL)
	public Set getType_userSet() {
		return type_userSet;
	}
	public void setType_userSet(Set type_userSet) {
		this.type_userSet = type_userSet;
	}
	
	
	@OneToMany(mappedBy="type", targetEntity=MovieTypeAndMovie.class,
			cascade=CascadeType.ALL,fetch = FetchType.EAGER)
	public Set getType_movie() {
		return type_movie;
	}
	public void setType_movie(Set type_movie) {
		this.type_movie = type_movie;
	}
	
	
	
}
