package com.jjjh.Member;

import javax.servlet.http.HttpServletRequest;

public interface IMemberService {

	public void BmemberProc(Bmember bmember, HttpServletRequest request);

	public void CmemberProc(Cmember cmember);

	public int searchId(Cmember cmember);

}
