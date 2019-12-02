package com.wjkil.myapp;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wjkil.myapp.dto.UserDto;
import com.wjkil.myapp.service.UserService;

@Controller
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@Autowired
	UserService userService;
	
	@RequestMapping(value = "/login/register", method = RequestMethod.GET)
	public String register(Locale locale, Model model) {

		logger.debug("/user/register");
		return "user/register";
	}
	
	
	
	@RequestMapping(value="/user",method = RequestMethod.POST)
	@ResponseBody
	public int register(UserDto userDto) {
		logger.debug("/user");
		return userService.userRegister(userDto);
	}
	
}
