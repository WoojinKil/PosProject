package com.wjkil.myapp.dao;

import com.wjkil.myapp.dto.UserDto;

public interface LoginDao {

	public UserDto login(String userEmail);
}
