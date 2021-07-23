package com.tr.DAO;

import java.util.List;


import com.tr.VO.ProductVO;
import com.tr.VO.ReplyVO;

public interface ProductDAO {
	//상품목록
	public List<ProductVO> listProduct();
	//상품 상세
	public ProductVO detailProduct(String pNO);
	//상품 수정
	public void updateProduct(ProductVO vo);
	//상품 삭제
	public void deleteProduct(String pNO);
	//상품 추가
	public void insertProduct(ProductVO vo);
	//상품 이미지 삭제를 위한 이미지파일 정보
	public String fileInfo(String pNO);

//	------------------사용자 관점
	//상품 소감 작성
	public void registReply(ReplyVO vo) throws Exception;
	
	//상품평 리스트
	public List<ReplyVO> replyList(String pNO)throws Exception;
	
	//상품평 삭제
	public void deleteReply(ReplyVO vo) throws Exception;
	
	//아이디체크
	public String idCheck(int cNO) throws Exception;
	
	//카테고리
	public List<ProductVO> cateList(String cateCode) throws Exception;
	
	//상품조회
	public ProductVO shopList(String pNO) throws Exception;
	
	//상품평 수정
	public void modifiyReply(ReplyVO vo) throws Exception;
}
