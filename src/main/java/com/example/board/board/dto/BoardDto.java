package com.example.board.board.dto;


import java.sql.Date;

import org.apache.ibatis.type.Alias;

import lombok.Data;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@Getter
@Setter
@RequiredArgsConstructor
@ToString
@Alias("Board")
public class BoardDto {
	
	// 게시글 번호
	private int BOARD_NO ;
	// 게시글 제목
	private String BOARD_TITLE;
	// 게시글 내용
	private String BOARD_CONTENTS;
	// 게시글 작성자
	private String BOARD_WRITER;
	// 게시글 작성일
	private Date BOARD_DATE;
	// 게시글 조회수
	private int BOARD_COUNT;
	// 회원 비회원 정보
	private String BOARD_SIGN;
	// 비회원 비밀번호
	private String BOARD_PWD;
	
}
