package com.example.board.user.dto;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@RequiredArgsConstructor
public class UserLogin {
	
	// 아이디
	private String USER_ID;
	// 비밀번호
	private String USER_PWD;
}
