package com.jjjh.MyPage;



import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;




@RequestMapping("mypage")
@Controller
public class MyPageController {
	
	private static final Logger logger = LoggerFactory.getLogger(MyPageController.class);
	@Autowired
	private IMyPageService iMyPageServ;
   @RequestMapping(value = "/ShowOrder")
   public String ShowOrder(Model model, HttpSession session) {
	   String cid = (String)session.getAttribute("cid");
	   logger.warn(cid);
	   MyInfo myInfo = iMyPageServ.ShowMyInfo(cid);
	   List<OrderList>OrderLst = iMyPageServ.ShowOrderList(cid);
	   logger.warn(OrderLst.size()+"사이즈");
	   if(OrderLst.size()==0) {
		   model.addAttribute("noList", "주문한 내역이 없습니다.");
	   }
	   model.addAttribute("OrderLst", OrderLst);
	   model.addAttribute("myinfo", myInfo);
      return "forward:/index?formpath=myPage"; 
   }
   @RequestMapping(value = "/ModifyInfo")
   public String ModifyInfo(Model model, HttpSession session) {

      return "forward:/index?formpath=modify"; 
   }
   
   @RequestMapping(value = "/ModifyProc")
   public String ModifyProc(Model model, HttpSession session, MyInfo myInfo) {
	  
	   myInfo.setLoginId((String)session.getAttribute("cid"));
	   iMyPageServ.ModifyProc(myInfo);
	   model.addAttribute("script", "<script>alert('다시 로그인해주세요.')</script>");
      return "forward:/login/logout"; 
   }

   
   @RequestMapping(value = "/CancelOrder{prodname}")
   public String CancelOrder(Model model, HttpSession session, @PathVariable String prodname) {
	   MyInfo myInfo = new MyInfo();
	   myInfo.setLoginId((String)session.getAttribute("cid"));
	   myInfo.setCname(prodname);
	   iMyPageServ.CancelOrder(myInfo);
	
      return "forward:/mypage/ShowOrder"; 
   }
   
   
}
