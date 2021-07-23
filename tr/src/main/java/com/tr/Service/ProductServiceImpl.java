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
	public ProductVO detailProduct(String pNO) {
		return productDao.detailProduct(pNO);
	}

	//상품수정
	@Override
	public void updateProduct(ProductVO vo) {
		productDao.updateProduct(vo);
	}

	//상품삭제
	@Override
	public void deleteProduct(String pNO) {
		productDao.deleteProduct(pNO);
	}
	
	//상품추가
	@Override
	public void insertProduct(ProductVO vo) {
		productDao.insertProduct(vo);
	}

	//상품이미지 삭제를 위한 이미지파일정보
	@Override
	public String fileInfo(String pNO) {
		return productDao.fileInfo(pNO);
	}
	
//	--------------------------------사용자
//	카테고리
	@Override
	public List<ProductVO> cateList(String cateCode) throws Exception {
		return productDao.cateList(cateCode);
	}
	//상품조회
	@Override
	public ProductVO shopList(String pNO) throws Exception {
		
		return productDao.shopList(pNO);
	}
	//상품평 작성
	@Override
	public void registReply(ReplyVO vo) throws Exception {
		productDao.registReply(vo);
		
	}
	//상품평 리스트
	@Override
	public List<ReplyVO> replyList(String pNO) throws Exception {
		return productDao.replyList(pNO);
	}
	//상품평 삭제
	@Override
	public void deleteReply(ReplyVO vo) throws Exception {
		productDao.deleteReply(vo);
	}
//아아디체크
	@Override
	public String idCheck(int cNO) throws Exception {
		return productDao.idCheck(cNO);
	}
	//상품평 수정
	@Override
	public void modifyReply(ReplyVO vo) throws Exception {
		productDao.modifiyReply(vo);
	}
	
}
