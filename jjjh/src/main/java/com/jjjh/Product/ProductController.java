package com.jjjh.Product;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;





@Controller
@RequestMapping("product")
public class ProductController {

   private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
   @Autowired private IProductServ iProductServ;

   @RequestMapping(value = "/ProductProc")
   public String ProductProc(Model model, Product product, HttpServletRequest request) {
      logger.warn(product.getBid());
      String storename= iProductServ.TakeStorename(product.getBid());
      logger.warn("storename = "+storename);
      logger.warn("product.getBid = "+product.getBid());
      product.setStorename(storename);
      
      iProductServ.ProductProc(product, request);
      return "forward:/index?formpath=home";
   }

}