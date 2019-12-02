package com.wjkil.myapp.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.wjkil.myapp.dto.NowOrderDto;

public class NowOrderMapper implements RowMapper<NowOrderDto> {

	@Override
	public NowOrderDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		NowOrderDto dto = new NowOrderDto();
		dto.setNowTableNumber(rs.getInt("now_order_table.now_table_number"));
		dto.setNowMenuCount(rs.getInt("now_order_table.now_menu_count"));
		dto.setNowMenuId(rs.getInt("now_order_table.now_order_id"));
		dto.setNowMenuName(rs.getString("menu_table.menu_name"));
		dto.setNowPrice(rs.getInt("menu_table.menu_price"));
		return dto;
	}

	
}
