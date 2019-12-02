package com.wjkil.myapp.dao;

import java.util.List;

import com.wjkil.myapp.dto.FinalDto;

public interface FinalListDao {
	List<FinalDto> finalList(int limit, int offset);
	int finalListTotalCnt();
}
