package com.wjkil.myapp.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.GregorianCalendar;

import org.springframework.jdbc.core.RowMapper;

import com.wjkil.myapp.dto.FinalDto;

public class FinalMapper implements RowMapper<FinalDto> {

	@Override
	public FinalDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		FinalDto dto = new FinalDto();
		Calendar cal1 = new GregorianCalendar();
		dto.setCashDate(rs.getTimestamp("final_table.cash_date",cal1));
		dto.setFinalId(rs.getInt("final_table.final_id"));
		dto.setMenuName(rs.getString("menu_table.menu_name"));
		Calendar cal2 = new GregorianCalendar();
		dto.setMenuPrice(rs.getInt("menu_table.menu_price"));
		dto.setOrderDate(rs.getTimestamp("order_table_for_final.order_date",cal2));
		dto.setStatus(rs.getString("final_table.final_status"));
		dto.setTableNumber(rs.getInt("order_table_for_final.table_number"));
		dto.setOrderId(rs.getInt("final_table.order_id"));
		return dto;
	}

}
