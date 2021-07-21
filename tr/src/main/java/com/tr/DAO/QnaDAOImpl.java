package com.tr.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.tr.VO.QnaVO;
import com.tr.VO.SearchCriteria;

@Repository
public class QnaDAOImpl implements QnaDAO{
	
	@Inject
	private SqlSession sqlSession;
	//작성
	@Override
	public void write(QnaVO qnaVO) throws Exception {
		sqlSession.insert("qnaMapper.insert",qnaVO);
	}


	// 게시물 조회
	@Override
	public QnaVO read(int qno) throws Exception {
		return sqlSession.selectOne("qnaMapper.read", qno);
	}
	
	//수정
	@Override
	public void update(QnaVO qnaVO) throws Exception {
		sqlSession.update("qnaMapper.update", qnaVO);
	}
	//삭제
	@Override
	public void delete(int qno) throws Exception {
		sqlSession.delete("qnaMapper.delete", qno);
	}
	//목록
	@Override
	public List<QnaVO> list(SearchCriteria scri) throws Exception {
		
		return sqlSession.selectList("qnaMapper.listPage",scri);
	}
	//총개수
	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		
		return sqlSession.selectOne("qnaMapper.listCount",scri);
	}
	//댓글 조회
	@Override
	public List<QnaVO> readReply(int qno) throws Exception {
		return sqlSession.selectList("qnaMapper.readReply", qno);
	}

	//댓글 작성
	@Override
	public void writeReply(QnaVO vo) throws Exception {
		sqlSession.insert("qnaMapper.writeReply", vo);
		
	}

	//댓글 수정
	@Override
	public void updateReply(QnaVO vo) throws Exception {
		sqlSession.update("qnaMapper.updateReply", vo);
		
	}

	//댓글 삭제
	@Override
	public void deleteReply(QnaVO vo) throws Exception {
		sqlSession.delete("qnaMapper.deleteReply", vo);
		
	}

	//댓글 선택 조회
	@Override
	public QnaVO selectReply(int rno) throws Exception {
	
		return sqlSession.selectOne("qnaMapper.selectReply", rno);
	}
	
}
