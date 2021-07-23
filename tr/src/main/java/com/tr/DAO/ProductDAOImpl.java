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
	public ProductVO detailProduct(String pNO) {
		return sqlSession.selectOne("product.detailProduct",pNO);
	}
	//상품수정
	@Override
	public void updateProduct(ProductVO vo) {
		sqlSession.update("product.updateProduct",vo);
	}
	//상품삭제
	@Override
	public void deleteProduct(String pNO) {
		sqlSession.delete("product.deleteProduct",pNO);
	}
	//상품추가
	@Override
	public void insertProduct(ProductVO vo) {
		sqlSession.insert("product.insertProduct",vo);
	}
	//상품이비니 삭제를 위한 이미지파일 정보
	@Override
	public String fileInfo(String pNO) {
		return sqlSession.selectOne("product.fileInfo",pNO);
	}

//	---------------------- 사용자 관점
	//상품평 작성
		@Override
		public void registReply(ReplyVO vo) throws Exception {
			sqlSession.insert("product.registReply",vo);
			
		}
		
		//카테고리
		@Override
		public List<ProductVO> cateList(String cateCode) throws Exception {
			
			return sqlSession.selectList("product.cateList",cateCode);
		}
		//상품조회
		@Override
		public ProductVO shopList(String pNO) throws Exception {
			//return sqlSession.selectOne("adminMapper.shopList",pNO);
			return sqlSession.selectOne("product.shopList",pNO);
		}
		//상품평 리스트
		@Override
		public List<ReplyVO> replyList(String pNO) throws Exception {
			
			return sqlSession.selectList("product.replyList",pNO);
		}
	
		//상품평 삭제
		@Override
		public void deleteReply(ReplyVO vo) throws Exception{
			sqlSession.delete("product.deleteReply",vo);
		}
		
		//아이디 체크
		@Override
		public String idCheck(int cNO) throws Exception {
			
			return sqlSession.selectOne("product.replyUserIdCheck", cNO);
		}
		//상품평 수정
		@Override
		public void modifiyReply(ReplyVO vo) throws Exception {
			sqlSession.update("product.modifyReply", vo);
		}
		
	
}
