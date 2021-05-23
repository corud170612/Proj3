package com.jjjh.Product;

import java.util.Map;

public interface ProductDao {

   public void ProductProc(Product product);

   public void AttachFile(Map<String, String> fileMap);

   public String TakeStorename(String bid);

public Logoimg getStrorlogo(String bid);


}