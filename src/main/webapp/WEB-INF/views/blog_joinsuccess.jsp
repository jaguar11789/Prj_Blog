<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 완료</title>
<link rel="stylesheet" href="../resources/css/joinsuccess.css" />
</head>
<style>
    #grid{
        margin-top: 7%;
    }
    div {
      padding: 10px;
      /* border: 5px solid gray; */
    }

    #logo {
      /* border: 5px solid pink; */
      display: flex;
      justify-content: center;
      align-items: center;
      margin-right: 20px;
      margin-top: 50px;
    }

    #button_container {
      display: flex;
      justify-content: center;
      align-items: center;
    }
    .p1 {  
      padding-top: 30px;
      width: 500px;
      text-align: center;

    }
    .p2 {
      padding-bottom: 30px;
      width: 500px;
      text-align: center;
    }

    .input_button_use {
      padding: 0px;
      border: none;
      border-radius: 3px;
      background-color: purple;
      width: 19.5rem;
      height: 40px;
      color: white;
      text-decoration: none;
      cursor: pointer;
    }
   

  </style>
<body>
<h1 text align="center">회원가입 완료</h1>
<div id="grid">
	<!--회원가입 버튼 선택 사용자&사업자용 -->
	<div id="button_container">
		<div>    	
			<p class="p1"><button onclick="location.href='./blog_userlogin'" class="input_button_use">로그인 페이지로 이동</button></p>
			<p class="p2"><button onclick="location.href='./blog_main'" class="input_button_use">메인 페이지로 이동</button></p>
		</div>
	</div>
</div>
</body>
</html>