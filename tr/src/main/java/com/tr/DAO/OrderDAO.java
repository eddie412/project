package com.tr.DAO;

import java.util.List;

import com.tr.VO.CartVO;
import com.tr.VO.OrderDetailVO;
import com.tr.VO.OrderListVO;
import com.tr.VO.OrderVO;

public interface OrderDAO {
	
	//주문서 상품 조회
	public List<CartVO> orderlist(int cId) throws Exception;
	
	//주문 완료
	public void order(OrderVO vo) throws Exception;
	
	//주문조회
	public void orderInfo(OrderDetailVO vo) throws Exception;
	
	//주문상세조회
	public List<OrderListVO> orderDetail(OrderVO vo) throws Exception;
	
	//주문완료 상품 삭제
	public void orderDelete(CartVO vo) throws Exception;
}