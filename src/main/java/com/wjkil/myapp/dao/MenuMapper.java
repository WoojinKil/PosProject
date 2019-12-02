package com.wjkil.myapp.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.wjkil.myapp.dto.MenuDto;

public class MenuMapper implements RowMapper<MenuDto> {

	@Override
	public MenuDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		MenuDto dto = new MenuDto();
		dto.setMenuId(rs.getInt("menu_id"));
		dto.setMenuExplain(rs.getString("menu_explain"));
		dto.setMenuName(rs.getString("menu_name"));
		dto.setMenuPrice(rs.getInt("menu_price"));
		return dto;
	}

}
