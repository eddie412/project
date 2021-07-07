package com.tr.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tr.Service.ProductService;

@Controller
@RequestMapping("product/*")
public class ProductController {
	
	@Inject
	ProductService productService;
	
	//1.상품 전체 목록
	@RequestMapping("/list.do")
	public ModelAndView list(ModelAndView mav) {
		mav.setViewName("product/productList");
		mav.addObject("list",productService.listProduct());
		return mav;
	}
	
	//2. 상품 상세보기
	@RequestMapping("detail/{pNo}")
	public ModelAndView detail(@PathVariable("pNo") int pNo, ModelAndView mav) {
		mav.setViewName("product/productDetail");
		mav.addObject("vo",productService.detailProduct(pNo));
		return mav;
	}

}
