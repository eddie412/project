package com.tr.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.tr.VO.MemberVO;
import com.tr.VO.OrderVO;

@Repository
public class MemberDAOImpl implements MemberDAO{
	
	@Inject
	SqlSession sql;
	
	//회원가입
	@Override
	public void register(MemberVO vo) throws Exception{
		sql.insert("memberMapper.register",vo);
	}
	//로그인
	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		return sql.selectOne("memberMapper.login",vo);
	}
	//아이디 중복 체크
	@Override
	public int idChk(MemberVO vo) throws Exception{
		int result=sql.selectOne("memberMapper.idChk", vo);
		return result;
	}
	//마이페이지_주문상세
	@Override
	public List<OrderVO> orderView() throws Exception {
		return sql.selectList("memberMapper.orderview");
	}

	

}
