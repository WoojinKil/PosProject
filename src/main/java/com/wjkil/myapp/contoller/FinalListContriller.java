package com.wjkil.myapp.contoller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wjkil.myapp.dto.FinalDto;
import com.wjkil.myapp.service.FinalListService;
@Controller
public class FinalListContriller {

	   private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	   @Autowired
	   FinalListService finalListService;
	   
	   @RequestMapping(value="/finallist/list",method=RequestMethod.GET)	   
	   @ResponseBody
	   public List<FinalDto> finalList(int limit, int offset) {
		   logger.debug("/finallist/finallist");

		   return finalListService.finalList(limit,offset);
		   
	   }
	   @RequestMapping(value = "/finallist/finalListTotalCnt", method = RequestMethod.GET)
	   @ResponseBody
	   public int finalListTotalCnt() {
	      
	      logger.debug("/board/listTotalCnt");
	      
	      return finalListService.finalListTotalCnt();
	   }
	   
}
