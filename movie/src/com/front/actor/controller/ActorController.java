package com.front.actor.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.front.actor.entity.Actor;
import com.front.actor.service.ActorServiceImpl;
import com.front.movie.entity.Movie;
import com.front.movie.entity.Page;
import com.front.user.entity.User;

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
	public String showActorSingle(HttpServletRequest request,@RequestParam("actor_id") Integer actor_id) {
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
	public String leaveComment(HttpServletRequest request,@RequestParam("actor_id") int actor_id,HttpSession session,
			@RequestParam("comment_text") String comment_text) {
		
		User u = (User) session.getAttribute("user");
		Integer user_id = u.getUser_id();
		
		this.asi.saveActorComment(comment_text, actor_id,user_id);
		
		return "redirect:/gotoactor?actor_id="+actor_id;
	}
	
	/**
	 * 展示演员列表
	 * @author 闫相垠
	 * @param request request
	 * @return
	 */
	@GetMapping("/show_actor")
	public String showAllActors(HttpServletRequest request,
            HttpServletResponse response) {
		try {
            String pageNo = request.getParameter("pageNo");
            if (pageNo == null) {
                pageNo = "1";
            }
            Page page = asi.queryActorForPage(Integer.valueOf(pageNo), 10);
            request.setAttribute("page", page);
            List<Actor> list = page.getList();
    		request.setAttribute("actorlist", list);
        } catch (Exception e) {
            e.printStackTrace();
        }
		
		return "celebrities";
	}
	
}
