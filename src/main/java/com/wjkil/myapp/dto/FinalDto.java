package com.wjkil.myapp.dto;

import java.sql.Date;
import java.sql.Timestamp;

import com.fasterxml.jackson.annotation.JsonFormat;

public class FinalDto {

	private int finalId;
	private int orderId;
	private int menuId;
	private int tableNumber;
	private  String status;
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm", timezone="Asia/Seoul") 
	private  Timestamp orderDate;
	private String menuName;
	private int menuPrice;
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm", timezone="Asia/Seoul")	 
	private Timestamp cashDate;
	
	public FinalDto(int finalId, int orderId, int menuId, int tableNumber, String status, Timestamp orderDate,
			String menuName, int menuPrice, Timestamp cashDate) {
		super();
		this.finalId = finalId;
		this.orderId = orderId;
		this.menuId = menuId;
		this.tableNumber = tableNumber;
		this.status = status;
		this.orderDate = orderDate;
		this.menuName = menuName;
		this.menuPrice = menuPrice;
		this.cashDate = cashDate;
	}
	public int getFinalId() {
		return finalId;
	}
	public void setFinalId(int finalId) {
		this.finalId = finalId;
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
	public Timestamp getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Timestamp orderDate) {
		this.orderDate = orderDate;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public int getMenuPrice() {
		return menuPrice;
	}
	public void setMenuPrice(int menuPrice) {
		this.menuPrice = menuPrice;
	}

	public FinalDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Timestamp getCashDate() {
		return cashDate;
	}
	public void setCashDate(Timestamp cashDate) {
		this.cashDate = cashDate;
	}
	
	
}
