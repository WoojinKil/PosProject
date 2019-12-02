package com.wjkil.myapp.dao;

import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import com.wjkil.myapp.dto.FinalDto;
import com.wjkil.myapp.dto.MenuDto;
import com.wjkil.myapp.dto.ModalDto;
import com.wjkil.myapp.dto.NowOrderDto;
import com.wjkil.myapp.dto.OrderDto;
import com.wjkil.myapp.dto.PriceDto;
import com.wjkil.myapp.dto.TableDto;

@Repository
public class OrderDaoImp implements OrderDao {

	@Autowired
	JdbcTemplate jdbcTemplate;
	

	
	
	@Override
	public List<TableDto> tableList() {
		// TODO Auto-generated method stub
		String sql = "select * from table_table";
		
		
		return jdbcTemplate.query(sql,new TableMapper());
	}



	@Override
	public TableDto tableDetail(int tableNumber) {
		// TODO Auto-generated method stub
		String sql =  " SELECT"
				+ " * "
				+ " FROM"
				+ " table_table "
				+ " where"
				+ " table_number = ?";
		return jdbcTemplate.queryForObject(sql, new TableMapper(),tableNumber);
	}



	@Override
	public List<MenuDto> menuList( ) {
		// TODO Auto-generated method stub
		System.out.println("메뉴리스트dao 들어감");
		
		String sql = "SELECT * "
				+ " FROM"
				+ " MENU_TABLE";
				
				
		
		return jdbcTemplate.query(sql, new MenuMapper());
	}



	@Override
	public List<OrderDto> orderList(int tableNumber) {
		// TODO Auto-generated method stub
		String sql = "select  * "
				+ " from menu_table, order_table "
				+ "  where menu_table.menu_id = order_table.menu_id "
				+ " and order_table.table_number=?";
		
		return jdbcTemplate.query(sql,new OrderMapper(),tableNumber);
	}



	@Override
	public int updateModalOrder(int tableNumber,int menuId) {
		// TODO Auto-generated method stub
		String sql = "update modal_table "
				+  " set modal_menu_count = modal_menu_count+1 "
				+ " where modal_table_number=? "
				+ " and modal_menu_id=? ";
			
		
		return jdbcTemplate.update(sql,tableNumber,menuId);
	}



	@Override
	public int clearModalOrder(int tableNumber) {
		// TODO Auto-generated method stub
		String sql = "update modal_table"
				+ " set modal_menu_count=0"
				+ " where  modal_table_number=?";
		return jdbcTemplate.update(sql,tableNumber);
	}



	@Override
	public List<NowOrderDto> tableOrderList(int tableNumber) {
		// TODO Auto-generated method stub
		System.out.println("tableOrderList dao 들어감");
		String sql = "select * "
				+ " from now_order_table, menu_table"
				+ " where now_menu_id=menu_id "
				+ " and now_order_table.now_table_number=?"
				+ " order by menu_id;";
				
		return jdbcTemplate.query(sql, new NowOrderMapper(),tableNumber);
	}



	@Override
	public int tableOrderUpdate(int tableNumber) {
		// TODO Auto-generated method stub
		String sql ="update now_order_table, modal_table set now_order_table.now_menu_count = modal_table.modal_menu_count where modal_table.modal_table_number=now_order_table.now_table_number and now_order_table.now_table_number=?";
		System.out.println("tableOrderUpdate 들어감");
		return jdbcTemplate.update(sql,tableNumber);
	}



	@Override
	public int order(int tableNumber, int menuId) {
		// TODO Auto-generated method stub
		KeyHolder keyHolder = new GeneratedKeyHolder();
	      
		String sql = " insert into order_table ("
				+ " menu_id, table_number, status,order_date)"
				+ " values (?,?,'준비중',now());";
	      jdbcTemplate.update(connection -> {
		         PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
		         ps.setInt(1, menuId);
		         ps.setInt(2, tableNumber);
		         
		         return ps;
		      }, keyHolder);
		    
		      return keyHolder.getKey().intValue();
	}



	@Override
	public List<OrderDto> orderFirstList() {
		// TODO Auto-generated method stub
		String sql = "select  * "
				+ " from menu_table, order_table "
				+ "  where menu_table.menu_id = order_table.menu_id ";
		
		return jdbcTemplate.query(sql,new OrderMapper());

	}



	@Override
	public int statusUpdate(int orderId) {
		// TODO Auto-generated method stub
		String sql = "update order_table "
				+  " set status = '완료' "
				+ " where order_id=? ";
		return jdbcTemplate.update(sql,orderId);
	}



	@Override
	public int orderDelete(int orderId) {
		// TODO Auto-generated method stub
		String sql = "delete from order_table where order_id = ?";
		
		return jdbcTemplate.update(sql,orderId);
	}



	@Override
	public PriceDto priceDetail(int tableNumber) {
		// TODO Auto-generated method stub
		System.out.println("PriceDto dao 들어감"+ tableNumber);
		String sql = " SELECT"
				+ " table_table.table_number, "
				+ " sum(menu_table.menu_price), "
				+ " table_table.table_cap"
				+ " FROM"
				+ " order_table, table_table, menu_table"
				+ " where"
				+ " menu_table.menu_id= order_table.menu_id"
				+ " and"
				+ " order_table.table_number=table_table.table_number"
				+ " and"
				+ " table_table.table_number = ? ";
		return jdbcTemplate.queryForObject(sql, new PriceMapper(),tableNumber) ;
	}



	@Override
	public int finalInsert(int orderId,String status) {
		// TODO Auto-generated method stub
		System.out.println("finalInsert dao 들어감"+ orderId + status);

		KeyHolder keyHolder = new GeneratedKeyHolder();
	      
		String sql = " insert into final_table ("
				+ " order_id, cash_date, final_status)"
				+ " values (?,now(),?)";
				
	      jdbcTemplate.update(connection -> {
		         PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
		         ps.setInt(1, orderId);
		         ps.setString(2, status);
		         
		         return ps;
		      }, keyHolder);
		    
		      return keyHolder.getKey().intValue();
	}



	@Override
	public int completeCash(int tableNumber) {
		// TODO Auto-generated method stub
		System.out.println("completeCash dao 들어감"+ tableNumber);

		String sql = "delete"
				+ " from "
				+ " order_table "
				+ " where table_number = ? "
				+ " and "
				+ " status='완료'";
		return jdbcTemplate.update(sql,tableNumber);
	}



	@Override
	public OrderDto tempOrderDetail(int orderId) {
		// TODO Auto-generated method stub
		String sql =  " SELECT"
				+ " * "
				+ " FROM "
				+ " menu_table, "
				+ " order_table "
				+ " where menu_table.menu_id=order_table.menu_id "
				+ " and"
				+ " order_table.order_id = ?";
		return jdbcTemplate.queryForObject(sql, new OrderMapper(),orderId);

	}



	@Override
	public int orderForFinal(int tableNumber, int menuId) {
		// TODO Auto-generated method stub
		KeyHolder keyHolder = new GeneratedKeyHolder();
	      
		String sql = " insert into order_table_for_final ("
				+ " menu_id, table_number,order_date)"
				+ " values (?,?,now());";
	      jdbcTemplate.update(connection -> {
		         PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
		         ps.setInt(1, menuId);
		         ps.setInt(2, tableNumber);
		         
		         return ps;
		      }, keyHolder);
		    
		      return keyHolder.getKey().intValue();
	}



	@Override
	public int FinalRefundInsert(int orderId) {
		// TODO Auto-generated method stub

		KeyHolder keyHolder = new GeneratedKeyHolder();
	      
		String sql = " insert into final_table ("
				+ " order_id, cash_date, final_status)"
				+ " values (?,now(),'환불됨')";
				
	      jdbcTemplate.update(connection -> {
		         PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
		         ps.setInt(1, orderId);
		         
		         
		         return ps;
		      }, keyHolder);
		    
		      return keyHolder.getKey().intValue();
	}



	@Override
	public List<FinalDto> todayList() {
		// TODO Auto-generated method stub
		String sql = 	" select"
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
					+ " and date_format(order_table_for_final.order_date, '%Y-%m-%d' ) = date_format(curdate( ), '%Y-%m-%d' ) "
					+ " order by"
					+ " final_table.order_id ";
		return jdbcTemplate.query(sql,new FinalMapper());
	}



	@Override
	public int insertMenu(MenuDto dto) {
		// TODO Auto-generated method stub
		System.out.println(" insertMenu dao"+ dto.getMenuName());
		String sql = "insert into menu_table( "
				+ " menu_name, menu_price, menu_explain)"
				+ " values (?,?,?)";
		return jdbcTemplate.update(sql,
				dto.getMenuName(),
				dto.getMenuPrice(),
				dto.getMenuExplain()
				);
	}



	@Override
	public MenuDto menuDetail(int menuId) {
		// TODO Auto-generated method stub
		System.out.println("menuDetail " +menuId);
		String sql =  " SELECT"
				+ " * "
				+ " FROM"
				+ " table_table "
				+ " where"
				+ " table_number = ?";
		return jdbcTemplate.queryForObject(sql, new MenuMapper(),menuId);
	
		
	}



	@Override
	public int menuDelete(int menuId) {
		// TODO Auto-generated method stub
		String sql = "delete from menu_table where menu_id=?";
		return jdbcTemplate.update(sql,menuId);
	}



	

}
