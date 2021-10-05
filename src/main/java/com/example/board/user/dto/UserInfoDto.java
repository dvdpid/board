package com.example.board.user.dto;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@RequiredArgsConstructor
@ToString
public class UserInfoDto {
	
	// 유저 번호 (PK)
	private int USER_NO;
	// 유저 아이디 (필수)
	private String USER_ID;
	// 유저 비밀번호 (필수)
	private String USER_PWD;
	// 유저 닉네임 (필수)
	private String USER_NICKNAME;
	// 유저 핸드폰
	private String USER_PHONE;
	
	
}
