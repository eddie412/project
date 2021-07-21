package com.tr.Service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tr.DAO.ProductDAO;
import com.tr.VO.ProductVO;

@Service
public class ProductServiceImpl  implements ProductService{
	
	@Inject
	ProductDAO productDao;

	//상품목록
	@Override
	public List<ProductVO> listProduct() {
		return productDao.listProduct();
	}

	//상품상세
	@Override
	public ProductVO detailProduct(String pNo) {
		return productDao.detailProduct(pNo);
	}

	//상품수정
	@Override
	public void updateProduct(ProductVO vo) {
		productDao.updateProduct(vo);
	}

	//상품삭제
	@Override
	public void deleteProduct(String pNo) {
		productDao.deleteProduct(pNo);
	}
	
	//상품추가
	@Override
	public void insertProduct(ProductVO vo) {
		productDao.insertProduct(vo);
	}

	//상품이미지 삭제를 위한 이미지파일정보
	@Override
	public String fileInfo(String pNo) {
		return productDao.fileInfo(pNo);
	}
	
//	--------------------------------사용자
	@Override
	public List<ProductVO> list(int cateCode) throws Exception {
		return productDao.list(cateCode);
	}
	
}
