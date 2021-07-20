package com.tr.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tr.Service.MemberService;
import com.tr.Service.OrderService;
import com.tr.VO.MemberVO;
import com.tr.VO.OrderListVO;
import com.tr.VO.OrderVO;
import com.tr.VO.QnaVO;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	private MemberService service;
	
	@Autowired
	private OrderService oService;

	@Autowired
	BCryptPasswordEncoder pwdEncoder;

	// 회원가입 get
	@RequestMapping(value = "/registerPage", method = RequestMethod.GET)
	public void getRegister() throws Exception {
		logger.info("get register");
	}

	// 회원가입 post
	@RequestMapping(value = "/registerPage", method = RequestMethod.POST)
	public String postRegister(MemberVO vo) throws Exception {
		logger.info("post register");

		service.register(vo);

		return "redirect:/";
	}

	// 로그인 get
	@RequestMapping(value = "/loginPage", method = RequestMethod.GET)
	public void getlogin() throws Exception {
		logger.info("get login");
	}

	// 로그인 post
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		logger.info("post login");

		HttpSession session = req.getSession();
		MemberVO login = service.login(vo);
		String userId=vo.getUserId();

		if (login == null) {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
			return "redirect:/member/loginPage";
		} else {
			session.setAttribute("member", login);
			session.setAttribute("userId", userId);
			return "redirect:/";
		}

	}

	// 로그아웃 post
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {

		session.invalidate();

		return "redirect:/";
	}

	// 패스워드 체크
	@ResponseBody
	@RequestMapping(value = "/passChk", method = RequestMethod.POST)
	public boolean passChk(MemberVO vo) throws Exception {

		MemberVO login = service.login(vo);
		boolean pwdChk = pwdEncoder.matches(vo.getUserPass(), login.getUserPass());
		return pwdChk;
	}

	// 아이디 중복 체크
	@ResponseBody
	@RequestMapping(value = "/idChk", method = RequestMethod.POST)
	public int idChk(MemberVO vo) throws Exception {
		int result = service.idChk(vo);
		return result;
	}
	
	/*
	 * // 성인 체크
	 * 
	 * @ResponseBody
	 * 
	 * @RequestMapping(value="/ageChk", method=RequestMethod.POST) public int
	 * ageChk(MemberVO vo) throws Exception{ int result = service.ageChk(vo); return
	 * result; }
	 */
	
	// 마이페이지_주문 리스트
		@RequestMapping(value = "/mp_orderList", method = RequestMethod.GET)
		public String order(Model model, HttpSession session, OrderVO vo) throws Exception {
			
			String userId = (String) session.getAttribute("userId");
			vo.setUserId(userId);
			List<OrderListVO> orderList = service.orderList(vo);
			model.addAttribute("orderlist", orderList);
			logger.info("orderList...." + orderList);

			return "member/mp_order";
		}
		

		//마이페이지 주문상세조회
		@RequestMapping(value="mp_orderDetail" , method = RequestMethod.GET)
		public String orderDetail(HttpSession session, @RequestParam("n") String oId, OrderVO vo, Model model) throws Exception{
			logger.info("orderDetail post...");
			
			String userId = (String) session.getAttribute("userId");
			
			vo.setUserId(userId);
			vo.setoId(oId);
			
			List<OrderListVO> orderDetail = oService.orderDetail(vo);
			logger.info("orderDetail");
			model.addAttribute("orderDetail", orderDetail);
			
			return "member/mp_orderDetail";
		}

		// 마이페이지_문의사항 get
		@RequestMapping(value = "/mp_qna", method = RequestMethod.GET)
		public String qna(Model model, HttpSession session) throws Exception {
			String userId = (String) session.getAttribute("userId");

			List<QnaVO> qna = service.qna(userId);
			model.addAttribute("qna", qna);

			return "member/mp_qna";
		}

		// 마이페이지_회원정보 조회 get
		@RequestMapping(value = "/mp_update", method = RequestMethod.GET)
		public String info(Model model, HttpSession session) throws Exception {

			MemberVO member = service.info((String) session.getAttribute("userId"));

			session.setAttribute("userPass", member.getUserPass());
			session.setAttribute("userName", member.getUserName());
			session.setAttribute("userEmail", member.getUserEmail());
			session.setAttribute("userPhone", member.getUserPhone());
			session.setAttribute("userAddr", member.getUserAddr());
			session.setAttribute("userBday", member.getUserBday());

			return "member/mp_update";
		}

		// 마이페이지_회원정보 수정
		@RequestMapping(value = "mp_update", method = RequestMethod.POST)
		public String update(MemberVO vo, HttpSession session) throws Exception {
			service.update(vo);

			session.invalidate();

			return "redirect:/";
		}

		// 마이페이지_회원정보 삭제 get
		@RequestMapping(value = "mp_deleteview", method = RequestMethod.GET)
		public String deleteview(HttpSession session) throws Exception {
			return "member/mp_delete";
		}

		// 마이페이지_회원정보 삭제 post
		@RequestMapping(value = "mp_delete", method = RequestMethod.POST)
		public String delete(MemberVO vo, HttpSession session) throws Exception {
			service.delete(vo);

			session.invalidate();

			return "redirect:/";
		}


}
