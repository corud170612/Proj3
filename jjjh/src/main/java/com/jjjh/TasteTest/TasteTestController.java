package com.jjjh.TasteTest;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping("tasteTest")
public class TasteTestController {
   private static final Logger logger = LoggerFactory.getLogger(TasteTestController.class);
   @Autowired
   private TasteTestService tasteTestService;
   TasteTestDTO tasteTest = new TasteTestDTO();
   Test test = new Test();
   
   @RequestMapping(value = "/tasteTestForm2")
   public String tasteTestForm2(Model model, @RequestParam String test1) {
     model.addAttribute("formpath", "tasteTestForm2");
      tasteTest.setCaffeine(test1);
   
      return "forward:/index?formpath=tasteTestForm2";
   }
   @RequestMapping(value = "/tasteTestForm3")
   public String tasteTestForm3(Model model, @RequestParam String test1) {
      model.addAttribute("formpath", "tasteTestForm3");
      tasteTest.setDrip(test1);

      return "forward:/index?formpath=tasteTestForm3";
   }
   @RequestMapping(value = "/tasteTestForm4")
   public String tasteTestForm4(Model model, @RequestParam String test1) {
      model.addAttribute("formpath", "tasteTestForm4");
      tasteTest.setHeavy(test1);
   
      return "forward:/index?formpath=tasteTestForm4";
   }
   @RequestMapping(value = "/tasteTestForm5")
   public String tasteTestForm5(Model model, @RequestParam String test1) {
      model.addAttribute("formpath", "tasteTestForm5");
      tasteTest.setFlavor(test1);
 
      return "forward:/index?formpath=tasteTestForm5";
   }
   @RequestMapping(value = "/tasteTestForm6")
   public String tasteTestForm6(Model model, @RequestParam String test1) {
      model.addAttribute("formpath", "tasteTestForm6");
      tasteTest.setAcidity(test1);
 
      return "forward:/index?formpath=tasteTestForm6";
   }
  
   @RequestMapping(value = "/testSucessForm")
   public String testSucessForm(Model model, @RequestParam String test1) {
     model.addAttribute("formpath", "testSucessForm");
     tasteTest.setPricerange(test1);
     logger.warn(tasteTest.getAcidity());
     logger.warn(tasteTest.getHeavy());
     logger.warn(tasteTest.getCaffeine());
     logger.warn(tasteTest.getDrip());
     logger.warn(tasteTest.getFlavor());
     logger.warn(tasteTest.getPricerange());
      List<Test>testLst = tasteTestService.tasteResult(tasteTest);
      if(testLst.size()==0) {
     	 model.addAttribute("NoTest", "<br/><br/><br/>선택지에 맞는 상품이<br/> 판매준비중입니다");
     	 return "forward:/index?formpath=testSucessForm";
      }
      model.addAttribute("msg","꼭 맞는 커피를 찾았어요");
      model.addAttribute("drip", tasteTest.getDrip()+"으로 내려마시기 좋고</br>");
      model.addAttribute("heavy", tasteTest.getHeavy()+" 즐길 수 있는</br>");
      model.addAttribute("flavor", tasteTest.getFlavor()+"  커피를 추천해요.");
     logger.warn(test.getProdimg1());
    
      model.addAttribute("testLst", testLst);
      return "forward:/index?formpath=testSucessForm";
   }
}