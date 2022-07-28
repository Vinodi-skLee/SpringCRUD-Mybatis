<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.webcamp.dao.CommentDAO, com.webcamp.vo.CommentVO, java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>SpringCRUD</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href='./resources/css/App.css' />
	<script>
	function delete_ok(id) {
		var a = confirm("정말로 삭제하겠습니까?");
		if (a)
			location.href = 'delete/' + id;
	}
</script>
</head>
<body style="background-image: url('./resources/img/comment_bg3.jpg');, background-size: cover;">
	<h2 class="comment_tit text-center">Spring 댓글 게시판</h2>
	
	<div class="container" >
		<div class="col">
			<table id="list">
				<tr>
					<th>Id</th>
					<th>작성자</th>
					<th>댓글</th>
					<th>날짜</th>
					<th>수정</th>
					<th>삭제</th>
				</tr>
				<c:forEach items="${list}" var="u">
					<tr>
						<td>${u.getSeq()}</td>
						<td>${u.getWriter()}</td>	
						<td>${u.getContent()}</td>
						<td>${u.getRegdate()}</td>
						<td><a href="edit/${u.getSeq()}">수정</a></td>
						<td><a href="javascript:delete_ok('${u.getSeq()}')">삭제</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<br />
		<div class="row">	
		<button type="button" class="btn btn-light bottombtn" onclick="location.href='add'">댓글 추가</button>
		
		</div>
			
	</div>
</body>
</html>