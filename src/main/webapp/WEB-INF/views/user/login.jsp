<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="/css/user/login.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
</head>
<body>
	<div align="center" class="loginArea">
		<img id="logo" src="/images/logo.png">
		<hr align="center" style="background: black; width: 19.5%;">
		<br>
			<table id="loginTable" style="text-align:center;">
				<tr>
					
					<td colspan="2"><input type="text" id="userId" name="USER_ID" placeholder="아이디"></td>
				</tr>			
				<tr>
					
					<td colspan="2"><input type="password" id="userPwd" name="USER_PWD" placeholder="비밀번호"></td>
				</tr>
				<tr>
					<td colspan="3">
						<button id="loginBtn">로그인</button>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<a href="signUpPage.do">| 회원가입 |</a>
					</td>
				</tr>
			</table>
	</div>
	<script type="text/javascript" src="/js/user/login.js" ></script>
</body>
</html>

<!-- 깃허브용 주석 -->
