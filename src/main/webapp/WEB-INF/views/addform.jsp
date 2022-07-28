<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SpringCRUD</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href='./resources/css/App.css' />
</head>
<body>
	<div class="formstyle">
		<h2 class="form_tit">댓글 남기기</h2>
		<form action="addok" method="post">
			<table>
				<tr>
					<td>닉네임:</td>
					<td><input type="text" name="writer" /></td>
				</tr>
				<tr>
					<td>댓글:</td>
					<td><textarea cols="30" rows="3" name="content"></textarea></td>
				</tr>
				<tr>
					<td><button type="button" class="btn btn-primary"
							onclick="history.back()">돌아가기</button>
					<td align="right"><input class="btn btn-primary" type="submit"
						value="저장" /></td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>