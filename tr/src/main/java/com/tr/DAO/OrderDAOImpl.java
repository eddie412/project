package com.tr.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.tr.VO.CartVO;
import com.tr.VO.OrderDetailVO;
import com.tr.VO.OrderListVO;
import com.tr.VO.OrderVO;

@Repository
public class OrderDAOImpl implements OrderDAO{
	
	@Inject
	SqlSession sql;
	
	//장바구니
	@Override
	public List<OrderVO> cart(String userId) throws Exception {
		return sql.selectList("orderMapper.cart", userId);
	}
	
	
	//주문서 상품조회
	@Override
	public List<CartVO> orderlist(int cId) throws Exception {
		return sql.selectList("orderMapper.orderlist", cId);
	}
	
	//주문완료
	@Override
	public void order(OrderVO vo) throws Exception {
		sql.insert("orderMapper.order", vo);
	}

	//주문조회
	@Override
	public void orderInfo(OrderDetailVO vo) throws Exception {
		sql.insert("orderMapper.orderInfo", vo);
	}
	
	//주문상세조회
	@Override
	public List<OrderListVO> orderDetail(OrderVO vo) throws Exception {
		return sql.selectList("orderMapper.orderDetail", vo);
	}
	
	//주문완료상품 삭제
	@Override
	public void orderDelete(CartVO vo) throws Exception {
		sql.delete("orderMapper.orderDelete", vo);
	}


	

}
