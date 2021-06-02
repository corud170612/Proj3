package com.jjjh.Member;

import java.util.Map;

public interface IMemberDao {

	public void BmemberProc(Bmember bmember);

	public void CmemberProc(Cmember cmember);

	public void UploadLogo(Map<String, String> fileMap);

	public int searchId(Cmember cmember);

}
