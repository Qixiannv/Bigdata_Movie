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
	//
		/**
		 * 用户注册
		 * @author 昝双鹏
		 * @param User u
		 * @return 
		 */
	public void UserRegister(User u)throws Exception{
		this.sessionFactory.getCurrentSession().save(u);
	}
	//
			/**
			 * 用户登录
			 * @param username 用户名
			 * @return
			 * @throws Exception  错误
			 * @return user u  用户u
			 */
	public User Userlogin(String email)throws Exception{
		String hql="from User where email='"+email+"'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		User u=(User)query.uniqueResult();
		return u;
	
	}
	
	
	/*根据user_id查询出user*/
	/**
	 * 根据user_id查询出user
	 * @param user_id   id 
	 * @return user u    u 
	 * @throws Exception
	 */
	public User UserSelect(Integer user_id)throws Exception{
		String hql="from User where user_id="+user_id;
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		User u=(User)query.uniqueResult();
		
		
		return u;
	}
	/**
	 * 更改用户信息
	 * @param u 用户u
	 * @throws Exception
	 */
	public void UserChange(User u)throws Exception{
		 Session session = sessionFactory.getCurrentSession();
		 System.out.println(u.getEmail());
         session.beginTransaction();  
         String hql = ("update User u set u.username=?,u.password=?,u.phone=? where u.user_id=?");    
         Query query = session.createQuery(hql);  
         query.setParameter(0, u.getUsername());   
         query.setParameter(1, u.getPassword());  
         query.setParameter(2, u.getPhone());
         query.setParameter(3, u.getUser_id());
         query.executeUpdate(); 
         session.getTransaction().commit();    
		
	}
	public void avatarUpdate(String a,int user_id)throws Exception{
		Session session = sessionFactory.getCurrentSession();
		 session.beginTransaction();  
		 String hql = ("update User u set u.avatar=? where u.user_id=?");
		 Query query = session.createQuery(hql);  
		 query.setParameter(0,a);
		 query.setParameter(1, user_id);
		 query.executeUpdate(); 
         session.getTransaction().commit();    
	}
	
	public void SignatureUpdate(String signature,int user_id)throws Exception{
		Session session = sessionFactory.getCurrentSession();
		 session.beginTransaction();  
		 String hql = ("update User u set u.signature=? where u.user_id=?");
		 Query query = session.createQuery(hql);  
		 query.setParameter(0,signature);
		 query.setParameter(1, user_id);
		 query.executeUpdate(); 
        session.getTransaction().commit();    
	}

	
}
