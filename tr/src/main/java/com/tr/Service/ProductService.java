package com.tr.Service;

import java.util.List;

import com.tr.VO.ProductVO;

public interface ProductService {
	//상품목록
	public List<ProductVO> listProduct();
	//상품상세
	public ProductVO detailProduct(int pNo);
	//상품수정
	public void updateProduct(ProductVO vo);
	//상품 삭제
	public void deleteProduct(int pNo);
	//상품 추가
	public void insertProduct(ProductVO vo);
	//상품이미지 삭제를 위한 이미지파일정보
	public String fileInfo(int pNo);
}
