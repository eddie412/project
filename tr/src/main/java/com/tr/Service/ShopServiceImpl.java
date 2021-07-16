package com.tr.Service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tr.DAO.ShopDAO;
import com.tr.VO.CartVO;

@Service
public class ShopServiceImpl implements ShopService {

	@Inject
	ShopDAO dao;

	// 장바구니 조회
	@Override
	public List<CartVO> list(String userId) throws Exception {
		return dao.list(userId);
	}

	// 장바구니 상품 합계
	@Override
	public int total(String userId) throws Exception {
		return dao.total(userId);
	}

	// 장바구니_상품삭제
	@Override
	public void delete(int cId) throws Exception {
		dao.delete(cId);
	}

	//장바구니 전체삭제
	@Override
	public void deleteAll(String userId) throws Exception {
		dao.deleteAll(userId);
	}

	//주문서 상품 조회
	@Override
	public List<CartVO> orderlist(int cId) throws Exception {
		return dao.orderlist(cId);
	}


}
