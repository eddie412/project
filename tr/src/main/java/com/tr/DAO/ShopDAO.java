package com.tr.DAO;

import java.util.List;

import com.tr.VO.CartVO;

public interface ShopDAO {

	//장바구니 조회
	public List<CartVO> list(String userId) throws Exception;
	
	//장바구니 상품 합계
	public int total(String userId) throws Exception;
	
	//장바구니 상품삭제
	public void delete(int cId) throws Exception;
	
	//장바구니 전체삭제
	public void deleteAll(String userId) throws Exception;
	

}
