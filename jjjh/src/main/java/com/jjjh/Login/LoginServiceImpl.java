package com.jjjh.Login;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jin.mail.SHA;
import com.jjjh.Member.Bmember;
import com.jjjh.Member.Cmember;

@Service
public class LoginServiceImpl implements ILoginService{
	private static final Logger logger = LoggerFactory.getLogger(LoginServiceImpl.class);
	@Autowired private ILoginDao iBloginDao;
	@Autowired private HttpSession session;

	
	  private void setSession(int cnt, String id) { 
		  if(cnt==1) {
			  session.setAttribute("id", id); 
	} }
	

//	@Override
//	public int BloginProc(Blogin blogin) {
//		blogin.setPw(new SHA().encryptSHA512(blogin.getPw()));
//		int cnt = iBloginDao.BloginProc(blogin);
//		logger.warn(blogin.getId());
//		logger.warn(blogin.getPw());
//		return cnt;
//	}
	
	@Override
	public int BloginProc(Bmember bmember) {
		bmember.setBpw(bmember.getBid());
		int cnt = iBloginDao.BloginProc(bmember);
		setSession(cnt, bmember.getBid());
		logger.warn(bmember.getBid());
		logger.warn(bmember.getBpw());
		return cnt;
	}


	@Override
	public int CloginProc(Cmember cmember) {
		cmember.setCpw(cmember.getCid());
		int cnt = iBloginDao.CloginProc(cmember);
		setSession(cnt, cmember.getCid());
		logger.warn(cmember.getCid());
		logger.warn(cmember.getCpw());
		return cnt;
	}


}
