package com.wjkil.myapp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wjkil.myapp.dao.UserDao;
import com.wjkil.myapp.dto.UserDto;

@Service
public class UserServiceImpl implements UserService {

	
	@Autowired
	UserDao userDao;
	
	@Override
	public int userRegister(UserDto userDto) {
		// TODO Auto-generated method stub
		return userDao.userRegister(userDto);
	}

}
