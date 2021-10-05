package com.example.board.comment.dto;

import java.sql.Date;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@Getter
@Setter
@RequiredArgsConstructor
@ToString
public class CommentDto {
	
	// 댓글 번호
	private int COMMENT_NO;
	// 부모 댓글
	private int COMMENT_PARENT;
	// 댓글 계층
	private int COMMENT_DEPTH;
	// 댓글 내용
	private String COMMENT_CONTENT;
	// 댓글 작성자
	private String COMMENT_WRITER;
	// 댓글 작성 시간
	private Date COMMENT_DATE;
	
}
