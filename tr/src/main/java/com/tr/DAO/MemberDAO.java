package com.tr.DAO;

import com.tr.VO.MemberVO;

public interface MemberDAO {
		
		//회원가입
		public void register(MemberVO vo) throws Exception;
		//로그인
		public MemberVO login(MemberVO vo) throws Exception;
		//아이디 중복 체크
		public int idChk(MemberVO vo) throws Exception;
}
