package com.tr.Service;

import java.util.List;

import com.tr.VO.MemberVO;

public interface MemberService {
	
	//회원가입
	public void register(MemberVO vo) throws Exception;
	//로그인
	public MemberVO login(MemberVO vo) throws Exception;
	//패스워드 체크
	public int passChk(MemberVO vo) throws Exception;
	//아이디 체크
	public int idChk(MemberVO vo) throws Exception;
	//회원 관리
	public List<MemberVO> memberList(MemberVO vo) throws Exception;
}
