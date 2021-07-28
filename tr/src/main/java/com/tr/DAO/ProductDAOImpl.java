package com.tr.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.tr.VO.CartVO;
import com.tr.VO.ProductVO;
import com.tr.VO.ReplyVO;

@Repository
public class ProductDAOImpl  implements ProductDAO{
	
	@Inject
	SqlSession sqlSession;

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
			return sqlSession.selectOne("product.shopList",pNo);
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
		//카트 담기
		@Override
		public void addCart(CartVO cart) throws Exception {
			sqlSession.insert("product.addCart", cart);
			
		}
		//장바구니 상품 수량 변경
		@Override
		public void updateCart(CartVO cart) throws Exception {
			sqlSession.update("product.updateCart", cart);
			
		}
		//장바구니 동일상품 존재 확인
		@Override
		public int countCart(String pNo, String userId) throws Exception {
			Map<String, Object>map = new HashMap<String, Object>();
			map.put("pNo", pNo);
			map.put("userId", userId);
			return sqlSession.selectOne("product.countCart",map);
		}
		//상품 검색

		@Override
		public List<ProductVO> mainSearch(ProductVO vo) throws Exception {
		
			return sqlSession.selectList("product.goodsList", vo);
		}
	
		
		
	
}
