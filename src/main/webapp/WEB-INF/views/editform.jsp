<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.webcamp.dao.CommentDAO, com.webcamp.vo.CommentVO"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SpringCRUD</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href='../resources/css/App.css' />
</head>
<body>
	<div class="formstyle">
	<h2 class="form_tit">댓글 수정하기</h2>
		<form:form commandName="commentVO" method="post" action="../editok">
			<form:hidden path="seq" />
			<table id="edit">
				<tr><td>닉네임:</td><td><form:input path="writer" /></td></tr>
				<tr><td>댓글:</td><td><form:textarea cols="30" rows="3" path="content" /></td></tr>
				
				<tr>
					<td colspan="2"><input class="btn btn-primary" type="button" value="돌아가기" onclick="history.back()" /> 
					<td align="right"><input class="btn btn-primary" type="submit" value="저장" /></td>
				</tr>
				</table>
		</form:form>
	</div>

</body>
</html>