package com.wjkil.myapp.dto;

public class PriceDto {

	private int tableNumber;
	private int sumPrice;

	
	public int getTableNumber() {
		return tableNumber;
	}

	public void setTableNumber(int tableNumber) {
		this.tableNumber = tableNumber;
	}

	public int getSumPrice() {
		return sumPrice;
	}

	public void setSumPrice(int sumPrice) {
		this.sumPrice = sumPrice;
	}

	public PriceDto(int tableNumber, int sumPrice) {
		super();
		this.tableNumber = tableNumber;
		this.sumPrice = sumPrice;
	}

	public PriceDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
