package com.tr.DAO;

import java.util.List;

import com.tr.VO.MemberVO;
import com.tr.VO.OrderVO;

public interface MemberDAO {
		
		//회원가입
		public void register(MemberVO vo) throws Exception;
		//로그인
		public MemberVO login(MemberVO vo) throws Exception;
		//아이디 중복 체크
		public int idChk(MemberVO vo) throws Exception;
		//마이페이지_주문상세
		public List<OrderVO> orderView() throws Exception;
}
