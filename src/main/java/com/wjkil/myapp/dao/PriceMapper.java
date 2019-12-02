package com.wjkil.myapp.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.wjkil.myapp.dto.PriceDto;

public class PriceMapper implements RowMapper<PriceDto> {

	@Override
	public PriceDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		PriceDto dto = new PriceDto();
		dto.setSumPrice(rs.getInt("sum(menu_table.menu_price)"));
		dto.setTableNumber(rs.getInt("table_table.table_number"));
		return dto;
	}

}
