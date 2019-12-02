package com.wjkil.myapp.dto;

public class TempOrderDto {

	private int tempOrderId;
	private int tempMenuId;
	private int tempMenuCount;
	private int tempTableNumber;
	public int getTempOrderId() {
		return tempOrderId;
	}
	public void setTempOrderId(int tempOrderId) {
		this.tempOrderId = tempOrderId;
	}
	public int getTempMenuId() {
		return tempMenuId;
	}
	public void setTempMenuId(int tempMenuId) {
		this.tempMenuId = tempMenuId;
	}
	public int getTempMenuCount() {
		return tempMenuCount;
	}
	public void setTempMenuCount(int tempMenuCount) {
		this.tempMenuCount = tempMenuCount;
	}
	public int getTempTableNumber() {
		return tempTableNumber;
	}
	public void setTempTableNumber(int tempTableNumber) {
		this.tempTableNumber = tempTableNumber;
	}
	public TempOrderDto(int tempOrderId, int tempMenuId, int tempMenuCount, int tempTableNumber) {
		super();
		this.tempOrderId = tempOrderId;
		this.tempMenuId = tempMenuId;
		this.tempMenuCount = tempMenuCount;
		this.tempTableNumber = tempTableNumber;
	}
	public TempOrderDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
