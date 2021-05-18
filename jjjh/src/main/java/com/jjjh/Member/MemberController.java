package com.jjjh.Member;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("membership")
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	@RequestMapping(value = "/member")
	public String index(Model model) {
		model.addAttribute("formpath", "member");
		return "forward:/index?formpath=member";
	}
	@RequestMapping(value = "moveCustomer")
	public String moveCustomer(Model model) {
		return "member/Cmember";
	}
	@RequestMapping(value = "moveBusiness")
	public String moveBusiness(Model model) {
		return "member/Bmember";
	}
	
}
