package com.front.movie.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import org.hibernate.annotations.GenericGenerator;

import com.front.user.entity.User;

public class ActorComment {

	private Integer ActorComment_id;
	private User user;
	private Actor actor;
	
	private String comment_text;
	
	@Id
	@GeneratedValue(generator="acid")
	@GenericGenerator(name="acid",strategy="native")
	public Integer getActorComment_id() {
		return ActorComment_id;
	}
	public void setActorComment_id(Integer actorComment_id) {
		ActorComment_id = actorComment_id;
	}
	@ManyToOne
	@JoinColumn(name="user_id")
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="actor_id")
	public Actor getActor() {
		return actor;
	}
	public void setActor(Actor actor) {
		this.actor = actor;
	}
	
	@Column(name = "comment_text")
	public String getComment_text() {
		return comment_text;
	}
	public void setComment_text(String comment_text) {
		this.comment_text = comment_text;
	}
}
