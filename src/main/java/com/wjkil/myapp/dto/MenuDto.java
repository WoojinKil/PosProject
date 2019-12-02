package com.wjkil.myapp.dto;

public class MenuDto {

	private int menuId;
	private String menuName;
	private String menuExplain;
	private int menuPrice;
	public int getMenuId() {
		return menuId;
	}
	public void setMenuId(int menuId) {
		this.menuId = menuId;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public String getMenuExplain() {
		return menuExplain;
	}
	public void setMenuExplain(String menuExplain) {
		this.menuExplain = menuExplain;
	}
	public int getMenuPrice() {
		return menuPrice;
	}
	public void setMenuPrice(int menuPrice) {
		this.menuPrice = menuPrice;
	}
	public MenuDto(int menuId, String menuName, String menuExplain, int menuPrice) {
		super();
		this.menuId = menuId;
		this.menuName = menuName;
		this.menuExplain = menuExplain;
		this.menuPrice = menuPrice;
	}
	public MenuDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
