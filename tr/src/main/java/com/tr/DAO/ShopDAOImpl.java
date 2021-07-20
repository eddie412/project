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
	
	//장바구니 조회

	
	//장바구니 상품 합계
	@Override
	public int total(String userId) throws Exception {
		return sql.selectOne("shopMapper.total", userId);
	}

	//장바구니 상품 삭제
	@Override
	public void delete(int cId) throws Exception {
		sql.delete("shopMapper.delete", cId);
	}

	//장바구니 전체삭제
	@Override
	public void deleteAll(String userId) throws Exception {
		sql.delete("shopMapper.deleteAll", userId);
	}


	
}
