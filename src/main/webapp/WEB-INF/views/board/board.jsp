<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap/bootstrap.css">
<link rel="stylesheet" href="/css/board/boardList.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
</head>
<body>
	<c:import url="../common/header.jsp"></c:import>
	<c:import url="../nav/nav.jsp"></c:import>
	
	
	<!-- 게시판 -->
	<div class="container">
		<h2>게시판</h2><br>
		<table border="1" class="table table-hover">
			<thead>
				<tr>
					<th>번호</th>
					<th id="th_title" width="500px;">&nbsp; 제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>			
			</thead>
			<tbody>
			<c:forEach var="b" items="${bList }">
				<tr class="bDetail" onclick="location.href='/boardDetail.bo?BOARD_NO='+ ${b.BOARD_NO} + '&page=' + ${ pi.currentPage }">
					<td>${b.BOARD_NO}</td>
					<td id="td_title" nowrap="nowrap">${b.BOARD_TITLE}</td>
					<td>${b.BOARD_WRITER}</td>
					<td>${b.BOARD_DATE}</td>
					<td>${b.BOARD_COUNT}</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		<hr>
		
		<!-- 페이징 부분 -->
						<div class="pagingArea" align="center">
							<!-- [이전] -->
							<c:if test="${ pi.currentPage <= 1 }"><div class="pageBtn">&lt;</div></c:if>
							<c:if test="${ pi.currentPage > 1 }">
								<c:url value="/" var="blistBack"> <!-- loc : 현재 내 주소 -->
				            		<c:param name="page" value="${ pi.currentPage - 1 }"/>
				            		<c:if test="${ searchValue ne null }">
				            			<c:param name="searchContent" value="${ searchValue }"/>
				            		</c:if>
				            	</c:url>
				            	<div class="pageBtn"><a href="${ blistBack }">&lt;</a></div>
							</c:if>
							
							<!-- 페이지 -->
							<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
								<c:if test="${ p eq pi.currentPage }">
									<div class="currentpageBtn"><b>${ p }</b></div>
								</c:if>
								
								<c:if test="${ p ne pi.currentPage }">
									<c:url var="blistCheck" value="/">
				            			<c:param name="page" value="${ p }"/>
				            			<c:if test="${ searchValue ne null }">
					            			<c:param name="searchContent" value="${ searchValue }"/>
					            		</c:if>
				            		</c:url>
				            		<div class="pageBtn"><a href="${ blistCheck }">${ p }</a></div>
								</c:if>
							</c:forEach>
							
							<!-- [다음] -->
							<c:if test="${ pi.currentPage >= pi.maxPage }"><div class="pageBtn">&gt;</div></c:if>
							<c:if test="${ pi.currentPage < pi.maxPage }">
								<c:url value="/" var="blistNext"> <!-- loc : 현재 내 주소 -->
				            		<c:param name="page" value="${ pi.currentPage + 1 }"></c:param>
				            		<c:if test="${ searchValue ne null }">
				            			<c:param name="searchContent" value="${ searchContent }"/>
				            		</c:if>
				            	</c:url>
				            	<div class="pageBtn"><a href="${ blistNext }">&gt;</a></div>
							</c:if>
						</div>
		
		<input type="hidden" id="page" value="${ pi.currentPage }">
		
		<a class="btn btn-default pull-right" id="InsertBoard">글쓰기</a>
	</div>
	<c:import url="../common/footer.jsp"></c:import>
	<script type="text/javascript" src="/js/board/board.js"></script>
	<script type="text/javascript" src="js/nav/nav.js" ></script>
	<script type="text/javascript" src="js/bootstrap/bootstrap.js"></script>
</body>
</html>