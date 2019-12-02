package com.wjkil.myapp.dto;

public class NowOrderDto {

	private int nowOrderId;
	private int nowMenuId;
	private int nowMenuCount;
	private int nowTableNumber;
	private int nowPrice;
	private String nowMenuName;

	
	
	public NowOrderDto(int nowOrderId, int nowMenuId, int nowMenuCount, int nowTableNumber, int nowPrice,
			String nowMenuName) {
		super();
		this.nowOrderId = nowOrderId;
		this.nowMenuId = nowMenuId;
		this.nowMenuCount = nowMenuCount;
		this.nowTableNumber = nowTableNumber;
		this.nowPrice = nowPrice;
		this.nowMenuName = nowMenuName;
	}
	public int getNowPrice() {
		return nowPrice;
	}
	public void setNowPrice(int nowPrice) {
		this.nowPrice = nowPrice;
	}
	public String getNowMenuName() {
		return nowMenuName;
	}
	public void setNowMenuName(String nowMenuName) {
		this.nowMenuName = nowMenuName;
	}
	public int getNowOrderId() {
		return nowOrderId;
	}
	public void setNowOrderId(int nowOrderId) {
		this.nowOrderId = nowOrderId;
	}
	public int getNowMenuId() {
		return nowMenuId;
	}
	public void setNowMenuId(int nowMenuId) {
		this.nowMenuId = nowMenuId;
	}
	public int getNowMenuCount() {
		return nowMenuCount;
	}
	public void setNowMenuCount(int nowMenuCount) {
		this.nowMenuCount = nowMenuCount;
	}
	public int getNowTableNumber() {
		return nowTableNumber;
	}
	public void setNowTableNumber(int nowTableNumber) {
		this.nowTableNumber = nowTableNumber;
	}

	public NowOrderDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
