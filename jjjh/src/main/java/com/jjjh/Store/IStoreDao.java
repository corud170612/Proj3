package com.jjjh.Store;

import java.util.List;

public interface IStoreDao {

   List<ProdRegis> getProdList();

   StoreDTO getBmemberList(String prodname);

   List<ProdDTO> getProdList2(String prodname);

   String getCaddr(String cid);

   String getprodimg1(String prodname);

   String getBid(String prodname);

   void insertSale(SaleDTO saleDTO);

List<ProdRegis> SelectCategory();

}