<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%String path = request.getContextPath();%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/table.css" />
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
	<h1>게시판 수정</h1>
	<form action="boardmodify.do" method="post">
	<input type="hidden" name="blog_no" value="${dto.blog_no }" />
	<table>
		<tr>
			<th>작성자</th>
			<td>${dto.blog_writer }</td>
		</tr>
		<tr>
			<th>제목</th>
			<td><input type="text" name="blog_title" value="${dto.blog_title }"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea cols="80" rows="10" name="blog_content">${dto.blog_content }</textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="submit" value="저장">
				<input type="button" value="취소" onclick="location.href='./blog_main'"/>
			</td>
		</tr>
	</table>
	</form>
</body>
</html>