package com.tr.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.tr.VO.ProductVO;
import com.tr.VO.ReplyVO;

@Repository
public class ProductDAOImpl  implements ProductDAO{
	
	@Inject
	SqlSession sqlSession;
	//상품목록
	@Override
	public List<ProductVO> listProduct() {
		return sqlSession.selectList("product.listProduct");
	}
	//상품상세
	@Override
	public ProductVO detailProduct(String pNo) {
		return sqlSession.selectOne("product.detailProduct",pNo);
	}
	//상품수정
	@Override
	public void updateProduct(ProductVO vo) {
		sqlSession.update("product.updateProduct",vo);
	}
	//상품삭제
	@Override
	public void deleteProduct(String pNo) {
		sqlSession.delete("product.deleteProduct",pNo);
	}
	//상품추가
	@Override
	public void insertProduct(ProductVO vo) {
		sqlSession.insert("product.insertProduct",vo);
	}
	//상품이비니 삭제를 위한 이미지파일 정보
	@Override
	public String fileInfo(String pNo) {
		return sqlSession.selectOne("product.fileInfo",pNo);
	}

//	---------------------- 사용자 관점
	//상품평
		@Override
		public void productReply(ReplyVO vo) throws Exception {
			// TODO Auto-generated method stub
			
		}
		
		//카테고리
		@Override
		public List<ProductVO> list(int cateCode) throws Exception {
			
			return sqlSession.selectList("product.category");
		}
	
	
}
