package com.jjjh.Store;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.jjjh.Member.Bmember;


@Repository
@Service
public class StoreServiceImpl implements IStoreService{
   @Autowired
   private IStoreDao iStoreDao;
   
   @Override
   public List<ProdRegis> getProdList() {
      // TODO Auto-generated method stub
      return iStoreDao.getProdList();
   }

   @Override
   public StoreDTO getBmemberList(String prodname) {
      StoreDTO storeDTO = new StoreDTO();
      storeDTO = iStoreDao.getBmemberList(prodname);
     storeDTO.setProdimg1(iStoreDao.getprodimg1(prodname));
      return  storeDTO;
   }

   @Override
   public List<ProdDTO> getProdList2(String prodname) {
      // TODO Auto-generated method stub
      return iStoreDao.getProdList2(prodname);
   }

   @Override
   public String getCaddr(String cid) {
      // TODO Auto-generated method stub
      return iStoreDao.getCaddr(cid);
   }

   @Override
   public String getBid(String prodname) {
      // TODO Auto-generated method stub
      return iStoreDao.getBid(prodname);
   }

   @Override
   public void insertSale(SaleDTO saleDTO) {
      // TODO Auto-generated method stub
      iStoreDao.insertSale(saleDTO);
   }

@Override
public List<ProdRegis> SelectCategory() {

   return iStoreDao.SelectCategory();
}

@Override
public List<ProdRegis> ShowCategoryProd(ConfirmCate confirmCate) {
      List<ProdRegis>selectLst = iStoreDao.ShowCategoryProd(confirmCate);
   return selectLst;
}

@Override
public MemberInfo joinMember(String loginCheck) {
	
	return iStoreDao.joinMember(loginCheck);
}

}