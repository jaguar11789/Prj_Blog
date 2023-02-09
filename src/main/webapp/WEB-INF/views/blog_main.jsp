<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <!-- 추가할부분 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>main</title>
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

<h1>게시판 목록</h1>
<a href="./blog_userlogin" text-align="right">로그인</a>
<hr />
<br /><br />
	<table>
		<colgroup>
			<col width="80">
			<col width="100">
			<col width="300">
			<col width="200">
			<col width="70">
		</colgroup>
		<tr>
			<th>글번호</th>
			<th>작성자</th>
			<th>제목</th>
			<th>날짜</th>
			<th>조회수</th>
		</tr>
		<c:forEach items="${list }" var="dto">
			<tr>
				<td>${dto.blog_no }</td>
				<td>${dto.blog_writer }</td>
				<td><a href="one.do?blog_no=${dto.blog_no }">${dto.blog_title }</a></td>
				<td>${dto.blog_date }</td>
				<td>${dto.blog_hit }</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="5" align="right">
				<input type="button" value="글쓰기" onclick="location.href='./blog_writeboard'" />
			</td>
		</tr>
	</table>
</body>
</html>