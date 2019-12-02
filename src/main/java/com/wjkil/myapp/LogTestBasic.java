package com.wjkil.myapp;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LogTestBasic {

	public static void main(String[] args) {
		Logger logger = LoggerFactory.getLogger(LogTestBasic.class);
		logger.error("Oh, NO!!");
		logger.warn("watch out this number and person {}, {}!",2019,"SON");
		logger.info("hello! slf4j log!!");
		logger.debug("what's wrong with this number {}??",2019);
		logger.trace("here we are");
		
	}
}
