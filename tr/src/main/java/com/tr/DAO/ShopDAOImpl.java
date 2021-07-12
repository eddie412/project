package com.tr.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.tr.VO.CartVO;

@Repository
public class ShopDAOImpl implements ShopDAO{
	
	@Inject
	SqlSession sql;
	
	//장바구니
	@Override
	public List<CartVO> cart(String cId) throws Exception {
		return sql.selectList("shopMapper.cart", cId);
	}

	//장바구니_상품삭제
	@Override
	public void delete(CartVO vo) throws Exception {
		sql.delete("shopMapper.delete", vo);
	}

}
