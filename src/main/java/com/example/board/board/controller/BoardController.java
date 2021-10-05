package com.example.board.board.controller;


import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.example.board.board.dto.BoardDto;
import com.example.board.board.service.BoardService;
import com.example.board.common.Pagination;
import com.example.board.common.dto.PageInfo;

import lombok.RequiredArgsConstructor;
@Controller
@SessionAttributes("loginUser")
@RequiredArgsConstructor

public class BoardController {
	
	private final BoardService boardService;
	
	// 게시판 리스트
	@RequestMapping("/")
	public String boardList(Model model, @RequestParam(value="page", required = false) Integer page) {
		
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		// 전체 게시물 개수
		int listCount = boardService.getListCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		List<BoardDto> bList = boardService.getBoardList(pi);
		
		model.addAttribute("bList", bList);
		model.addAttribute("pi", pi);
		
		return "/board/board";
	}
	
	// 게시글 작성 페이지 이동
	@GetMapping("/insertPage.bo")
	public String insertPage() {
		return "board/insertBoard";
	}
	
	// 게시글 작성
	@PostMapping("insertBoard.bo")
	@ResponseBody
	public int insertBoard(@ModelAttribute BoardDto b) {
		
		int result = boardService.insertBoard(b);
		
		
		return result;
		
	}
	// 게시글 상세조회
	@GetMapping("/boardDetail.bo")
	public String boardDetail(@RequestParam(value="page", required = false) Integer page,
							 @RequestParam("BOARD_NO") int bNo,
								Model m ) {
		BoardDto bDetail = boardService.boardSelect(bNo);
		boardService.boardCount(bNo);
		
		
		m.addAttribute("page", page).addAttribute("bDetail", bDetail);
		
		return "/board/boardDetail";
		
	}
	
	// 게시글 수정 페이지로 이동
	@GetMapping("/updatePage.bo")
	public String updatePage(@RequestParam("bNo") int bNo, Model m, @RequestParam(value="page", required = false) Integer page){
		
		BoardDto b = boardService.boardSelect(bNo);
		m.addAttribute("b", b);
		m.addAttribute("page", page);
		
		
		return "/board/boardUpdate";
	}
	// 게시글 수정
	@PostMapping("/updateBoard.bo")
	@ResponseBody
	public int updateBoard(@ModelAttribute BoardDto b, @RequestParam(value="page", required = false) Integer page, Model m) {
		
		System.out.println(b);
		
		int result = boardService.updateBoard(b);
		m.addAttribute("page", page);
		return result;
	}
	// 게시글 삭제
	@PostMapping("/deleteBoard.bo")
	@ResponseBody
	public int deleteBoard(@ModelAttribute BoardDto b) {
		
		int result = boardService.deleteBoard(b);
		
		return result;
	}
	
	
	
}
