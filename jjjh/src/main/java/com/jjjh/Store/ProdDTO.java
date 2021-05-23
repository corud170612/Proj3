package com.jjjh.Store;
//제품등록 
public class ProdDTO {

 // 제품명 
 private String prodname;

 // 맛과향 
 private String flavor;

 // 가격 
 private String price;

public String getProdname() {
   return prodname;
}

public void setProdname(String prodname) {
   this.prodname = prodname;
}

public String getFlavor() {
   return flavor;
}

public void setFlavor(String flavor) {
   this.flavor = flavor;
}

public String getPrice() {
   return price;
}

public void setPrice(String price) {
   this.price = price;
}

}