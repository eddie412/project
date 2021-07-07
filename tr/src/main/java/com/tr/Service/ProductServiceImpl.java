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

	@Override
	public List<ProductVO> listProduct() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ProductVO detailProduct(int pNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateProduct(ProductVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteProduct(int pNo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertProduct(ProductVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String fileInfo(int pNo) {
		// TODO Auto-generated method stub
		return null;
	}

	
}
