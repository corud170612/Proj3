package com.jjjh.TasteTest;

//제품등록 
public class TasteTestDTO {

// 카페인 
private String caffeine;

// 드립방식 
private String drip;

// 무게감 
private String heavy;

// 맛과향 
private String flavor;

// 산미 
private String acidity;


// 가격대 
private String pricerange;


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


public String getHeavy() {
   return heavy;
}


public void setHeavy(String heavy) {
   this.heavy = heavy;
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


public String getPricerange() {
   return pricerange;
}


public void setPricerange(String pricerange) {
   this.pricerange = pricerange;
}


}