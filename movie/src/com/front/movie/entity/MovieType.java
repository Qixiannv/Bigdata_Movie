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
@Table(name="type")
public class MovieType {
	private Integer type_id;
	private String type_name;
	
	
	public MovieType(){}
	public MovieType(String t_m){
		super();
		this.type_name=t_m;
		
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
	
}
