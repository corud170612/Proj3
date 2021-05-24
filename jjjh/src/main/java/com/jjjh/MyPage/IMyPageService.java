package com.jjjh.MyPage;

import java.util.List;

public interface IMyPageService {

	public MyInfo ShowMyInfo(String cid);

	public List<OrderList> ShowOrderList(String cid);

	public void ModifyProc(MyInfo myInfo);

	public void CancelOrder(MyInfo myInfo);



}
