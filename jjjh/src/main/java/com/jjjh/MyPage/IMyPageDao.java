package com.jjjh.MyPage;

import java.util.List;

public interface IMyPageDao {

	public MyInfo ShowMyInfo(String cid);

	public List<OrderList> getOrderList(String cid);

	public void ModifyProc(MyInfo myInfo);

	public void ModifyProc2(MyInfo myInfo);

	public void CancelOrder(MyInfo myInfo);

}
