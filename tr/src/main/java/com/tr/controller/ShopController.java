package com.tr.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	// 장바구니 조회
	@RequestMapping(value="list", method = RequestMethod.GET)
	public String cart(Model model, HttpSession session) throws Exception {
		logger.info("list get...");
		String userId = (String) session.getAttribute("userId");
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		List<CartVO> list = service.list(userId); 
		int total = service.total(userId);
		
		map.put("list", list);
		map.put("listYN", list.size());
		map.put("total", total);
		
		model.addAttribute("cart", map);
		
		return "shop/list";
	}
	
	//장바구니_상품 삭제
	@RequestMapping(value="delete", method = RequestMethod.GET)
	public String delete(CartVO vo, HttpSession session) throws Exception{
		String cId = (String) session.getAttribute("userId");
		String cNo = (String) session.getAttribute("cNo");
		
		logger.info("cId..." + cId + ", cNo..." + cNo);
		
		service.delete(vo);
		
		return "shop/cart";
	}
}
