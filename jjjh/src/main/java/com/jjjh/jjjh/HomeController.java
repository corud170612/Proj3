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
   @RequestMapping(value = "/status")
   public String status() {
	   return "status/statusForm"; 
   }
}
