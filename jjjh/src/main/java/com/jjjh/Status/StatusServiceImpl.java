package com.jjjh.Status;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StatusServiceImpl implements IStatusService{
   @Autowired
   private IStatusDao iStatusDao;

   @Override
   public List<Sale> getList(String bid) {
      return iStatusDao.getList(bid);
   }

   @Override
   public int searchNum(String bid) {
   
      return iStatusDao.searchNum(bid);
   }


   @Override
   public List<Sale> ConditionSearch(SearchCondition searchCondition) {

      return iStatusDao.ConditionSearch(searchCondition);
   }

   @Override
   public int searchNum(SearchCondition searchCondition) {
   
      return iStatusDao.searchNum2(searchCondition);
   }

@Override
public void SuccessProcess(String no) {
	iStatusDao.SuccessProcess(no);
	
}

@Override
public void CancelProcess(String no) {
	iStatusDao.CancelProcess(no);
	
}

@Override
public void CancelSuccess(String no) {
	iStatusDao.CancelSuccess(no);
	
}


}