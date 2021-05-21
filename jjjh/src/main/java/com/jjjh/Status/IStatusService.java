package com.jjjh.Status;

import java.util.List;

public interface IStatusService {

   public List<Sale> getList(String bid);

   public int searchNum(String bid);

   public List<Sale> ConditionSearch(SearchCondition searchCondition);

   public int searchNum(SearchCondition searchCondition);

}