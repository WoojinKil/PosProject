package com.wjkil.myapp.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.wjkil.myapp.dto.UserDto;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	JdbcTemplate jdbctemplate;
	
	@Override
	public int userRegister(UserDto userDto) {
		// TODO Auto-generated method stub
		
		String sql= "INSERT INTO USER_TB (USER_NAME, USER_PASSWORD, USER_EMAIL, USER_PROFILE_IMAGE_URL, USER_REGISTER_DATE) VALUES(?,?,?,?, now())";
		
		return jdbctemplate.update(sql,userDto.getUserName(),userDto.getUserPassword(),userDto.getUserEmail(),
				userDto.getProfileImageUrl());
				
	}

}
