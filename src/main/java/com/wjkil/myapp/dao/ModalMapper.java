package com.wjkil.myapp.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.wjkil.myapp.dto.ModalDto;

public class ModalMapper implements RowMapper<ModalDto> {

	@Override
	public ModalDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		ModalDto dto = new ModalDto();
		System.out.println("ModalDto mapper");
		dto.setModalTableNumber(rs.getInt("modal_table.modal_table_number"));
		dto.setModalMenuId(rs.getInt("modal_table.modal_menu_id"));
		dto.setModalMenuName(rs.getString("menu_table.menu_name"));
		dto.setModalMenuCount(rs.getInt("modal_table.modal_menu_count"));
		dto.setModalMenuExplain(rs.getString("menu_table.menu_explain"));
		dto.setModalMenuPrice(rs.getInt("menu_table.menu_price"));
		return dto;
	}

}
