package com.tr.Service;

import java.util.List;

import com.tr.VO.CartVO;
import com.tr.VO.MemberVO;
import com.tr.VO.OrderVO;
import com.tr.VO.QnaVO;

public interface MemberService {
	
	//회원가입
	public void register(MemberVO vo) throws Exception;
	//로그인
	public MemberVO login(MemberVO vo) throws Exception;
	//패스워드 체크
	public int passChk(MemberVO vo) throws Exception;
	//아이디 체크
	public int idChk(MemberVO vo) throws Exception;
	//마이페이지_회원정보 조회
	public MemberVO info(String userId) throws Exception;
	//마이페이지_주문상세
	public List<OrderVO> order(String userId) throws Exception;
	//마이페이지_문의사항
	public List<QnaVO> qna(String userId) throws Exception;
	//마이페이지_회원정보수정
	public void update(MemberVO vo) throws Exception;
	//마이페이지_회원정보삭제
	public void delete(MemberVO vo) throws Exception;

}
