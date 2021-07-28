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
import com.tr.VO.MemberVO;
import com.tr.VO.OrderVO;
import com.tr.VO.QnaVO;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	private MemberService service;

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
		String userId = vo.getUserId();

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

	// 마이페이지_주문내역
	@RequestMapping(value = "/order", method = RequestMethod.GET)
	public String order(Model model, HttpSession session, OrderVO vo) throws Exception {
		logger.info("★마이페이지(주문내역)....mpOrder get");
		String userId = (String) session.getAttribute("userId");
			
		
		if(userId != null) {
			MemberVO mvo = service.info(userId);
			vo.setUserId(userId);

			List<OrderVO> order = service.order(vo);

			model.addAttribute("order", order);
			model.addAttribute("size", order.size());
			model.addAttribute("name", mvo.getUserName());

			return "member/order";
		}else {
			return "redirect:/member/loginPage";
		}
	}

	// 마이페이지_주문내역상세
	@RequestMapping(value = "mpOrderDetail", method = RequestMethod.GET)
	public String orderDetail(HttpSession session, @RequestParam("oId") String oId, OrderVO vo, Model model)
			throws Exception {
		logger.info("★마이페이지(주문내역상세)....mpOrderDetail get");
		String userId = (String) session.getAttribute("userId");
		
		if(userId != null) {
			
			vo.setUserId(userId);
			vo.setoId(oId);

			List<OrderVO> orderDetail = service.orderDetail(vo);
			
			
			int total = 0;
			for(int i=0; i<orderDetail.size(); i++) {
				total += orderDetail.get(i).getoTotal();
				logger.info("total" + total);
			}
			
			model.addAttribute("no", orderDetail.get(0));
			model.addAttribute("orderDetail", orderDetail);
			model.addAttribute("total", total);

			return "member/orderDetail";
		}else {
			return "redirect:/member/loginPage";
		}

		
	}

	// 마이페이지_문의사항 get
	@RequestMapping(value = "/qna", method = RequestMethod.GET)
	public String qna(Model model, HttpSession session) throws Exception {
		String userId = (String) session.getAttribute("userId");

		if(userId != null) {
			List<QnaVO> qna = service.qna(userId);
			MemberVO mvo = service.info(userId);
			
			model.addAttribute("qna", qna);
			model.addAttribute("name" , mvo.getUserName());

			return "member/qna";
		}else {
			return "redirect:/member/loginPage";
		}
	}

	// 마이페이지_회원정보 조회 get
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String info(Model model, HttpSession session) throws Exception {

		if(session.getAttribute("userId") != null) {
			MemberVO member = service.info((String) session.getAttribute("userId"));

			model.addAttribute("pass", member.getUserPass());
			model.addAttribute("name", member.getUserName());
			model.addAttribute("email", member.getUserEmail());
			model.addAttribute("phone", member.getUserPhone());
			model.addAttribute("addr", member.getUserAddr());
			model.addAttribute("bday", member.getUserBday());
			

			return "member/update";
		}else {
			return "redirect:/member/loginPage";			
		}
	}

	// 마이페이지_회원정보 수정
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(MemberVO vo, HttpSession session) throws Exception {
		service.update(vo);

		session.invalidate();

		return "redirect:/";
	}

	// 마이페이지_회원정보 삭제 get
	@RequestMapping(value = "delete", method = RequestMethod.GET)
	public String deleteview(HttpSession session, Model model) throws Exception {
		String userId = (String) session.getAttribute("userId");

		if(userId != null) {
			MemberVO mvo = service.info(userId);
			
			model.addAttribute("name", mvo.getUserName());
			
			return "member/delete";
		}else {
			return "redirect:/member/loginPage";				
		}

	}

	// 마이페이지_회원정보 삭제 post
	@RequestMapping(value = "deleteSuccess", method = RequestMethod.POST)
	public String delete(MemberVO vo, HttpSession session) throws Exception {
		service.delete(vo);

		session.invalidate();

		return "redirect:/";
	}

}
