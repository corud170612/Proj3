package com.jjjh.Product;

import javax.servlet.http.HttpServletRequest;

public interface IProductServ {

   public void ProductProc(Product product, HttpServletRequest request);

   public String TakeStorename(String bid);

}