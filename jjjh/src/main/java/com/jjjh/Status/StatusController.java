package com.jjjh.Status;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;



@Controller
@RequestMapping("status")
public class StatusController {
   private static final Logger logger = LoggerFactory.getLogger(StatusController.class);
   @Autowired
   private IStatusService iStatusServ;

   @RequestMapping(value = "/statusProc")
   public String statusProc(Model model, HttpSession session) {
      String bid = (String)session.getAttribute("bid");
      logger.warn(bid);
      int number = iStatusServ.searchNum(bid);
      List<Sale>saleLst= iStatusServ.getList(bid);
      model.addAttribute("saleLst", saleLst);
      model.addAttribute("searchNum", number);
      return "forward:/index?formpath=status";
   }
   
   @RequestMapping(value = "/ConditionSearch")
   public String ConditionSearch(Model model, HttpSession session, SearchCondition searchCondition) {
      String bid = (String)session.getAttribute("bid");
      searchCondition.setBid(bid);
      List<Sale>saleLst=iStatusServ.ConditionSearch(searchCondition);
      model.addAttribute("saleLst", saleLst);
      int searchNum = iStatusServ.searchNum(searchCondition);
      model.addAttribute("searchNum", searchNum);
      return "forward:/index?formpath=status";
   }

}