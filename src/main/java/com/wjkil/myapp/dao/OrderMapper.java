package com.wjkil.myapp.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.wjkil.myapp.dto.OrderDto;

public class OrderMapper implements RowMapper<OrderDto> {

	@Override
	public OrderDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		OrderDto dto = new OrderDto();
		dto.setOrderId(rs.getInt("order_table.order_id"));
		dto.setMenuId(rs.getInt("order_table.menu_id"));
		dto.setMenuName(rs.getString("menu_table.menu_name"));
		dto.setOrderDate(rs.getDate("order_table.order_date"));
		dto.setTableNumber(rs.getInt("order_table.table_number"));
		dto.setStatus(rs.getString("order_table.status"));
		
		return dto;
	}

}
