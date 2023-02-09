<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
table {
	width: 830px;
	border-top: 1px solid #444444;
	border-collapse: collapse;
	text-align: left;
	margin: auto;
	justify-content: center;
}

th, td {
	border-bottom: 1px solid #444444;
	padding: 10px;
}
</style>
<body>
<h1>상세 페이지</h1>
<hr />
<br />
<br />
	<table>
		<tr>
			<th>작성자</th>
			<td>${dto.blog_writer }</td>
		</tr>
		<tr>
			<th>제목</th>
			<td>${dto.blog_title }</td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea cols="80" rows="10" readonly="readonly">${dto.blog_content }</textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="button" value="수정" onclick="location.href='modifyboard.do?blog_no=${dto.blog_no }'"/>
				<input type="button" value="삭제" onclick="location.href=''" />
				<input type="button" value="목록" onclick="location.href='./blog_main'" />
			</td>
		</tr>
	</table>
</body>
</html>