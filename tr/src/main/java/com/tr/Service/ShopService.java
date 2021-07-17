package com.tr.Service;

import java.util.List;

import com.tr.VO.CategoryVO;

public interface ShopService {
	//카테고리
	public List<CategoryVO> list(int cateCode) throws Exception;

	
}
