package com.tr.Service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tr.DAO.BoardDAO;
import com.tr.VO.BoardVO;
import com.tr.VO.SearchCriteria;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Inject
	private BoardDAO dao;
	//게시글 작성
	@Override
	public void write(BoardVO boardVO) throws Exception {
		dao.write(boardVO);
	}


	//조회
	@Override
	public BoardVO read(int qno) throws Exception {
		return dao.read(qno);
	}
	//수정
	@Override
	public void update(BoardVO boardVO) throws Exception {
		dao.update(boardVO);
	}
	//삭제
	@Override
	public void delete(int qno) throws Exception {
		dao.delete(qno);
	}
	// 게시물 목록
	@Override
	public List<BoardVO> list(SearchCriteria scri) throws Exception {
		return dao.list(scri);
	}
	//총개수
	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return dao.listCount(scri);
	}

	//답변
	@Override
	public void reply(BoardVO boardVO) throws Exception {
		dao.reply(boardVO);
		
	}

}
