package com.wjkil.myapp.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.wjkil.myapp.dto.UserDto;

@Repository
public class LoginDaoImpl implements LoginDao{

   @Autowired
   JdbcTemplate jdbcTemplate;
   
	/*
	 * @Override public String login(String userEmail) {
	 * 
	 * 
	 * String sql = "SELECT USER_PASSWORD as userPassword " + "  FROM USER " +
	 * " WHERE USER_EMAIL = ? ";
	 * 
	 * String userPassword = null;
	 * 
	 * try{ userPassword = jdbcTemplate.queryForObject(sql, String.class,
	 * userEmail); }catch(org.springframework.dao.EmptyResultDataAccessException e)
	 * { userPassword = "-1"; }
	 * 
	 * return userPassword; }
	 */

   
   
   
   @Override
   public UserDto login(String userEmail) {
      UserDto dto = null;
	   
      String sql = 
            "SELECT USER_SEQ, USER_NAME, USER_PASSWORD, USER_EMAIL, USER_PROFILE_IMAGE_URL, USER_REGISTER_DATE " + 
            "  FROM USER_TB " + 
            " WHERE USER_EMAIL = ? ";
      
     
      try{
         dto = jdbcTemplate.queryForObject(sql, new UserMapper(),userEmail);
      }catch(org.springframework.dao.EmptyResultDataAccessException e) {
         dto = null;
      }
      
      return dto;
   }
   
   
   
   
}