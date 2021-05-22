package com.jjjh.Product;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Service
public class ProductServiceImpl implements IProductServ {
   @Autowired
   private ProductDao productDao;
   private final String UPLOADPATH = "/resources/upload/";

   @Override
   public void ProductProc(Product product, HttpServletRequest request) {
      productDao.ProductProc(product);
      

         List<Map<String, String>> fileLst = Upload(request);
         
         for(Map<String, String> fileMap : fileLst) {
            fileMap.put("prodName", product.getProdName());
            productDao.AttachFile(fileMap);
         }
   }
   

   private List<Map<String, String>> Upload(HttpServletRequest request) {
      MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest)request;
      Iterator<String> iterator = multiRequest.getFileNames();
      MultipartFile multipartFile = null;
      
      List<Map<String, String>> fileLst = new ArrayList<Map<String,String>>();
      
      while(iterator.hasNext()){
         String fieldName = iterator.next();
         multipartFile = multiRequest.getFile(fieldName);
           
         if(multipartFile.isEmpty() == false){
            Map<String, String> fileMap = new HashMap<String, String>();
            
            String originFile = multipartFile.getOriginalFilename();
            String systemFile = originFile+System.currentTimeMillis();
            fileMap.put("prodimg2", originFile);
            fileMap.put("prodimg1", systemFile);
            
            fileLst.add(fileMap);
            //   ех 
            String filePath = multiRequest.getSession().getServletContext().getRealPath("/");
            try {
               DownloadFile(multipartFile.getInputStream(), filePath, systemFile);
            } catch (IOException e) {
               e.printStackTrace();
            }
         }
      }
      
      return fileLst;
   }
    
   private void DownloadFile(InputStream inputStream, String filePath, String fileName) {
      File file = new File(filePath + UPLOADPATH + fileName);
      try {
         Files.copy(inputStream, file.toPath());
      } catch (IOException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
   }
    
   
   @Override
   public String TakeStorename(String bid) {
      String storename = productDao.TakeStorename(bid);
      return storename;
   }
    
}