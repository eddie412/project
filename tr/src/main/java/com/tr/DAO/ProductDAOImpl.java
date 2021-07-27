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
	//상품평 작성
		@Override
		public void registReply(ProductVO vo) throws Exception {
			sqlSession.insert("product.registReply",vo);
			
		}
		
		//카테고리
		@Override
		public List<ProductVO> cateList(String cateCode) throws Exception {
			
			return sqlSession.selectList("product.cateList",cateCode);
		}
		//상품조회
		@Override
		public ProductVO shopList(String pNo) throws Exception {
			return sqlSession.selectOne("adminMapper.shopList",pNo);
		}
		//상품평 리스트
		@Override
		public List<ProductVO> replyList(String pNo) throws Exception {
			
			return sqlSession.selectList("product.replyList",pNo);
		}
	
		//상품평 삭제
		@Override
		public void deleteReply(ProductVO vo) throws Exception{
			sqlSession.delete("product.deleteReply",vo);
		}
		
		//아이디 체크
		@Override
		public String idCheck(int cNO) throws Exception {
			
			return sqlSession.selectOne("product.replyUserIdCheck", cNO);
		}
		//상품평 수정
		@Override
		public void modifiyReply(ProductVO vo) throws Exception {
			sqlSession.update("product.modifyReply", vo);
		}
		
	
}
