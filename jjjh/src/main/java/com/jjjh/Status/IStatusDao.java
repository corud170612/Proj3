package com.jjjh.Status;

import java.util.List;

public interface IStatusDao {

   public List<Sale> getList(String bid);

   public int searchNum(String bid);
   public List<Sale> ConditionSearch(SearchCondition searchCondition);

   public int searchNum2(SearchCondition searchCondition);
}