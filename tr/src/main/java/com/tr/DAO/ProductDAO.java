package com.tr.DAO;

import java.util.List;


import com.tr.VO.ProductVO;
import com.tr.VO.ReplyVO;

public interface ProductDAO {
	//상품목록
	public List<ProductVO> listProduct();
	//상품 상세
	public ProductVO detailProduct(String pNo);
	//상품 수정
	public void updateProduct(ProductVO vo);
	//상품 삭제
	public void deleteProduct(String pNo);
	//상품 추가
	public void insertProduct(ProductVO vo);
	//상품 이미지 삭제를 위한 이미지파일 정보
	public String fileInfo(String pNo);

//	------------------사용자 관점
	//상품 소감 작성
	public void productReply(ReplyVO vo) throws Exception;
	
	//카테고리
	public List<ProductVO> list(int cateCode) throws Exception;
}
