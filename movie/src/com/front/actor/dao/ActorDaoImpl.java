package com.front.actor.dao;

import java.util.List;

import javax.annotation.Resource;
import javax.persistence.Query;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.front.actor.entity.Actor;
import com.front.actor.entity.ActorComment;
import com.front.movie.entity.Movie;
import com.front.user.entity.User;

@Repository
public class ActorDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	/**
	 * 通过演员id查找演员
	 * @author 闫相垠
	 * @param actor_id 演员id
	 * @return Actor 找到的演员
	 */
	public Actor findActorById(Integer actor_id) {
		return this.sessionFactory.getCurrentSession().get(Actor.class, new Integer(actor_id));
	}
	
	/**
	 * 通过演员id查找演员评论
	 * @author 闫相垠
	 * @param actor_id 演员id
	 * @return List<ActorComment> 找到的演员评论list
	 */
	public List<ActorComment> findActorCommentByActorId(Integer actor_id){
		Query q = this.sessionFactory.getCurrentSession().createQuery("from ActorComment where actor_id =?");
		q.setParameter(0, actor_id);
		return q.getResultList();
	}
	
	/**
	 * 保存演员评论
	 * @author 闫相垠
	 * @param CommentText 评论内容
	 * @param Actor 被评论演员
	 * @param User 评论用户
	 * @return
	 */
	public void saveActorComment(String comment_text,Actor actor,User user) {
		ActorComment ac = new ActorComment();
		ac.setActor(actor);
		ac.setComment_text(comment_text);
		ac.setUser(user);
		
		this.sessionFactory.openSession().save(ac);
		
	}
}
