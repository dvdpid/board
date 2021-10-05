<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
</head> 
<body>
    <div class="container">
        <div class="header">
            <h3 class="text-muted">게시판 수정</h3>
            <input id="boardNo" type="hidden" value="${b.BOARD_NO }">
            <input id="page" type="hidden" value="${page}">
            
        </div>
                    <div class="form-group">
                        <label class="col-md-12" for="txtTitle">Title</label>
                        <div class="col-md-12">
                            <input type="text"  id="txtTitle" name="title" value="${b.BOARD_TITLE }" class="form-control input-md"><!--required : 공백입력시 경고-->
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-12" for="txtPost">Post</label>
                        <div class="col-md-12">
                            <textarea class="form-control" id="txtPost" name="content" style="height:260px;" required>${b.BOARD_CONTENTS }</textarea>
                        </div>
                    </div>
                    <!-- Button -->
                    <div class="form-group">
                        <label class="col-md-12 control-label" for="singlebutton"></label>
                        <div class="col-md-12">
                            <input id="UpdateBtn" name="singlebutton" class="btn btn-primary" value="수정하기">
                            <input class="btn btn-primary" value="취소" onclick="location.href='/'">
                            
                        </div>
                  </div>
    </div>
     <script type="text/javascript" src="/js/board/boardUpdate.js"></script>
    	
</body>
</html>