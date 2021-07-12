package com.tr.Service;

import java.util.List;

import com.tr.VO.CartVO;

public interface ShopService {

	//장바구니
	public List<CartVO> cart(String cId) throws Exception;
	
	//장바구니_상품삭제
	public void delete(CartVO vo) throws Exception;
}
