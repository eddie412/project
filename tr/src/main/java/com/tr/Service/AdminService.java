package com.tr.Service;

import java.util.List;

import com.tr.VO.MemberVO;
import com.tr.VO.OrderVO;
import com.tr.VO.ProductVO;
import com.tr.VO.QnaVO;
import com.tr.VO.ReplyVO;

public interface AdminService {
	
	//상품조회
	public ProductVO productView(String pNo) throws Exception;
	//제품 내역 확인
	public List<ProductVO> productList(ProductVO productVo) throws Exception;
	//제품 등록
	public void productAdd(ProductVO productVo) throws Exception;
	//상품 수정
	public void productModify(ProductVO vo) throws Exception;
	//상품 삭제
	public void productDelete(String pNo) throws Exception;
	
	//주문 내역 조회
	public List<OrderVO> orderView(String oId) throws Exception;
	//주문 수정
	public void orderModify(OrderVO vo) throws Exception;
	//주문 삭제
	public void orderDelete(String oId) throws Exception;
	public void orderDetailsDelete(String oId) throws Exception;
	
	
	//회원 조회
	public MemberVO memberView(String userId) throws Exception;
	//회원 수정
	public void memberModify(MemberVO vo) throws Exception;
	//회원 삭제
	public void memberDelete(String userId) throws Exception;
	
	//문의 사항 관리
	public List<QnaVO> qnaList(QnaVO qnaVo) throws Exception;
	//문의 사항 조회
	public QnaVO qnaView(int qNo) throws Exception;
	//문의 사항 삭제
	public void qnaDelete(int qNo) throws Exception;
	
	//댓글 조회
	public List<ReplyVO> replyView(int qNo) throws Exception;
	//댓글 작성
	public void replyWrite(ReplyVO vo) throws Exception;
	//댓글 수정
	public void replyUpdate(ReplyVO vo) throws Exception;
	//댓글 삭제
	public void replyDelete(ReplyVO vo) throws Exception;
	//선택된 댓글 조회
	public ReplyVO replySelect(int rNo) throws Exception;
	
	//주문 내역 확인
	public List<OrderVO> orderList(OrderVO orderVo) throws Exception;
	//배송 상태
	public void delivery(OrderVO orderVo) throws Exception;
	
	
}
