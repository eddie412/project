package com.tr.Service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tr.DAO.QnaDAO;
import com.tr.VO.QnaVO;
import com.tr.VO.SearchCriteria;

@Service
public class QnaServiceImpl implements QnaService{
	
	@Inject
	private QnaDAO dao;
	//게시글 작성
	@Override
	public void write(QnaVO qnaVO) throws Exception {
		dao.write(qnaVO);
	}


	//조회
	@Override
	public QnaVO read(int qno) throws Exception {
		return dao.read(qno);
	}
	//수정
	@Override
	public void update(QnaVO qnaVO) throws Exception {
		dao.update(qnaVO);
	}
	//삭제
	@Override
	public void delete(int qno) throws Exception {
		dao.delete(qno);
	}
	// 게시물 목록
	@Override
	public List<QnaVO> list(SearchCriteria scri) throws Exception {
		return dao.list(scri);
	}
	//총개수
	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return dao.listCount(scri);
	}

	//댓글 조회
	@Override
	public List<QnaVO> readReply(int qno) throws Exception {
		return dao.readReply(qno);
	}

	//댓글 작성
	@Override
	public void writeReply(QnaVO vo) throws Exception {
		dao.writeReply(vo);
		
	}

	//댓글 수정
	@Override
	public void updateReply(QnaVO vo) throws Exception {
		dao.updateReply(vo);
	}

	//댓글 삭제
	@Override
	public void deleteReply(QnaVO vo) throws Exception {
		dao.deleteReply(vo);
	}

	//댓글 선택 조회
	@Override
	public QnaVO selectReply(int rno) throws Exception {
		return dao.selectReply(rno);
	}

}
