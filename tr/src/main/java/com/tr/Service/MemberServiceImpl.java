package com.tr.Service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tr.DAO.MemberDAO;
import com.tr.VO.MemberVO;
import com.tr.VO.OrderVO;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Inject
	MemberDAO dao;
	
	//회원가입
	@Override
	public void register(MemberVO vo) throws Exception{
		dao.register(vo);
	}
	//로그인
	@Override
	public MemberVO login(MemberVO vo) throws Exception{
		return dao.login(vo);
	}
	//아이디 중복 체크
	@Override
	public int idChk(MemberVO vo) throws Exception{
		int result = dao.idChk(vo);
		return result;
	}
	//마이페이지_주문상세
	@Override
	public List<OrderVO> orderView() throws Exception {
		return dao.orderView();
	}
}
