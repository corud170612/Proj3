package com.jjjh.Member;

//사업자 회원가입 
public class Bmember {

	 // 사업자등록 번호 
	 private String Bid;
	
	 // 비번 
	 private String Bpw;
	
	 // 대표이름 
	 private String name;
	
	 // 상호명 
	 private String store;
	
	 // 매장 주소 
	 private String zipcode;
	
	 // 매장 전화번호 
	 private String num;

	public String getBid() {
		return Bid;
	}

	public void setBid(String bid) {
		Bid = bid;
	}

	public String getBpw() {
		return Bpw;
	}

	public void setBpw(String bpw) {
		Bpw = bpw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getStore() {
		return store;
	}

	public void setStore(String store) {
		this.store = store;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}
	
	
}