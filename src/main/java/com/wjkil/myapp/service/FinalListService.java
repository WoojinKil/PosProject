package com.wjkil.myapp.service;

import java.util.List;

import com.wjkil.myapp.dto.FinalDto;

public interface FinalListService {
	public List<FinalDto> finalList(int limit, int offset);
	public int finalListTotalCnt();
}
