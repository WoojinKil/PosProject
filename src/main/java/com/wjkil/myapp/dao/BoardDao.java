package com.wjkil.myapp.dao;

import java.util.List;

import com.wjkil.myapp.dto.BoardDto;
import com.wjkil.myapp.dto.BoardFileDto;

public interface BoardDao {

	int boardInsert(BoardDto dto);
	List<BoardDto> boardList(int limit, int offset);
	int boardListTotalCnt();
	BoardDto boardDetail(int  boardId);
	int boardUpdate(BoardDto dto);
	int boardDelete(BoardDto dto);
	int boardInsertFile(BoardFileDto dto);
	public List<BoardFileDto> boardDetailFileList(int boardId);
	public int boardDeleteFile(int boardId);
	public List<String> boardDeleteFileUrl(int boardId);
	
	public List<BoardDto> boardListSearchWord(int limit, int offset, String searchWord);
	public int boardListSearchWordTotalCnt(String searchWord);
	public int boardUpdateReadCnt(int boardId);
	 public int boardInsertUserRead(int boardId, int userSeq);
	 public int boardUserReadCnt(int boardId, int userSeq);
	 
	}
