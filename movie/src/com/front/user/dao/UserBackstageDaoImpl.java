package com.front.user.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Component
@Repository
public class UserBackstageDaoImpl {

	@Autowired
	private SessionFactory sessionFactory;
	
	
	/**
	 * 删除用户
	 * @author 闫相垠
	 * @param user_id
	 */
	public     void deleteMovie(Integer user_id) {
		Session session = this.sessionFactory.openSession();
		session.beginTransaction();
		Query query = session.createQuery("delete User u where u.user_id = ?");
		query.setParameter(0, user_id);
		query.executeUpdate();
		session.getTransaction().commit();
		
	}
}
