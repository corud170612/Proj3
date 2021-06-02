package com.jjjh.Store;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
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
import org.springframework.web.bind.annotation.ResponseBody;

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
		List<ProdRegis> category = iStoreServ.SelectCategory();
		model.addAttribute("category", category);
		return "forward:/index?formpath=storeMain";
   }
   @RequestMapping(value = "/{prodname}")
   public String paymentProc(Model model, @PathVariable String prodname, HttpSession session) {
		String loginCheck = (String) session.getAttribute("cid");
		String caddr = iStoreServ.SelectAddr(loginCheck);
     model.addAttribute("thisProdName", prodname);
      StoreDTO storeDTO = iStoreServ.getBmemberList(prodname);
      model.addAttribute("bmember", storeDTO);
      List<ProdDTO> storeLst2= iStoreServ.getProdList2(prodname);
      model.addAttribute("storeLst2", storeLst2);
		if (loginCheck == null) {
			model.addAttribute("plzLogin", "<script>alert('결제를 위해선 로그인이 필요합니다')</script>");
		}
		else if(caddr=="미입력"){
			model.addAttribute("plzLogin", "<script>alert('결제를 위해선 마이페이지에서 주소를 등록해주세요')</script>");
		}
     return "forward:/index?formpath=payment"; 
   }


   @RequestMapping(value = "/SelectCategory")
   public String SelectCategory(Model model, ConfirmCate confirmCate) {
     
      List<ProdRegis>selectLst = iStoreServ.ShowCategoryProd(confirmCate);
      if(selectLst.size()==0) {
    	  model.addAttribute("NoProduct", "상품 준비중입니다");
      }
      model.addAttribute("selectLst", selectLst);
     
      return "store/selectView";
   }
   @RequestMapping(value = "/importProc")
   public String importProc(Model model, HttpSession session, SaleDTO saleDTO) {

		String loginCheck = (String) session.getAttribute("cid");
		if (loginCheck != null) {
			
			saleDTO.setCid((String) session.getAttribute("cid"));
			saleDTO.setCaddr(iStoreServ.getCaddr(saleDTO.getCid()));
			saleDTO.setBid(iStoreServ.getBid(saleDTO.getProdname()));
			iStoreServ.insertSale(saleDTO);
			
			
		} else {
			return "forward:/index?formpath=Clogin";
		}

      return "forward:/index?formpath=subComplete";
   }


}