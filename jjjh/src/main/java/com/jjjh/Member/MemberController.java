package com.jjjh.Member;


import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("membership")
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	private IMemberService iMemberServ;
	@RequestMapping(value = "/member")
	public String index(Model model) {
		model.addAttribute("formpath", "member");
		return "forward:/index?formpath=member";
	}
	@RequestMapping(value = "/moveCustomer")
	public String moveCustomer(Model model) {
		model.addAttribute("formpath", "Cmember");
		return "forward:/index?formpath=Cmember";
	}
	@RequestMapping(value = "/moveBusiness")
	public String moveBusiness(Model model) {
		model.addAttribute("formpath", "Bmember");
		return "forward:/index?formpath=Bmember";
	}
	@RequestMapping(value = "/authForm")
	public String authForm() {
	
		return "member/authForm";
	}
	@RequestMapping(value = "/cardInfo")
	public String cardInfo() {
	
		return "member/cardInfo";
	}
	@RequestMapping(value = "/BmemberProc")
	public String BmemberProc(Bmember bmember, HttpServletRequest request) {

		iMemberServ.BmemberProc(bmember, request);
		return "forward:/index?formpath=Blogin";
	}
	@RequestMapping(value = "/CmemberProc")
	public String CmemberProc(Cmember cmember, Model model) {
		int ids= iMemberServ.searchId(cmember);
		logger.warn(ids+"");
		if(ids==0) {
		iMemberServ.CmemberProc(cmember);
		return "forward:/index?formpath=Clogin";
		}
		else if(cmember.getAddress()=="¹ÌÀÔ·Â") {
			
		}
		return "forward:/login/CloginProc";
	}
}
