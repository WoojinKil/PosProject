package com.wjkil.myapp.dto;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class OrderDto {

	private int orderId;
	private int menuId;
	private int tableNumber;
	private  String status;
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm", timezone="Asia/Seoul")
	private  Date orderDate;
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm", timezone="Asia/Seoul")
	private Date cashDate;
	private String menuName;
	private int menuPrice;
	


	public OrderDto(int orderId, int menuId, int tableNumber, String status, Date orderDate, Date cashDate,
			String menuName, int menuPrice) {
		super();
		this.orderId = orderId;
		this.menuId = menuId;
		this.tableNumber = tableNumber;
		this.status = status;
		this.orderDate = orderDate;
		this.cashDate = cashDate;
		this.menuName = menuName;
		this.menuPrice = menuPrice;
	}
	public Date getCashDate() {
		return cashDate;
	}
	public void setCashDate(Date cashDate) {
		this.cashDate = cashDate;
	}
	public int getMenuPrice() {
		return menuPrice;
	}
	public void setMenuPrice(int menuPrice) {
		this.menuPrice = menuPrice;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getMenuId() {
		return menuId;
	}
	public void setMenuId(int menuId) {
		this.menuId = menuId;
	}
	public int getTableNumber() {
		return tableNumber;
	}
	public void setTableNumber(int tableNumber) {
		this.tableNumber = tableNumber;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public OrderDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
