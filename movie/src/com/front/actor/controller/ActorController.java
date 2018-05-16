package com.front.actor.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.front.actor.entity.Actor;
import com.front.actor.service.ActorServiceImpl;

@Controller
public class ActorController {

	@Resource
	private ActorServiceImpl asi;
	
	/**
	 * 根据演员id获取演员界面
	 * @author 闫相垠
	 * @param request request
	 * @param id 演员id
	 * @return String 路径
	 */
	@GetMapping("/gotoactor")
	public String showActorSingle(HttpServletRequest request,@RequestParam("actor_id") int actor_id) {
		Actor actor = this.asi.findActorById(actor_id);
		request.setAttribute("actor", actor);
		
		return "actors";
	}
	
	/**
	 * 保存演员评论
	 * @author 闫相垠
	 * @param actor_id 被评论演员id
	 * @param user_id 评论用户id
	 * @param comment_text 评论内容
	 * @return
	 */
	@GetMapping("/actor_comment")
	public String leaveComment(HttpServletRequest request,@RequestParam("actor_id") int actor_id,@RequestParam("user_id") int user_id,
			@RequestParam("comment_text") String comment_text) {
		
		this.asi.saveActorComment(comment_text, actor_id, user_id);
		
		return "redirect:/gotoactor?actor_id="+actor_id;
	}
	
}
