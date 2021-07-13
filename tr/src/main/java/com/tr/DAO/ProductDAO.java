package com.tr.DAO;

import java.util.List;

import com.tr.VO.ProductVO;

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
	
}
