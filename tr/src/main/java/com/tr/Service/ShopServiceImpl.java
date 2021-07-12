package com.tr.Service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tr.DAO.ShopDAO;
import com.tr.VO.CartVO;

@Service
public class ShopServiceImpl implements ShopService{
	
	@Inject
	ShopDAO dao;
	
	//장바구니
	@Override
	public List<CartVO> cart(String cId) throws Exception {
		return dao.cart(cId);
	}
	//장바구니_상품삭제
	@Override
	public void delete(CartVO vo) throws Exception {
		dao.delete(vo);
	}
}
