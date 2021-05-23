package com.jjjh.TasteTest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

@Service
public class TasteTestServiceImpl implements TasteTestService{
   @Autowired
   private TasteTestDao tasteTestDao;
   
   @Override
   public List<Test> tasteResult(TasteTestDTO tasteTest) {
       return tasteTestDao.tasteResult(tasteTest);
      
   }

}