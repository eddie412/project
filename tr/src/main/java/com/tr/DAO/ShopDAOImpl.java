package com.tr.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import com.tr.VO.CategoryVO;
import com.tr.VO.ReplyVO;

public class ShopDAOImpl implements ShopDAO{
	
	@Inject
	SqlSession sqlSession;
	
	//상품평
	@Override
	public void productReply(ReplyVO vo) throws Exception {
		// TODO Auto-generated method stub
		
	}
	
	//카테고리
	@Override
	public List<CategoryVO> list(int cateCode) throws Exception {
		
		return sqlSession.selectList("product.category");
	}
}
