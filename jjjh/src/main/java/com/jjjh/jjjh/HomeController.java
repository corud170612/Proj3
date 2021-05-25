package com.jjjh.jjjh;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@RequestMapping(value = "/")
	public String index(Model model) {
		model.addAttribute("formpath", "home");
		return "index";
	}
	@RequestMapping(value = "/index")
	public String index(Model model,
			@RequestParam String formpath) {
		model.addAttribute("formpath", formpath);
		return "index";
	}
	@RequestMapping(value = "/home")
	public String home() {
		return "home";
	}
   @RequestMapping(value = "/login")
   public String login() {
      return "login/loginMain"; 
   }
   @RequestMapping(value = "/member")
   public String beforeForm() {
      return "member/beforeForm"; 
   }
   @RequestMapping(value = "/Cmember")
   public String Cmember() {
      return "member/Cmember"; 
   }
   @RequestMapping(value = "/Bmember")
   public String Bmember() {
      return "member/Bmember"; 
   }
   @RequestMapping(value = "/Clogin")
   public String Clogin() {
	   return "login/Clogin"; 
   }
   @RequestMapping(value = "/Blogin")
   public String Blogin() {
	   return "login/Blogin"; 
   }
   @RequestMapping(value = "/product")
   public String product() {
	   return "business/product"; 
   }

   @RequestMapping(value = "/storeMain")
   public String storeMain() {
	   return "store/storeMain"; 
   }
   @RequestMapping(value = "/payment")
   public String payment() {
	   return "store/payment"; 
   }
   @RequestMapping(value = "/status")
   public String status() {
	   return "status/statusForm"; 
   }
   @RequestMapping(value = "/tasteTest")
   public String tasteTest() {
      return "tasteTest/tasteTestForm"; 
   }
   @RequestMapping(value = "/tasteTestForm2")
   public String tasteTest2() {
      return "tasteTest/tasteTestForm2"; 
   }
   @RequestMapping(value = "/tasteTestForm3")
   public String tasteTest3() {
      return "tasteTest/tasteTestForm3"; 
   }
   @RequestMapping(value = "/tasteTestForm4")
   public String tasteTest4() {
      return "tasteTest/tasteTestForm4"; 
   }
   @RequestMapping(value = "/tasteTestForm5")
   public String tasteTest5() {
      return "tasteTest/tasteTestForm5"; 
   }
   @RequestMapping(value = "/tasteTestForm6")
   public String tasteTest6() {
      return "tasteTest/tasteTestForm6"; 
   }

   @RequestMapping(value = "/testSucessForm")
   public String testSucessForm() {
      return "tasteTest/testSucessForm"; 
   }
   @RequestMapping(value = "/subComplete")
   public String subComplete() {
      return "store/subComplete"; 
   }
   @RequestMapping(value = "/recipe")
   public String recipe() {
      return "recipe/recipemainForm"; 
   }
   @RequestMapping(value = "/recipe1")
   public String recipe1() {
      return "recipe/recipe1Form"; 
   }
   @RequestMapping(value = "/recipe2")
   public String recipe2() {
      return "recipe/recipe2Form"; 
   }
   @RequestMapping(value = "/recipe3")
   public String recipe3() {
      return "recipe/recipe3Form"; 
   }
   @RequestMapping(value = "/recipe4")
   public String recipe4() {
      return "recipe/recipe4Form"; 
   }
}
