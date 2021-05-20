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
}