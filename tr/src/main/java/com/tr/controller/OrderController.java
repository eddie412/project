package com.tr.controller;

import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.Date;
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
import org.springframework.web.bind.annotation.RequestParam;

import com.tr.Service.MemberService;
import com.tr.Service.OrderService;
import com.tr.Service.ShopService;
import com.tr.VO.CartVO;
import com.tr.VO.MemberVO;
import com.tr.VO.OrderDetailVO;
import com.tr.VO.OrderVO;

@Controller
@RequestMapping("/order/*")
public class OrderController {

	private static final Logger logger = LoggerFactory.getLogger(OrderController.class);

	@Inject
	OrderService service;

	@Inject
	MemberService mservice;
	
	@Inject
	ShopService sService;

	// 주문서
	@RequestMapping(value = "orderView", method = RequestMethod.POST)
	public String orderView(HttpSession session, Model model, @RequestParam(value = "cId") int[] values)
			throws Exception {
		logger.info("orderView post...");

		String userId = (String) session.getAttribute("userId");

		// 주문상품
		Map<String, Object> map = new HashMap<String, Object>();
		int total = 0;

		for (int i = 0; i < values.length; i++) {
			session.setAttribute("cId" + i, values[i]);
			map.put("list" + i, service.orderlist(values[i]).get(0));

			total += service.orderlist(values[i]).get(0).getCount() * service.orderlist(values[i]).get(0).getpPrice();
		}
		model.addAttribute("order", map);
		logger.info("★num값=" + values.length);
		model.addAttribute("num", values.length);
		session.setAttribute("size", values.length);

		// 주문자 정보
		MemberVO member = mservice.info(userId);

		model.addAttribute("userName", member.getUserName());
		model.addAttribute("userPhone", member.getUserPass());
		model.addAttribute("userEmail", member.getUserEmail());

		// 상품금액
		model.addAttribute("total", total);

		return "order/orderView";
	}

	// 주문완료
	@RequestMapping(value = "order", method = RequestMethod.POST)
	public String orderInsert(HttpSession session, OrderVO vo, OrderDetailVO dvo, CartVO cvo,
			@RequestParam(value = "cId") int[] values) throws Exception {
		logger.info("order post...");

		// 사용자 아이디
		String userId = (String) session.getAttribute("userId");
		vo.setUserId(userId);
		cvo.setUserId(userId);

		// 주문번호(oId) 생성
		Calendar cal = Calendar.getInstance();

		int year = cal.get(Calendar.YEAR);
		String ym = year + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
		String ymd = ym + new DecimalFormat("00").format(cal.get(Calendar.DATE));
		String ymds = ymd + new DecimalFormat("00").format(cal.get(Calendar.SECOND));
		String subNum = "";

		for (int i = 1; i <= 4; i++) {
			subNum += (int) (Math.random() * 10);
		}

		String oId = ymds + subNum;
		vo.setoId(oId);

		// 구매날짜
		Date now = new Date();
		vo.setoDate(now);

		service.order(vo);

		// 장바구니 번호(cId) 구별
		dvo.setoId(oId);

		for (int i = 0; i < (Integer) session.getAttribute("size"); i++) {
			cvo.setcId(values[i]);
			dvo.setcId(values[i]);
			service.orderInfo(dvo);
			service.orderDelete(cvo);
		}

		return "order/orderComplete";
	}

// 장바구니 조회
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String cart(Model model, HttpSession session) throws Exception {
		logger.info("list get...");
		String userId = (String) session.getAttribute("userId");

		Map<String, Object> map = new HashMap<String, Object>();

		List<CartVO> list = sService.list(userId);
		int total = sService.total(userId);

		map.put("list", list);
		map.put("listYN", list.size());
		map.put("total", total);

		model.addAttribute("cart", map);

		return "order/list";
	}

// 장바구니_상품 삭제
	@RequestMapping(value = "delete", method = RequestMethod.GET)
	public String delete(@RequestParam int cId) throws Exception {
		logger.info("delete get...");

		sService.delete(cId);

		return "redirect:/order/list";
	}

// 장바구니 전체삭제
	@RequestMapping(value = "deleteAll", method = RequestMethod.GET)
	public String deleteAll(HttpSession session) throws Exception {
		logger.info("deleteAll get...");

		String userId = (String) session.getAttribute("userId");

		sService.deleteAll(userId);

		return "redirect:/order/list";
	}

}
