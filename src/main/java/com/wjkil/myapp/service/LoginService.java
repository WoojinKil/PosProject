package com.wjkil.myapp.service;

import com.wjkil.myapp.dto.UserDto;

public interface LoginService {
	public UserDto login(String userEmail);
}
