package com.tr.DAO;

import java.util.List;

import com.tr.VO.CategoryVO;
import com.tr.VO.ReplyVO;

public interface ShopDAO {
	//상품 소감 작성
	public void productReply(ReplyVO vo) throws Exception;
	
	//카테고리
	public List<CategoryVO> list(int cateCode) throws Exception;

}
