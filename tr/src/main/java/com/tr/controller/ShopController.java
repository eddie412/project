package com.tr.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tr.Service.MemberService;
import com.tr.Service.ShopService;
import com.tr.VO.CartVO;
import com.tr.VO.MemberVO;
import com.tr.VO.OrderVO;

@Controller
@RequestMapping("/shop/*")
public class ShopController {
	
	private static final Logger logger = LoggerFactory.getLogger(ShopController.class);
	
	@Inject
	ShopService service;
	
	@Inject
	MemberService mservice;
	
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
	public String delete(@RequestParam int cId) throws Exception{
		logger.info("delete get...");
		
		service.delete(cId);
		
		return "redirect:/shop/list";
	}
	
	//장바구니 전체삭제
	@RequestMapping(value = "deleteAll" , method = RequestMethod.GET)
	public String deleteAll(HttpSession session) throws Exception{
		logger.info("deleteAll get...");
		
		String userId = (String) session.getAttribute("userId");
		
		service.deleteAll(userId);
		
		return "redirect:/shop/list";
	}
	
	//주문서
	@RequestMapping(value="orderView", method = RequestMethod.POST)
	public String orderView(HttpServletRequest request, HttpSession session, Model model) throws Exception {
		logger.info("orderView post...");

		String userId = (String) session.getAttribute("userId");
		//List<CartVO> list = new ArrayList<CartVO>();
	
		//상품정보
		Map<String, Object> map = new HashMap<String, Object>();
		String[] check = request.getParameterValues("cId");
		
		for(int i=0; i<check.length; i++) {
			int c = Integer.parseInt(check[i]);
			logger.info(c+"");
			List<CartVO> list = service.orderlist(c);
			map.put("list"+i, list);
		}
		model.addAttribute("order", map);
			
		
		//주문자 정보
		MemberVO member = mservice.info(userId);
		session.setAttribute("userName", member.getUserName());
		session.setAttribute("userPhone", member.getUserPhone());
		session.setAttribute("userEmail", member.getUserEmail());
		
		
		return "shop/order";
	}
	

}
