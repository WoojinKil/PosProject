package com.wjkil.myapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wjkil.myapp.dao.FinalListDao;
import com.wjkil.myapp.dto.FinalDto;
@Service
public class FinalListServiceImpl implements FinalListService {

	@Autowired
	FinalListDao dao;
	@Override
	public List<FinalDto> finalList(int limit, int offset) {
		// TODO Auto-generated method stub
		
		return dao.finalList(limit, offset);
	}
	@Override
	public int finalListTotalCnt() {
		// TODO Auto-generated method stub
		return dao.finalListTotalCnt();
	}

}
