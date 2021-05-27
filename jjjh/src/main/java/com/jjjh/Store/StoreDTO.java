package com.jjjh.Store;

public class StoreDTO {

    // 사업자등록번호 
    private String bid;

    // 가게 이름 
    private String storename;

    // 가게 로고1 
    private String storelogo1;

    // 가게 로고2 
    private String storelogo2;

    // 가게 소개글 
    private String storeintro;

    // 가게 번호 
    private String storeph;

    // 가게 주소 
    private String storeaddr;
    
    // 상품 설명
    private String prodintro;
    private String prodimg1;

   public String getProdimg1() {
      return prodimg1;
   }

   public void setProdimg1(String prodimg1) {
      this.prodimg1 = prodimg1;
   }

public String getBid() {
      return bid;
   }

   public void setBid(String bid) {
      this.bid = bid;
   }

   public String getStorename() {
      return storename;
   }

   public void setStorename(String storename) {
      this.storename = storename;
   }

   public String getStorelogo1() {
      return storelogo1;
   }

   public void setStorelogo1(String storelogo1) {
      this.storelogo1 = storelogo1;
   }

   public String getStorelogo2() {
      return storelogo2;
   }

   public void setStorelogo2(String storelogo2) {
      this.storelogo2 = storelogo2;
   }

   public String getStoreintro() {
      return storeintro;
   }

   public void setStoreintro(String storeintro) {
      this.storeintro = storeintro;
   }

   public String getStoreph() {
      return storeph;
   }

   public void setStoreph(String storeph) {
      this.storeph = storeph;
   }

   public String getStoreaddr() {
      return storeaddr;
   }

   public void setStoreaddr(String storeaddr) {
      this.storeaddr = storeaddr;
   }

   public String getProdintro() {
      return prodintro;
   }

   public void setProdintro(String prodintro) {
      this.prodintro = prodintro;
   }

}