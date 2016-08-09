package com.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.NewUser;

@Repository
@Transactional
public class RegisterDaoImpl implements RegisterDao{

	@Autowired
	private SessionFactory session;
	
	public void checkNewUsers(NewUser newuser){
		session.getCurrentSession().saveOrUpdate(newuser);
	}
}
