package com.jjjh.MyPage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MyPageServiceImpl implements IMyPageService{
	@Autowired
	private IMyPageDao iMyPageDao;


	@Override
	public MyInfo ShowMyInfo(String cid) {
		
		return iMyPageDao.ShowMyInfo(cid);
	}


	@Override
	public List<OrderList> ShowOrderList(String cid) {
		
		return iMyPageDao.getOrderList(cid);
	}


	@Override
	public void ModifyProc(MyInfo myInfo) {
		iMyPageDao.ModifyProc(myInfo);
		iMyPageDao.ModifyProc2(myInfo);
		
	}


	@Override
	public void CancelOrder(MyInfo myInfo) {
		iMyPageDao.CancelOrder(myInfo);
		
	}
	

}
