package com.wjkil.myapp.dao;

import java.util.List;

import com.wjkil.myapp.dto.FinalDto;
import com.wjkil.myapp.dto.MenuDto;
import com.wjkil.myapp.dto.ModalDto;
import com.wjkil.myapp.dto.NowOrderDto;
import com.wjkil.myapp.dto.OrderDto;
import com.wjkil.myapp.dto.PriceDto;
import com.wjkil.myapp.dto.TableDto;

public interface OrderDao {

	
	public List<TableDto> tableList();
	TableDto tableDetail(int tableNumber);
	public List<MenuDto> menuList();
	List<OrderDto> orderList(int tableNumber);
	public int updateModalOrder(int tableNumber,int menuId);
	public int clearModalOrder(int tableNumber);
	public List<NowOrderDto>tableOrderList(int tableNumber);
	public int tableOrderUpdate(int tableNumber);
	public int order(int tableNumber, int menuId);
	List<OrderDto> orderFirstList();
	public int statusUpdate(int orderId);
	public int orderDelete(int orderId);
	public PriceDto priceDetail(int tableNumber);
	public int finalInsert(int orderId, String status);
	public int completeCash(int tableNumber);
	public OrderDto tempOrderDetail(int orderId);
	public int orderForFinal(int tableNumber, int menuId);
	public int FinalRefundInsert(int orderId);
	
	
	public List<FinalDto> todayList();
	public int insertMenu(MenuDto dto);
	public MenuDto menuDetail(int menuId);
	public int menuDelete(int menuId);
}
