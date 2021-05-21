package com.jjjh.Store;

//제품등록 
public class ProdRegis {

 // 제품명 
 private String prodname;

 // 제품이미지 
 private String prodimg;

 // 카페인 
 private String caffeine;

 // 드립방식 
 private String drip;

 // 무게감 
 private String body;

 // 맛과향 
 private String flavor;

 // 산미 
 private String acidity;

 // 원산지 
 private String origin;

 // 가격 
 private String price;

 // 가격대 
 private String pricerange;

 // 제품소개 
 private String introduce;

 public String getProdname() {
     return prodname;
 }

 public void setProdname(String prodname) {
     this.prodname = prodname;
 }

 public String getProdimg() {
     return prodimg;
 }

 public void setProdimg(String prodimg) {
     this.prodimg = prodimg;
 }

 public String getCaffeine() {
     return caffeine;
 }

 public void setCaffeine(String caffeine) {
     this.caffeine = caffeine;
 }

 public String getDrip() {
     return drip;
 }

 public void setDrip(String drip) {
     this.drip = drip;
 }

 public String getBody() {
     return body;
 }

 public void setBody(String body) {
     this.body = body;
 }

 public String getFlavor() {
     return flavor;
 }

 public void setFlavor(String flavor) {
     this.flavor = flavor;
 }

 public String getAcidity() {
     return acidity;
 }

 public void setAcidity(String acidity) {
     this.acidity = acidity;
 }

 public String getOrigin() {
     return origin;
 }

 public void setOrigin(String origin) {
     this.origin = origin;
 }

 public String getPrice() {
     return price;
 }

 public void setPrice(String price) {
     this.price = price;
 }

 public String getPricerange() {
     return pricerange;
 }

 public void setPricerange(String pricerange) {
     this.pricerange = pricerange;
 }

 public String getIntroduce() {
     return introduce;
 }

 public void setIntroduce(String introduce) {
     this.introduce = introduce;
 }

 // Prodregis 모델 복사
 public void CopyData(ProdRegis param)
 {
     this.prodname = param.getProdname();
     this.prodimg = param.getProdimg();
     this.caffeine = param.getCaffeine();
     this.drip = param.getDrip();
     this.body = param.getBody();
     this.flavor = param.getFlavor();
     this.acidity = param.getAcidity();
     this.origin = param.getOrigin();
     this.price = param.getPrice();
     this.pricerange = param.getPricerange();
     this.introduce = param.getIntroduce();
 }
}