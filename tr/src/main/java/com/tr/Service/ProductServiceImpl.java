package com.tr.Service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tr.DAO.ProductDAO;
import com.tr.VO.ProductVO;
import com.tr.VO.ReplyVO;

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
//	카테고리
	@Override
	public List<ProductVO> cateList(String cateCode) throws Exception {
		return productDao.cateList(cateCode);
	}
	//상품조회
	@Override
	public ProductVO shopList(String pNo) throws Exception {
		
		return productDao.shopList(pNo);
	}
	//상품평 작성
	@Override
	public void registReply(ProductVO vo) throws Exception {
		productDao.registReply(vo);
		
	}
	//상품평 리스트
	@Override
	public List<ProductVO> replyList(String pNo) throws Exception {
		return productDao.replyList(pNo);
	}
	//상품평 삭제
	@Override
	public void deleteReply(ProductVO vo) throws Exception {
		productDao.deleteReply(vo);
	}
//아아디체크
	@Override
	public String idCheck(int cNO) throws Exception {
		return productDao.idCheck(cNO);
	}
	//상품평 수정
	@Override
	public void modifyReply(ProductVO vo) throws Exception {
		productDao.modifiyReply(vo);
	}
	
}
