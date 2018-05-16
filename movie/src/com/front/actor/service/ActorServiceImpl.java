package com.front.actor.service;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.front.actor.dao.ActorDaoImpl;
import com.front.actor.entity.Actor;
import com.front.actor.entity.ActorComment;
import com.front.user.dao.UserDaoImp;

@Service(value = "AvtorServiceImpl")
@Transactional
public class ActorServiceImpl {

	@Resource
	private ActorDaoImpl adi;
	@Resource
	private UserDaoImp udi;
	
	/**
	 * 通过演员id查找演员
	 * @author 闫相垠
	 * @param actor_id 演员id
	 * @return Actor 找到的演员
	 */ 
	public Actor findActorById(Integer actor_id) {
		return this.adi.findActorById(actor_id);
	}
	
	/**
	 * 通过演员id查找演员评论
	 * @author 闫相垠
	 * @param actor_id 演员id
	 * @return List<ActorComment> 找到的演员评论
	 */
	public List<ActorComment> findActorCommentByActorId(Integer actor_id){
		return this.adi.findActorCommentByActorId(actor_id);
	}
	
	/**
	 * 保存演员评论
	 * @author 闫相垠
	 * @param comment_text 评论内容
	 * @param actor_id 被评论演员id
	 * @param user_id 评论用户id
	 */
	public void saveActorComment(String comment_text,Integer actor_id,Integer user_id) {
		try {
			this.adi.saveActorComment(comment_text, this.adi.findActorById(actor_id), this.udi.UserSelect(user_id));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
