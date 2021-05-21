package com.jjjh.Status;

public class Sale {
   //상품번호
   private int no;
   //상품이름
   private String prodname;
   //상품가격
   private String prodprice;
   //구독개월
   private int submon;
   //구매자 이름
   private String name;
   //구매자 주소
   private String address;
   //원두 용량
   private int volume;
   //사업자등록 번호
   private String id;
   //처리상태
   private String condition;
   //브랜드명
   private String store;
   public String getStore() {
      return store;
   }
   public void setStore(String store) {
      this.store = store;
   }
   public String getCondition() {
      return condition;
   }
   public void setCondition(String condition) {
      this.condition = condition;
   }
   public int getNo() {
      return no;
   }
   public void setNo(int no) {
      this.no = no;
   }
   public String getProdname() {
      return prodname;
   }
   public void setProdname(String prodname) {
      this.prodname = prodname;
   }
   public String getProdprice() {
      return prodprice;
   }
   public void setProdprice(String prodprice) {
      this.prodprice = prodprice;
   }
   public int getSubmon() {
      return submon;
   }
   public void setSubmon(int submon) {
      this.submon = submon;
   }
   public String getName() {
      return name;
   }
   public void setName(String name) {
      this.name = name;
   }
   public String getAddress() {
      return address;
   }
   public void setAddress(String address) {
      this.address = address;
   }
   public int getVolume() {
      return volume;
   }
   public void setVolume(int volume) {
      this.volume = volume;
   }
   public String getId() {
      return id;
   }
   public void setId(String id) {
      this.id = id;
   }
   
}