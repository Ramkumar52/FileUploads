package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.RegisterDao;
import com.model.NewUser;

@Service
@Transactional
public class RegisterServiceImpl implements RegisterService{
        
	    @Autowired
		private RegisterDao registerdao;
		
	    @Override
		public void checkNewUser(NewUser newuser){
			
			registerdao.checkNewUsers(newuser);
		}
	
	
}
