package com.front.user.dao;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.front.user.entity.User;
@Repository
public class UserDaoImp {
	@Resource
	private SessionFactory sessionFactory;
	/*用户注册 */
	public void UserRegister(User u)throws Exception{
		this.sessionFactory.getCurrentSession().save(u);
	}
	/*用户登录*/
	public User Userlogin(String username)throws Exception{
		String hql="from User where username="+username;
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		User u=(User)query.uniqueResult();
		return u;
	
	}
	
	
	/*根据user_id查询出user*/
	public User UserSelect(int user_id)throws Exception{
		String hql="from User where user_id="+user_id;
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		User u=(User)query.uniqueResult();
		
		
		return u;
	}
}
