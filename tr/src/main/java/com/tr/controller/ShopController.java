package com.tr.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tr.Service.ShopService;
import com.tr.VO.CartVO;

@Controller
@RequestMapping("/shop/*")
public class ShopController {
	
	private static final Logger logger = LoggerFactory.getLogger(ShopController.class);
	
	@Inject
	ShopService service;
	
	// 장바구니
	@RequestMapping(value="list", method = RequestMethod.GET)
	public String cart(Model model, HttpSession session) throws Exception {
		
		List<CartVO> cart = service.cart((String) session.getAttribute("userId")); 
		model.addAttribute("cart", cart);
		
		return "shop/cart";
	}
	
	//장바구니_상품 삭제
	@RequestMapping(value="delete", method = RequestMethod.GET)
	public String delete(CartVO vo, HttpSession session) throws Exception{
		String cId = (String) session.getAttribute("userId");
		String cNo = (String) session.getAttribute("cNo");
		
		service.delete(vo);
		
		return "shop/cart";
	}
}
