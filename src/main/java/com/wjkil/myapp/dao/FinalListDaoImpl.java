package com.wjkil.myapp.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.wjkil.myapp.dto.FinalDto;
@Repository
public class FinalListDaoImpl implements FinalListDao {
	@Autowired
	JdbcTemplate jdbcTemplate;
	@Override
	public List<FinalDto> finalList(int limit, int offset) {

		
		
		// TODO Auto-generated method stub
		String sql =" select"
				+ "	 final_table.cash_date,"
				+ "  final_table.final_id,"
				+ "  menu_table.menu_name,"
				+ "  order_table_for_final.order_date,"
				+ " final_table.final_status,"
				+ " order_table_for_final.table_number,"
				+ " final_table.order_id,"
				+ " menu_table.menu_price "
				+ " from "
				+ " final_table,"
				+ " order_table_for_final,"
				+ " menu_table"
				+ " where"
				+ " menu_table.menu_id=order_table_for_final.menu_id"
				+ " and"
				+ " order_table_for_final.order_id= final_table.order_id"
				+ " order by"
				+ " final_table.order_id desc limit ? offset ?";
	return jdbcTemplate.query(sql,new FinalMapper(),limit, offset); 
		
	}
	@Override
	public int finalListTotalCnt() {
		// TODO Auto-generated method stub
		String sql = "SELECT count(*) FROM final_table ";
		return jdbcTemplate.queryForObject(sql,Integer.class);
	}

}
