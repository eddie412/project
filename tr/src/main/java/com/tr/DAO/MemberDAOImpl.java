package com.tr.DAO;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.tr.VO.MemberVO;

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

}
