package com.front.actor.entity;

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
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;

import com.front.movie.entity.Movie;
import com.front.movie.entity.MovieComment;

@Entity
@Table(name="actor")
public class Actor {
	private Integer actor_id;
	private String actor_name;
	private String actor_pic;
	private String actor_summary;
	
	private Set actorCommentSet = new HashSet<ActorComment>();
	
	
	@Id
	@GeneratedValue(generator="aid")
	@GenericGenerator(name="aid",strategy="native")
	public Integer getActor_id() {
		return actor_id;
	}
	
	

	public Actor() {
		
	}

	public Actor(Integer actor_id, String actor_name, String actor_pic, String actor_summary) {
		super();
		this.actor_id = actor_id;
		this.actor_name = actor_name;
		this.actor_pic = actor_pic;
		this.actor_summary = actor_summary;
	}
	public void setActor_id(Integer actor_id) {
		this.actor_id = actor_id;
	}
	@Column(name="actor_name")
	public String getActor_name() {
		return actor_name;
	}
	public void setActor_name(String actor_name) {
		this.actor_name = actor_name;
	}
	@Column(name="actor_pic")
	public String getActor_pic() {
		return actor_pic;
	}
	public void setActor_pic(String actor_pic) {
		this.actor_pic = actor_pic;
	}
	@Column(name="actor_summary")
	public String getActor_summary() {
		return actor_summary;
	}
	
	public void setActor_summary(String actor_summary) {
		this.actor_summary = actor_summary;
	}
	@OneToMany(mappedBy="actor", targetEntity=ActorComment.class,
			cascade=CascadeType.ALL)
	public Set getActorCommentSet() {
		return actorCommentSet;
	}
	public void setActorCommentSet(Set actorCommentSet) {
		this.actorCommentSet = actorCommentSet;
	}


}
