package com.jjjh.Login;

import com.jjjh.Member.Bmember;
import com.jjjh.Member.Cmember;

public interface ILoginService {

	public int BloginProc(Bmember bmember);

	public int CloginProc(Cmember cmember);

}
