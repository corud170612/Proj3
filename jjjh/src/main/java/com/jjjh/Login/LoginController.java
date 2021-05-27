package com.jjjh.Login;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jjjh.Member.Bmember;
import com.jjjh.Member.Cmember;

@Controller
@RequestMapping("login")
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	@Autowired private ILoginService iBloginServ;
	private final int LOGINSUCCESS = 1;

	
	@RequestMapping(value = "BloginProc")
	public String BloginProc(Model model, Bmember bmember) {
		int loginResult = iBloginServ.BloginProc(bmember);
		if(loginResult==LOGINSUCCESS) {
			return "forward:/index?formpath=home";
		}
		model.addAttribute("script", "<script>alert('아이디 또는 패스워드가 잘못입력되었습니다')</script>");
		return "forward:/index?formpath=Blogin";
	}
	
	@RequestMapping(value = "CloginProc")
	public String CloginProc(Model model, Cmember cmember) {
		int loginResult = iBloginServ.CloginProc(cmember);
		logger.warn(cmember.getCid());
		logger.warn(cmember.getCpw());
		if(loginResult==LOGINSUCCESS) {
			return "forward:/index?formpath=home";
		}
		
		model.addAttribute("script", "<script>alert('아이디 또는 패스워드가 잘못입력되었습니다')</script>");
		return "forward:/index?formpath=Clogin";
	}
	@RequestMapping(value = "logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "forward:/index?formpath=home";
	}
	

}
