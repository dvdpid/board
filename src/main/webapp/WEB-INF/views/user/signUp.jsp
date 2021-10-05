<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/user/signUp.css"type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
</head>
<body>
	<div class="joinArea" align="center">
			<img id="logo" src="/images/logo.png">
			<h2>회원가입</h2>
			<table id="joinMemberTable">
				<tr>
					<th><label class="must">*</label> 아이디</th>
					<td width="200px">
						<input type="text" id="userId" name="USER_ID" placeholder="아이디(4글자 이상)" style="width: 100%;">
					</td>
					<td width="200px">
							<span class="guide ok">사용 가능합니다.</span>
							<span class="guide error">사용 불가능합니다.</span>
							<input type="hidden" id="idCHK" value="0">
					</td>
				</tr>

				<tr>
					<th><label class="must">*</label> 비밀번호</th>
					<td><input type="password" name="USER_PWD" id="userpwd1" placeholder="비밀번호" style="width: 100%;"></td>

				</tr>
				<tr>
					<th><label class="must">*</label> 닉네임</th>
					<td><input type="text" id="nickname" name="USER_NICKNAME" placeholder="닉네임(2글자 이상)" style="width: 100%;"></td>
					<td width="200px">
							<span class="guide2 ok2">사용 가능합니다.</span>
							<span class="guide2 error2">사용 불가능합니다.</span>
							<input type="hidden" id="nickCHK" value="0">
					</td>
				</tr>
				<tr>
					<th>휴대전화</th>
					<td><input type="text" id="phone" name="USER_PHONE" placeholder="(-)를 제외한 숫자만 입력" style="width: 100%;"></td>
				</tr>
				<tr>
					<td colspan="2" align="center" style="margin-left: 100px;">
						<button id="updateBtn">가입하기</button>
						<button id="reset">취소하기</button>
					</td>
				</tr>
			</table>
	</div>
	<script type="text/javascript" src="/js/user/signUp.js"></script>
</body>
</html>