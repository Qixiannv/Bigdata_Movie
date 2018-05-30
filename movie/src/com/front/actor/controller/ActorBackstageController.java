package com.front.actor.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.front.actor.service.ActorBackstageServiceImpl;

@Controller
public class ActorBackstageController {

	@Resource
	private ActorBackstageServiceImpl absi;
	
	/**
	 * 修改演员名字
	 * @author 闫相垠
	 * @param actor_id 演员id
	 * @param actor_name 演员名字
	 * @return
	 */
	@RequestMapping("change_actor_name")
	public String changeActorName(@RequestParam("actor_id") Integer actor_id,@RequestParam("actor_name") String actor_name) {
		this.absi.changeActorName(actor_id, actor_name);
		return "redirect:/backstageactorlist";
	}
	
	/**
	 * 修改演员简介
	 * @author 闫相垠
	 * @param actor_id 演员id
	 * @param actor_summary 演员简介
	 * @return
	 */
	@RequestMapping("change_actor_summary")
	public String changeActorSummary(@RequestParam("actor_id") Integer actor_id,@RequestParam("actor_summary") String actor_summary) {
		this.absi.changeActorSummary(actor_id, actor_summary);
		return "redirect:/backstageactorlist";
	}
	
	/**
	 * 增加演员
	 * @author 闫相垠
	 * @param actor_name 演员名字
	 * @param actor_summary 演员简介
	 * @param actor_pic 演员图片路径
	 * @return
	 */
	@RequestMapping("create_actor")
	public String createActor(@RequestParam("actor_name") String actor_name,@RequestParam("actor_summary") String actor_summary,@RequestParam("actor_pic") String actor_pic) {
		this.absi.createActor(actor_name, actor_summary, actor_pic);
		return "redirect:/backstageactorlist";
	}
	
	/**
	 * 删除演员
	 * @author 闫相垠
	 * @param actor_id 演员id
	 * @return
	 */
	@GetMapping("delete_actor")
	public String deleteActor(@RequestParam("actor_id") Integer actor_id) {
		this.absi.deleteActor(actor_id);
		return "redirect:/backstageactorlist";
	}
	
}
