package com.jjjh.Member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements IMemberService{
	@Autowired
	private IMemberDao iMemberDao;
	
	@Override
	public void MemberProc(Bmember bmember) {
		iMemberDao.MemberProc(bmember);
		
	}
	
}
