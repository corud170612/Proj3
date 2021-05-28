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

   
     private void setSessionB(int cntB, String bid) { 
        if(cntB==1) {
           session.setAttribute("bid", bid); 
           } 
     }
     private void setSessionC(int cntC, String cid) { 
        if(cntC==1) {
           session.setAttribute("cid", cid); 
           } 
     }
   

//   @Override
//   public int BloginProc(Blogin blogin) {
//      blogin.setPw(new SHA().encryptSHA512(blogin.getPw()));
//      int cnt = iBloginDao.BloginProc(blogin);
//      logger.warn(blogin.getId());
//      logger.warn(blogin.getPw());
//      return cnt;
//   }
   
   @Override
   public int BloginProc(Bmember bmember) {
      bmember.setBpw(bmember.getBpw());
      int cntB = iBloginDao.BloginProc(bmember);
      setSessionB(cntB, bmember.getBid());
      logger.warn(bmember.getBid());
      logger.warn(bmember.getBpw());
      return cntB;
   }


   @Override
   public int CloginProc(Cmember cmember) {
      cmember.setCpw(cmember.getCpw());
      int cntC = iBloginDao.CloginProc(cmember);
      setSessionC(cntC, cmember.getCid());
      logger.warn(cmember.getCid());
      logger.warn(cmember.getCpw());
      return cntC;
   }


}