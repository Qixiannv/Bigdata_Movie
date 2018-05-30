package com.front.backstage.dao;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.front.backstage.entity.Admin;

@Repository
public class AdminDaoImp {
	@Resource
	private SessionFactory sessionFactory;
	
	
	public Admin Adminlogin(String admin_name)throws Exception{
		String hql="from Admin where admin_name='"+admin_name+"'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		Admin a=(Admin)query.uniqueResult();
		return a;
	
	}
}
