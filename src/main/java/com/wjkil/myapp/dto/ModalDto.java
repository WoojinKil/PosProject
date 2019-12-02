package com.wjkil.myapp.dto;

public class ModalDto {

	private int modalTableNumber;
	private int modalMenuId;
	private String modalMenuName;
	private int modalMenuCount;
	private String modalMenuExplain;
	private int modalMenuPrice;
	public int getModalTableNumber() {
		return modalTableNumber;
	}
	public void setModalTableNumber(int modalTableNumber) {
		this.modalTableNumber = modalTableNumber;
	}
	public int getModalMenuId() {
		return modalMenuId;
	}
	public void setModalMenuId(int modalMenuId) {
		this.modalMenuId = modalMenuId;
	}
	public String getModalMenuName() {
		return modalMenuName;
	}
	public void setModalMenuName(String modalMenuName) {
		this.modalMenuName = modalMenuName;
	}
	public int getModalMenuCount() {
		return modalMenuCount;
	}
	public void setModalMenuCount(int modalMenuCount) {
		this.modalMenuCount = modalMenuCount;
	}
	public String getModalMenuExplain() {
		return modalMenuExplain;
	}
	public void setModalMenuExplain(String modalMenuExplain) {
		this.modalMenuExplain = modalMenuExplain;
	}
	public int getModalMenuPrice() {
		return modalMenuPrice;
	}
	public void setModalMenuPrice(int modalMenuPrice) {
		this.modalMenuPrice = modalMenuPrice;
	}
	public ModalDto(int modalTableNumber, int modalMenuId, String modalMenuName, int modalMenuCount,
			String modalMenuExplain, int modalMenuPrice) {
		super();
		this.modalTableNumber = modalTableNumber;
		this.modalMenuId = modalMenuId;
		this.modalMenuName = modalMenuName;
		this.modalMenuCount = modalMenuCount;
		this.modalMenuExplain = modalMenuExplain;
		this.modalMenuPrice = modalMenuPrice;
	}
	public ModalDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	
}
