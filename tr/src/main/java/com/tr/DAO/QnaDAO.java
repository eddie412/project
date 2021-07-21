package com.tr.DAO;

import java.util.List;

import com.tr.VO.QnaVO;
import com.tr.VO.SearchCriteria;

public interface QnaDAO {
	//게시글작성
	public void write(QnaVO qnaVO) throws Exception;
	
	//게시글 목록
	public List<QnaVO> list(SearchCriteria scri) throws Exception; 
	
	//게시글 총개수
	public int listCount(SearchCriteria scri) throws Exception;
	
	// 게시물 조회
	public QnaVO read(int qno) throws Exception;
	
	// 게시물 수정
		public void update(QnaVO QnaVO) throws Exception;
		
	// 게시물 삭제
	public void delete(int qno) throws Exception;
		
	//댓글 조회
	public List<QnaVO> readReply(int qno) throws Exception;
	
	//댓글 작성
	public void writeReply(QnaVO vo)throws Exception;
	
	//댓글 수정
	public void updateReply(QnaVO vo)throws	Exception;
	
	//댓글 삭제
	public void deleteReply(QnaVO vo)throws	Exception;
	
	//선택된 댓글 조회
	public QnaVO selectReply(int rno)throws	Exception;
}
