package com.tr.DAO;

import com.tr.VO.MemberVO;

public interface MemberDAO {
		
		//회원가입
		public void singup(MemberVO vo) throws Exception;
}
