package com.jjjh.Member;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Service
public class MemberServiceImpl implements IMemberService{
	@Autowired
	private IMemberDao iMemberDao;
	private final String UPLOADPATH = "/resources/upload/";
	
	@Override
	public void BmemberProc(Bmember bmember, HttpServletRequest request) {
		iMemberDao.BmemberProc(bmember);
		
		List<Map<String, String>> fileLst = Upload(request);
		
		for(Map<String, String> fileMap : fileLst) {
			fileMap.put("storename", bmember.getStorename());
			iMemberDao.UploadLogo(fileMap);
		}
	}

	@Override
	public void CmemberProc(Cmember cmember) {
		iMemberDao.CmemberProc(cmember);
		
	}
	private void DownloadFile(InputStream inputStream, String filePath, String fileName) {
		File file = new File(filePath + UPLOADPATH + fileName);
		try {
			Files.copy(inputStream, file.toPath());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	private List<Map<String, String>> Upload(HttpServletRequest request) {
		MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest)request;
		Iterator<String> iterator = multiRequest.getFileNames();
		MultipartFile multipartFile = null;
		
		List<Map<String, String>> fileLst = new ArrayList<Map<String,String>>();
		
		while(iterator.hasNext()){
			String fieldName = iterator.next();
			multipartFile = multiRequest.getFile(fieldName);
	        
			if(multipartFile.isEmpty() == false){
				Map<String, String> fileMap = new HashMap<String, String>();
				
				String originFile = multipartFile.getOriginalFilename();
				String systemFile = originFile+System.currentTimeMillis();
				fileMap.put("storelogo1", originFile);
				fileMap.put("storelogo2", systemFile);
				
				fileLst.add(fileMap);
				//¾÷·Îµå
				String filePath = multiRequest.getSession().getServletContext().getRealPath("/");
				try {
					DownloadFile(multipartFile.getInputStream(), filePath, systemFile);
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		
		return fileLst;
	}
}
