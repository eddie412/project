package com.tr.Service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tr.DAO.MemberDAO;
import com.tr.VO.MemberVO;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberDAO dao;
	
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
	//패스워드 체크
	@Override
	public int passChk(MemberVO vo) throws Exception{
		int result = dao.passChk(vo);
		return result;
	}
	//아이디 중복 체크
	@Override
	public int idChk(MemberVO vo) throws Exception{
		int result = dao.idChk(vo);
		return result;
	}
	//회원 관리
	@Override
	public List<MemberVO> memberList(MemberVO memberVo) throws Exception{
		return dao.memberList(memberVo);
	}
	

}
