package com.tr.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tr.VO.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO{
	
	@Autowired
	private SqlSession sql;
	
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
	//패스워드 체크
	@Override
	public int passChk(MemberVO vo) throws Exception{
		int result = sql.selectOne("memberMapper.passChk", vo);
		return result;
	}
	//회원 관리
		@Override
		public List<MemberVO> memberList(MemberVO memberVo) throws Exception {
			return sql.selectList("memberList",memberVo);
		}
}
