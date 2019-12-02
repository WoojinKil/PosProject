package com.wjkil.myapp;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	  @RequestMapping(value = "/", method = RequestMethod.GET)
	  public String home(Locale locale, Model model) {
	  
	  
	 logger.info("Welcome home! The client locale is {}.", locale);
	  
	  Date date = new Date(); DateFormat dateFormat =
	  DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
	  
	  String formattedDate = dateFormat.format(date);
	  
	  model.addAttribute("serverTime", formattedDate );
	  
	  return "main/main_card"; }
	 
	
	@RequestMapping(value = "/main_card", method = RequestMethod.GET)
	public String main_card(Locale locale, Model model) {

		
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "main/main_card";
	}
	

	
	@RequestMapping(value="/cards", method = RequestMethod.GET)
	public String cards(Locale locale,Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		
		return "cards";
	}
	
	@RequestMapping(value = "/modal", method = RequestMethod.GET)
	public String modal(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "bootmodal";
	}
	
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "login";
	}
	
	@RequestMapping(value = "/board", method = RequestMethod.GET)
	public String board(HttpSession session) {
		
		logger.info("/board");
		return "board/boardFile";
	}
	
	@RequestMapping(value = "/table", method = RequestMethod.GET)
	public String table(HttpSession session) {
		
		logger.info("/board");
		return "main/main_card";
	}
	
	
	@RequestMapping(value = "/finallist", method = RequestMethod.GET)
	public String Finallist(Locale locale, Model model) {
	
			  
			  
			 logger.info("Welcome home! The client locale is {}.", locale);
			  
			  Date date = new Date(); DateFormat dateFormat =
			  DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
			  
			  String formattedDate = dateFormat.format(date);
			  
			  model.addAttribute("serverTime", formattedDate );
			  
			  return "final/FinalList";
			  }
	
	
	
	
}
