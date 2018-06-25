package com.front.actor.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.front.actor.entity.Actor;
import com.front.actor.entity.ActorComment;
import com.front.movie.entity.Movie;
import com.front.user.dao.UserDaoImp;
import com.front.user.entity.User;

@Repository
public class ActorDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	@Resource
	private UserDaoImp udi;
	@Resource
	private ActorDaoImpl adi;
	
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
	 * @throws Exception 
	 */
	public void saveActorComment(String comment_text,int actor_id,int user_id) throws Exception {
		ActorComment ac = new ActorComment();
		ac.setActor(this.adi.findActorById(actor_id));
		ac.setComment_text(comment_text);
		ac.setUser(this.udi.UserSelect(user_id));
	
		System.out.println(ac.getComment_text());
		System.out.println(ac.getActor().getActor_id());
		System.out.println(ac.getUser().getUser_id());
		
		this.sessionFactory.getCurrentSession().save(ac);
	
	}
	
	/**
	 * 查询所有演员
	 * @author 闫相垠
	 * @return List<Actor> 演员列表
	 */
	public List<Actor> findAllActors(){
		Query<Actor> q = this.sessionFactory.getCurrentSession().createQuery("from Actor");
		return q.list();
	} 
}
