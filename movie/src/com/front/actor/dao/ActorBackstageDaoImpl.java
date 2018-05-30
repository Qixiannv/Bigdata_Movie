package com.front.actor.dao;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.front.actor.entity.Actor;

@Repository
public class ActorBackstageDaoImpl {

	@Resource
	private SessionFactory sessionFactory;
	@Resource
	private ActorDaoImpl adi;
	
	/**
	 * 修改演员名字
	 * @author 闫相垠
	 * @param actor_id 演员id
	 * @param name 演员名字
	 */
	public void changeActorName(Integer actor_id,String actor_name) {
		Session session = this.sessionFactory.openSession();
		session.beginTransaction();
		Query query = session.createQuery("update Actor a set a.actor_name = ? where a.actor_id = ?");
		query.setParameter(0, actor_name);
		query.setParameter(1, actor_id);
		query.executeUpdate();
		session.getTransaction().commit();
	}
	
	/**
	 * 修改演员简介
	 * @author 闫相垠
	 * @param actor_id 演员id
	 * @param summary 演员简介
	 */
	public void changeActorSummary(Integer actor_id,String actor_summary) {
		Session session = this.sessionFactory.openSession();
		session.beginTransaction();
		Query query = session.createQuery("update Actor a set a.actor_summary = ? where a.actor_id = ?");
		query.setParameter(0, actor_summary);
		query.setParameter(1, actor_id);
		query.executeUpdate();
		session.getTransaction().commit();
	}
	
	/**
	 * 插入演员
	 * @author 闫相垠
	 * @param actor_name 演员名字
	 * @param actor_summary 演员简介
	 * @param actor_pic 演员照片路径
	 */
	public void createActor(String actor_name,String actor_summary,String actor_pic) {
		Actor a = new Actor();
		a.setActor_name(actor_name);
		a.setActor_pic(actor_pic);
		a.setActor_summary(actor_summary);
		this.sessionFactory.getCurrentSession().save(a);
	}
	
	public void deleteActor(Integer actor_id) {
		Session session = this.sessionFactory.openSession();
		session.beginTransaction();
		Query query = session.createQuery("delete Actor a where a.actor_id = ?");
		Query query1 = session.createQuery("delete MovieAndActor maa where maa.actor = ?");
		query.setParameter(0, actor_id);
		query1.setParameter(0, this.adi.findActorById(actor_id));
		query.executeUpdate();
		query1.executeUpdate();
		session.getTransaction().commit();
	}
}
