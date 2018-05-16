package com.front.movie.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.hibernate.annotations.GenericGenerator;

public class Actor {
	private Integer actor_id;
	private String actor_name;
	private String actor_pic;
	private String actor_summary;
	
	private Set ActorCommentSet=new HashSet<ActorComment>();
	
	
	@Id
	@GeneratedValue(generator="aid")
	@GenericGenerator(name="aid",strategy="native")
	public Integer getActor_id() {
		return actor_id;
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
	@OneToMany(mappedBy="actor", targetEntity=MovieComment.class,
			cascade=CascadeType.ALL)
	public Set getActorCommentSet() {
		return ActorCommentSet;
	}
	public void setActorCommentSet(Set actorCommentSet) {
		ActorCommentSet = actorCommentSet;
	}
}
