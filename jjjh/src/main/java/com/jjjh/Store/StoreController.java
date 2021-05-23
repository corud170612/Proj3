package com.jjjh.Store;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jjjh.Member.Bmember;


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
   @RequestMapping(value = "/{prodname}")
   public String paymentProc(Model model, @PathVariable String prodname) {

     model.addAttribute("thisProdName", prodname);
      StoreDTO storeDTO = iStoreServ.getBmemberList(prodname);
      model.addAttribute("bmember", storeDTO);
      List<ProdDTO> storeLst2= iStoreServ.getProdList2(prodname);
      model.addAttribute("storeLst2", storeLst2);
     return "forward:/index?formpath=payment"; 
   }

   @RequestMapping(value = "/subComplete")
   public String subComplete() {

      return "forward:/index?formpath=subComplete";
   }
}