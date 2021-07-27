package com.tr.Service;

import java.util.List;


import com.tr.VO.ProductVO;
import com.tr.VO.ReplyVO;

public interface ProductService {
	//상품목록
	public List<ProductVO> listProduct();
	//상품상세
	public ProductVO detailProduct(String pNo);
	//상품수정
	public void updateProduct(ProductVO vo);
	//상품 삭제
	public void deleteProduct(String pNo);
	//상품 추가
	public void insertProduct(ProductVO vo);
	//상품이미지 삭제를 위한 이미지파일정보
	public String fileInfo(String pNo);
	
//	-------------------------사용자
	//카테고리
	public List<ProductVO> cateList(String cateCode) throws Exception;

//	상품조회
	public ProductVO shopList(String pNo)throws Exception;
	
	//상품평 작성
	public void registReply(ProductVO vo)throws Exception;
	
	//상품평 리스트
	public List<ProductVO> replyList(String pNo) throws Exception;
	
	//상품평 삭제
	public void deleteReply(ProductVO vo) throws Exception;
	
	//아이디체크
	public String idCheck(int cNO) throws Exception;
	
	//상품평 수정
	public void modifyReply(ProductVO vo)throws Exception;
}
