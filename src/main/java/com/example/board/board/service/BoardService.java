package com.example.board.board.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.example.board.board.dto.BoardDto;
import com.example.board.board.mapper.BoardMapper;
import com.example.board.common.dto.PageInfo;
import com.example.board.user.dto.UserInfoDto;

import lombok.RequiredArgsConstructor;
@SessionAttributes("loginUser")
@RequiredArgsConstructor
@Service
public class BoardService {
	
	private final HttpSession session;
	private final BoardMapper boardMapper;
	

	public int getListCount() {
		return boardMapper.getListCount();
	}
	
	public List<BoardDto> getBoardList(PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return boardMapper.getBoardList(rowBounds);
	}

	public int insertBoard(BoardDto b) {
		
		// 세션에 있는 닉네임 가져오기
		String nickname = ((UserInfoDto)session.getAttribute("loginUser")).getUSER_NICKNAME();
		b.setBOARD_WRITER(nickname);
		
		return boardMapper.insertBoard(b);
	}

	public BoardDto boardSelect(int bNo) {
		
		return boardMapper.boardSelect(bNo);
	}

	public int updateBoard(BoardDto b) {
		return boardMapper.updateBoard(b);
	}

	public void boardCount(int bNo) {
		boardMapper.boardCount(bNo);
		
	}

	public int deleteBoard(BoardDto b) {
		return boardMapper.deleteBoard(b);
	}
	
}
