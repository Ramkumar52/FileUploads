package com.dao;


import java.util.List;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.User;

@Repository
@Transactional
public class loginDaoImpl implements loginDao {

	@Autowired(required=true)
	private SessionFactory session;
	@Override
	public boolean checkUser(User u) {
		boolean isvaliduser=false;
		
		Query q=session.openSession().createQuery("from UserFe where name= '"+u.getName()+"' and password='"+u.getPassword()+"'");
		List<User> lu=q.list();
		int s=lu.size();
		if(s==1)
		{
			isvaliduser=true;
		}
		
		return isvaliduser;
	}
}
