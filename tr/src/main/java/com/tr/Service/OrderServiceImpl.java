package com.tr.Service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tr.DAO.OrderDAO;
import com.tr.VO.CartVO;
import com.tr.VO.OrderDetailVO;
import com.tr.VO.OrderListVO;
import com.tr.VO.OrderVO;

@Service
public class OrderServiceImpl implements OrderService{
	
	
	@Inject
	OrderDAO dao;

	
	//주문서 상품 조회
	@Override
	public List<CartVO> orderlist(int cId) throws Exception {
		return dao.orderlist(cId);
	}

	//주문완료
	@Override
	public void order(OrderVO vo) throws Exception {
		dao.order(vo);
	}

	//주문조회
	@Override
	public void orderInfo(OrderDetailVO vo) throws Exception {
		dao.orderInfo(vo);
	}
	
	//주문상세조회
	@Override
	public List<OrderListVO> orderDetail(OrderVO vo) throws Exception {
		return dao.orderDetail(vo);
	}

	//주문완료상품 삭제
	@Override
	public void orderDelete(CartVO vo) throws Exception {
		dao.orderDelete(vo);
	}

	
	

}
