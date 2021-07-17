package com.tr.Service;

import java.util.List;

import com.tr.VO.BoardVO;
import com.tr.VO.SearchCriteria;

public interface BoardService {
	// 게시글 작성
		public void write(BoardVO boardVO) throws Exception;
	
	// 게시물 목록 조회
	public List<BoardVO> list(SearchCriteria scri) throws Exception;
	
	//총개수
	public int listCount(SearchCriteria scri) throws Exception;
	// 게시물 조회
	public BoardVO read(int qno) throws Exception;
	
	// 게시물 수정
	public void update(BoardVO boardVO) throws Exception;
		
	// 게시물 삭제
	public void delete(int qno) throws Exception;
	//답변
	public void reply(BoardVO boardVO) throws Exception;
}
