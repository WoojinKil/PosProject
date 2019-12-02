package com.wjkil.myapp.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.wjkil.myapp.dto.*;

public class TableMapper implements RowMapper<TableDto> {

	@Override
	public TableDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		
		TableDto dto = new TableDto();
		dto.setTableNumber(rs.getInt("table_number"));
		dto.setTableCap(rs.getInt("table_cap"));
		return dto;
	}

}
