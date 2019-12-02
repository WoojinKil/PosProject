package com.wjkil.myapp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wjkil.myapp.dao.LoginDao;
import com.wjkil.myapp.dto.UserDto;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	LoginDao loginDao;
	@Override
	public UserDto login(String userEmail) {
		// TODO Auto-generated method stub
		
		return loginDao.login(userEmail);
	}

	
}
