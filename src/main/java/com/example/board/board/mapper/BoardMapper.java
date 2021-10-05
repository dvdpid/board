package com.example.board.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.example.board.board.dto.BoardDto;

@Mapper
public interface BoardMapper {

	

	int getListCount();

	List<BoardDto> getBoardList(RowBounds rowBounds);

	int insertBoard(BoardDto b);

	BoardDto boardSelect(int bNo);

	int updateBoard(BoardDto b);

	void boardCount(int bNo);

	int deleteBoard(BoardDto b);

}
