package com.tr.Service;

import java.util.List;

import javax.inject.Inject;

import com.tr.DAO.ShopDAO;
import com.tr.VO.CategoryVO;

public class ShopServiceImpl implements ShopService{

	@Inject
	private ShopDAO dao;
	
	@Override
	public List<CategoryVO> list(int cateCode) throws Exception {
		return dao.list(cateCode);
	}

}
