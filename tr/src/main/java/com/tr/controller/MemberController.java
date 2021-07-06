package com.tr.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tr.Service.MemberService;
import com.tr.VO.MemberVO;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	MemberService service;
	
	@Inject
	BCryptPasswordEncoder pwdEncoder;
	
	// 회원가입 get
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void getRegister() throws Exception {
		logger.info("get register");
	}
	
	// 회원가입 post
	@RequestMapping(value = "/register", method = RequestMethod.POST)
		public String postRegister(MemberVO vo) throws Exception {
			logger.info("post register");
			int result = service.idChk(vo);
			try {
				if(result == 1) {
					return "/member/register";
				}else if(result == 0) {
					String inputPass = vo.getUserPass();
					String pwd = pwdEncoder.encode(inputPass);
					vo.setUserPass(pwd);
					
					service.register(vo);
					}
				} catch (Exception e) {
					throw new RuntimeException();
				}
				return "redirect:/";
			}
		// 로그인 post
			@RequestMapping(value = "/login", method = RequestMethod.POST)
			public String login(MemberVO vo, HttpSession session, RedirectAttributes rttr) throws Exception{
				logger.info("post login");
			
				session.getAttribute("member");
				MemberVO login = service.login(vo);
				boolean pwdMatch = pwdEncoder.matches(vo.getUserPass(), login.getUserPass());

				if(login != null && pwdMatch == true) {
					session.setAttribute("member", login);
				} else {
					session.setAttribute("member", null);
					rttr.addFlashAttribute("msg", false);
				}
				
				
				return "redirect:/";
			}
			// 로그아웃 post
			@RequestMapping(value = "/logout", method = RequestMethod.GET)
			public String logout(HttpSession session) throws Exception{
				
				session.invalidate();
				
				return "redirect:/";
			}
	}
