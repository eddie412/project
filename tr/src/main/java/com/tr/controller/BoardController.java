package com.tr.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tr.Service.BoardService;
import com.tr.VO.BoardVO;
import com.tr.VO.Criteria;
import com.tr.VO.PageMaker;
import com.tr.VO.SearchCriteria;

@Controller
@RequestMapping("/board/*")
public class BoardController {
private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Inject
	BoardService service;
	
	
	// 게시판 글 작성 화면
	@RequestMapping(value = "/board/writeView", method = RequestMethod.GET)
	public void writeView() throws Exception{
		logger.info("writeView");
		
	}
	
	// 게시판 글 작성
		@RequestMapping(value = "/board/write", method = RequestMethod.POST)
		public String write(BoardVO boardVO) throws Exception{
			logger.info("write");
			
			service.write(boardVO);
			
			return "redirect:/board/list";
		}
	
	// 게시판 목록 
		@RequestMapping(value = "/list", method = RequestMethod.GET)
		public String list(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception{
			logger.info("list");
			
			model.addAttribute("list", service.list(scri));
			
			PageMaker pageMaker = new PageMaker();
			pageMaker.setCri(scri);
			pageMaker.setTotalCount(service.listCount(scri));
			
			model.addAttribute("pageMaker", pageMaker);
			
			return "board/list";
		
		
		}
		// 게시판 조회
		@RequestMapping(value = "/readView", method = {RequestMethod.GET,RequestMethod.POST})
		public String read(BoardVO boardVO,@ModelAttribute("scri") SearchCriteria scri ,Model model) throws Exception{
			logger.info("read");
			
			model.addAttribute("read", service.read(boardVO.getQno()));
			model.addAttribute("scri",scri);
			
			return "board/readView";
		}
		// 게시판 수정뷰
		@RequestMapping(value = "/updateView", method = RequestMethod.GET)
		public String updateView(BoardVO boardVO,@ModelAttribute("scri") SearchCriteria scri , Model model) throws Exception{
			logger.info("updateView");
			
			model.addAttribute("update", service.read(boardVO.getQno()));
			model.addAttribute("scri",scri);
			
			return "board/updateView";
		}
		
		// 게시판 수정
		@RequestMapping(value = "/update", method = RequestMethod.POST)
		public String update(BoardVO boardVO,@ModelAttribute("scri") SearchCriteria scri,RedirectAttributes rttr ) throws Exception{
			logger.info("update");
			
			service.update(boardVO);
			
			rttr.addAttribute("page", scri.getPage());
			rttr.addAttribute("perPageNum", scri.getPerPageNum());
			rttr.addAttribute("searchType", scri.getSearchType());
			rttr.addAttribute("keyword", scri.getKeyword());
			
			return "redirect:/board/list";
		}

		// 게시판 삭제
		@RequestMapping(value = "/delete", method = RequestMethod.POST)
		public String delete(BoardVO boardVO,@ModelAttribute("scri") SearchCriteria scri,RedirectAttributes rttr ) throws Exception{
			logger.info("delete");
			
			service.delete(boardVO.getQno());
			
			rttr.addAttribute("page", scri.getPage());
			rttr.addAttribute("perPageNum", scri.getPerPageNum());
			rttr.addAttribute("searchType", scri.getSearchType());
			rttr.addAttribute("keyword", scri.getKeyword());
			
			return "redirect:/board/list";
		}
		//답변 화면
		@RequestMapping(value="/replyView", method =RequestMethod.GET)
		public String replyView(Model model,BoardVO boardVO) throws Exception {
			logger.info("reply view");
			
			model.addAttribute("reply",service.read(boardVO.getQno()));
			
			return "board/replyView";
			
		}
		//답글저장
		@RequestMapping(value="/reply",method =RequestMethod.POST)
		public String reply(BoardVO boardVO) throws Exception {
			logger.info("reply");

			service.reply(boardVO);
			
			return "redirect:/board/list";
		}

}
