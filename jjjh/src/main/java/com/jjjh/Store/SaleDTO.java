package com.jjjh.Store;

//판매현황 
public class SaleDTO {

 // 판매 번호 
 private Integer no;

 // 상품명 
 private String prodname;

 // 상품 가격 
 private String price;

 // 구독 개월수 
 private String submon;

 // 구독 용량 
 private String subvol;

 // 분쇄 유무 
 private String grinding;

 // 구매자 아이디 
 private String cid;

 // 가게 이름 
 private String storename;

 // 상태 
 private String condition;

 // 구매자 주소 
 private String caddr;

 // 사업자등록번호 
 private String bid;

 public Integer getNo() {
     return no;
 }

 public void setNo(Integer no) {
     this.no = no;
 }

 public String getProdname() {
     return prodname;
 }

 public void setProdname(String prodname) {
     this.prodname = prodname;
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

 public String getSubvol() {
     return subvol;
 }

 public void setSubvol(String subvol) {
     this.subvol = subvol;
 }

 public String getGrinding() {
     return grinding;
 }

 public void setGrinding(String grinding) {
     this.grinding = grinding;
 }

 public String getCid() {
     return cid;
 }

 public void setCid(String cid) {
     this.cid = cid;
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

 public String getCaddr() {
     return caddr;
 }

 public void setCaddr(String caddr) {
     this.caddr = caddr;
 }

 public String getBid() {
     return bid;
 }

 public void setBid(String bid) {
     this.bid = bid;
 }
}