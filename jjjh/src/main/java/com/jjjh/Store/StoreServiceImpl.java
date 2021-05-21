package com.jjjh.Store;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;


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

}
