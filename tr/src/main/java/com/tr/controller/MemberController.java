package com.tr.controller;

import javax.inject.Inject;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tr.Service.MemberService;
import com.tr.VO.MemberVO;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	private static final Logger Logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	MemberService service;
	
	
	//회원가입 get
	@RequestMapping(value="/signup", method = RequestMethod.GET)
	public void getSignup() throws Exception{
		Logger.info("get signup");
	}
	
	//회원가입 Post
	@RequestMapping(value="/singup", method = RequestMethod.POST)
	public String postSignup(MemberVO vo) throws Exception{
		Logger.info("post signup");
		
		String inputPass=vo.getUserPass();

		
		service.signup(vo);
		
		return "redirect:/";
	}
}
