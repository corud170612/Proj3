package com.jjjh.MyPage;

public class OrderList {
	private String Prodname;
	private String price;
	private String submon;
	private String subvol;
	private String caddr;
	private String storename;
	private String condition;
	
	public String getSubvol() {
		return subvol;
	}
	public void setSubvol(String subvol) {
		this.subvol = subvol;
	}
	public String getProdname() {
		return Prodname;
	}
	public void setProdname(String prodname) {
		Prodname = prodname;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getSubmon() {
		return submon;
	}
	public void setSubmon(String submon) {
		this.submon = submon;
	}
	public String getCaddr() {
		return caddr;
	}
	public void setCaddr(String caddr) {
		this.caddr = caddr;
	}
	public String getStorename() {
		return storename;
	}
	public void setStorename(String storename) {
		this.storename = storename;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	
	
}
