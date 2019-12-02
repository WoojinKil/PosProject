package com.wjkil.myapp.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.GregorianCalendar;

import org.springframework.jdbc.core.RowMapper;

import com.wjkil.myapp.dto.BoardDto;

public class BoardMapper implements RowMapper<BoardDto> {

	@Override
	public BoardDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
	      BoardDto dto = new BoardDto();
	      dto.setBoardId(rs.getInt("board_id"));
	      dto.setUserSeq(rs.getString("user_seq"));
	      dto.setUserName(rs.getString("user_name"));
	      dto.setUserProfileImageUrl(rs.getString("user_profile_image_url"));
	      dto.setTitle(rs.getString("title"));
	      dto.setContent(rs.getString("content"));
	      Calendar cal = new GregorianCalendar();
	      dto.setRegDt(rs.getTimestamp("reg_dt",cal));
	      dto.setReadCount(rs.getInt("read_count"));
	      //System.out.println("dto.getRegDt :" + dto.getRegDt());
	      return dto;
	}

}
