package com.wjkil.myapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wjkil.myapp.dao.OrderDao;
import com.wjkil.myapp.dto.BoardDto;
import com.wjkil.myapp.dto.FinalDto;
import com.wjkil.myapp.dto.MenuDto;
import com.wjkil.myapp.dto.ModalDto;
import com.wjkil.myapp.dto.NowOrderDto;
import com.wjkil.myapp.dto.OrderDto;
import com.wjkil.myapp.dto.PriceDto;
import com.wjkil.myapp.dto.TableDto;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	OrderDao dao;

	@Override
	public List<TableDto> tableList() {
		// TODO Auto-generated method stub
		
		return dao.tableList();
	}
	@Override
	public TableDto tableDetail(int tableNumber) {
		// TODO Auto-generated method stub
		System.out.println("tableDetail 서비스 들어감");
		return dao.tableDetail(tableNumber);
	}

	@Override
	public List<MenuDto> menuList() {
		// TODO Auto-generated method stub
		System.out.println("메뉴 서비스 들어감");
		return dao.menuList();
	}
	@Override
	public List<OrderDto> orderList(int tableNumber) {
		// TODO Auto-generated method stub
		System.out.println("메뉴 서비스_현재오더리스트");
		return dao.orderList(tableNumber);
	}
	@Override
	public int updateModalOrder(int tableNumber,int menuId) {
		// TODO Auto-generated method stub
		System.out.println("updateModal 서비스 들어옴");
		return dao.updateModalOrder(tableNumber, menuId);
	}
	@Override
	public int clearModalOrder(int tableNumber) {
		// TODO Auto-generated method stub
		System.out.println("cleardModal 서비스 들어옴");
		return dao.clearModalOrder(tableNumber);
	}
	@Override
	public List<NowOrderDto> tableOrderList(int tableNumber) {
		// TODO Auto-generated method stub
		System.out.println("tableOrderList 서비스 들어옴");
		
		return dao.tableOrderList(tableNumber);
	}
	@Override
	public int tableOrderUpdate(int tableNumber) {
		// TODO Auto-generated method stub
		return dao.tableOrderUpdate(tableNumber);
	}


	@Override
	public int order(int tableNumber, int menuId) {
		// TODO Auto-generated method stub
		return dao.order(tableNumber, menuId);
	}
	@Override
	public List<OrderDto> orderFirstList() {
		// TODO Auto-generated method stub
		
		return dao.orderFirstList();
	}
	@Override
	public int statusUpdate(int orderId) {
		// TODO Auto-generated method stub
		return dao.statusUpdate(orderId);
	}
	@Override
	public int orderDelete(int orderId) {
		// TODO Auto-generated method stub
		return dao.orderDelete(orderId);
	}
	@Override
	public PriceDto priceDetail(int tableNumber) {
		// TODO Auto-generated method stub
		return dao.priceDetail(tableNumber);
	}
	@Override
	public int finalInsert(int orderId,String status) {
		// TODO Auto-generated method stub
		
		return dao.finalInsert(orderId,status);
	}
	@Override
	public int completeCash(int tableNumber) {
		// TODO Auto-generated method stub
		return dao.completeCash(tableNumber);
	}
	@Override
	public OrderDto tempOrderDetail(int orderId) {
		// TODO Auto-generated method stub
		return dao.tempOrderDetail(orderId);
	}
	@Override
	public int orderForFinal(int tableNumber, int menuId) {
		// TODO Auto-generated method stub
		return dao.orderForFinal(tableNumber, menuId);
	}
	@Override
	public int FinalRefundInsert(int orderId) {
		// TODO Auto-generated method stub
		return dao.FinalRefundInsert( orderId);
	}
	
	
	
	
	
	
	
	
	
	
	@Override
	public List<FinalDto> todayList() {
		// TODO Auto-generated method stub
		return dao.todayList();
	}
	@Override
	public int insertMenu(MenuDto dto) {
		// TODO Auto-generated method stub
		
		return dao.insertMenu(dto);
	}
	@Override
	public MenuDto menuDetail(int menuId) {
		// TODO Auto-generated method stub
		return dao.menuDetail(menuId);
	}
	@Override
	public int menuDelete(int menuId) {
		// TODO Auto-generated method stub
		
		return dao.menuDelete(menuId);
	}

		
}
