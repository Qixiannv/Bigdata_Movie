package com.front.actor.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.front.actor.dao.ActorBackstageDaoImpl;

@Service
public class ActorBackstageServiceImpl {

	@Resource
	private ActorBackstageDaoImpl abdi;
	
	public void changeActorName(Integer actor_id,String actor_name) {
		this.abdi.changeActorName(actor_id, actor_name);
	}
	
	public void changeActorSummary(Integer actor_id,String actor_summary) {
		this.abdi.changeActorSummary(actor_id, actor_summary);
	}
	
	public void createActor(String actor_name,String actor_summary,String actor_pic) {
		this.abdi.createActor(actor_name, actor_summary, actor_pic);
	}
	
	public void deleteActor(Integer actor_id) {
		this.abdi.deleteActor(actor_id);
	}
}
