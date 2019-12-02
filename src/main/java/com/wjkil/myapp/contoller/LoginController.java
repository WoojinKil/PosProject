package com.wjkil.myapp.contoller;



import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wjkil.myapp.dto.UserDto;
import com.wjkil.myapp.service.LoginService;
import com.wjkil.myapp.service.UserService;

@Controller
public class LoginController {

   private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
   
   @Autowired
   LoginService loginService;

   @RequestMapping(value = "/login", method = RequestMethod.POST)
   @ResponseBody
   public String login(HttpSession session, String userEmail, String userPassword) {
      
      logger.debug("/login");
      UserDto dto = loginService.login(userEmail);

      if(dto.getUserPassword().equals(userPassword)) {
    	  session.setAttribute("userDto", dto);
    	  System.out.println("로그인성공");
    	  return "4";
      }else {
         return "false";
      }
   }
}