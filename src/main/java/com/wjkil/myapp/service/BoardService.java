package com.wjkil.myapp.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.wjkil.myapp.dto.BoardDto;
import com.wjkil.myapp.dto.BoardFileDto;
import com.wjkil.myapp.dto.MenuDto;
import com.wjkil.myapp.dto.ModalDto;

public interface BoardService {

	public int boardInsert(BoardDto dto);
	
	public List<BoardDto> boardList(int limit, int offset);
	
	int boardListTotalCnt();
	public BoardDto boardDetail(int boardId);
	public int boardUpdate(BoardDto dto) throws Exception;
	public int boardDelete(BoardDto dto);
	public int boardInsertFile(BoardDto dto, MultipartFile file) throws Exception;
	public int boardUpdateFile(BoardDto dto, MultipartFile file) throws Exception;
	public List<BoardDto> boardList(int limit, int offset, String searchWord);

	   public int boardListTotalCnt(String searchWord);
	   public BoardDto boardDetail(int boardId, int userSeq) ;
			  
}
