package com.jjjh.Store;

import java.util.List;


public interface IStoreService {

   public List<ProdRegis> getProdList();

   public StoreDTO getBmemberList(String prodname);

   public List<ProdDTO> getProdList2(String prodname);

   public String getCaddr(String cid);

   public String getBid(String prodname);

   public void insertSale(SaleDTO saleDTO);

public List<ProdRegis> SelectCategory();

public List<ProdRegis> ShowCategoryProd(ConfirmCate confirmCate);

public MemberInfo joinMember(String loginCheck);

}