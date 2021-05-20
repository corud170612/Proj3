package com.jjjh.TasteTest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("tasteTest")
public class TasteTestController {
   private static final Logger logger = LoggerFactory.getLogger(TasteTestController.class);
   
   @RequestMapping(value = "/tasteTestForm2")
   public String tasteTestForm2(Model model) {
      model.addAttribute("formpath", "tasteTestForm2");
      return "forward:/index?formpath=tasteTestForm2";
   }
   @RequestMapping(value = "/tasteTestForm3")
   public String tasteTestForm3(Model model) {
      model.addAttribute("formpath", "tasteTestForm3");
      return "forward:/index?formpath=tasteTestForm3";
   }
   @RequestMapping(value = "/tasteTestForm4")
   public String tasteTestForm4(Model model) {
      model.addAttribute("formpath", "tasteTestForm4");
      return "forward:/index?formpath=tasteTestForm4";
   }
   @RequestMapping(value = "/tasteTestForm5")
   public String tasteTestForm5(Model model) {
      model.addAttribute("formpath", "tasteTestForm5");
      return "forward:/index?formpath=tasteTestForm5";
   }
   @RequestMapping(value = "/tasteTestForm6")
   public String tasteTestForm6(Model model) {
      model.addAttribute("formpath", "tasteTestForm6");
      return "forward:/index?formpath=tasteTestForm6";
   }
   @RequestMapping(value = "/tasteTestForm7")
   public String tasteTestForm7(Model model) {
      model.addAttribute("formpath", "tasteTestForm7");
      return "forward:/index?formpath=tasteTestForm7";
   }
   @RequestMapping(value = "/testSucessForm")
   public String testSucessForm(Model model) {
      model.addAttribute("formpath", "testSucessForm");
      return "forward:/index?formpath=testSucessForm";
   }
}