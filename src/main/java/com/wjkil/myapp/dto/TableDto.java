package com.wjkil.myapp.dto;

public class TableDto {

	private int tableNumber;
	private int tableCap;
	private int tablePrice;
	
	public TableDto(int tableNumber, int tableCap, int tablePrice) {
		super();
		this.tableNumber = tableNumber;
		this.tableCap = tableCap;
		this.tablePrice = tablePrice;
	}

	public int getTableNumber() {
		return tableNumber;
	}

	public void setTableNumber(int tableNumber) {
		this.tableNumber = tableNumber;
	}

	public int getTableCap() {
		return tableCap;
	}

	public void setTableCap(int tableCap) {
		this.tableCap = tableCap;
	}

	public int getTablePrice() {
		return tablePrice;
	}

	public void setTablePrice(int tablePrice) {
		this.tablePrice = tablePrice;
	}

	public TableDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
}
