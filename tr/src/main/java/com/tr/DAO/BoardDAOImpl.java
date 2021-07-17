package com.tr.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.tr.VO.BoardVO;
import com.tr.VO.SearchCriteria;

@Repository
public class BoardDAOImpl implements BoardDAO{
	
	@Inject
	private SqlSession sqlSession;
	//작성
	@Override
	public void write(BoardVO boardVO) throws Exception {
		sqlSession.insert("boardMapper.insert",boardVO);
	}


	// 게시물 조회
	@Override
	public BoardVO read(int qno) throws Exception {
		return sqlSession.selectOne("boardMapper.read", qno);
	}
	//수정
	@Override
	public void update(BoardVO boardVO) throws Exception {
		sqlSession.update("boardMapper.update", boardVO);
	}
	//삭제
	@Override
	public void delete(int qno) throws Exception {
		sqlSession.delete("boardMapper.delete", qno);
	}
	//목록
	@Override
	public List<BoardVO> list(SearchCriteria scri) throws Exception {
		
		return sqlSession.selectList("boardMapper.listPage",scri);
	}
	//총개수
	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		
		return sqlSession.selectOne("boardMapper.listCount",scri);
	}

	//답글
	@Override
	public void reply(BoardVO boardVO) throws Exception {
		sqlSession.insert("boardMapper.reply", boardVO);
		
	}
	
}
