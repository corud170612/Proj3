package com.jjjh.Member;

//개인 멤버 
public class Cmember {

	 // 아이디 
	 private String Cid;
	
	 // 비밀번호 
	 private String Cpw;
	
	 // 이름 
	 private String name;
	
	 // 전화번호 
	 private String ph;
	
	 // 우편번호 
	 private String zipcode;
	
	 // 주소 
	 private String address;
	
	 // 카드번호 
	 private String cardnumber;
	
	 // 은행이름 
	 private String bank;
	
	 // 만기일(월/년) 
	 private String expirationdate;

	public String getCid() {
		return Cid;
	}

	public void setCid(String cid) {
		Cid = cid;
	}

	public String getCpw() {
		return Cpw;
	}

	public void setCpw(String cpw) {
		Cpw = cpw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPh() {
		return ph;
	}

	public void setPh(String ph) {
		this.ph = ph;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCardnumber() {
		return cardnumber;
	}

	public void setCardnumber(String cardnumber) {
		this.cardnumber = cardnumber;
	}

	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public String getExpirationdate() {
		return expirationdate;
	}

	public void setExpirationdate(String expirationdate) {
		this.expirationdate = expirationdate;
	}
	

}