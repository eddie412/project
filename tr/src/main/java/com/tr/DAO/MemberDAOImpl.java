package com.tr.DAO;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import com.tr.VO.MemberVO;

public class MemberDAOImpl implements MemberDAO{
	
	@Inject
	private SqlSession sql;
	
	//매핑
	private static String namespace = "com.tr.mappers.memberMapper";
	
	//회원가입
	@Override
	public void singup(MemberVO vo) throws Exception{
		sql.insert(namespace+".singup",vo);
	}

}
