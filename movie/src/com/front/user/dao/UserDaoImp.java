package com.front.user.dao;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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
	public void UserChange(User u)throws Exception{
		 Session session = sessionFactory.getCurrentSession(); 
         session.beginTransaction();  
         String hql = ("update User u set u.username=?,u.email=?,u.password=?,u.phone=?");    
         Query query = session.createQuery(hql);  
         query.setParameter(0, u.getUsername());  
         query.setParameter(1, u.getEmail());  
         query.setParameter(2, u.getPassword());  
         query.setParameter(3, u.getPhone());
         query.executeUpdate(); 
         session.getTransaction().commit();    
		
	}

	
}
