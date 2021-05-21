package com.jjjh.Store;



import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("store")
public class StoreController {
   private static final Logger logger = LoggerFactory.getLogger(StoreController.class);
   @Autowired
   private IStoreService iStoreServ;

   @RequestMapping(value = "/storeProc")
   public String storeProc(Model model, HttpSession session) {
      List<ProdRegis> storeLst= iStoreServ.getProdList();
      model.addAttribute("storeLst", storeLst);
      return "forward:/index?formpath=storeMain";
   }
   

}