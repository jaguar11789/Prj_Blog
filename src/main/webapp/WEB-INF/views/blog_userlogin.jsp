<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
</head>
<style>
    
    #grid{
    	margin-top: 10%;
    }
    #logo {
      /* border: 5px solid pink; */
      display: flex;
      justify-content: center;
      align-items: center;
      margin-right: 20px;
      margin-top: 60px;
      padding: 20px;
    }

    #loginformdiv {
      /* border: 5px solid greenyellow; */
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 0px;

    }
    #a_container{
        display: flex;
        justify-content: center;
        align-content: space-between;
        font-size: small;
        margin: 0;
        /* border: 1px solid red; */
        
        
    }
    #a_container2{
        display: flex;
        justify-content: center;
        align-content: space-between;
        font-size: small;
        margin: 0;
        margin-top:20px;
        /* border: 1px solid red; */
  
    }
    .find_id {
        margin: 0;
        padding-right: 15px;
        color: gray;
    }
    .find_pw {
        margin: 0;
        color: gray;  
    }
    .do_join {
        padding-left: 105px;
        color: gray;
    }
    .business_login{
    	color: blue;
    }

    .input_value{
      width: 19rem;
      height: 2rem;
      border: 2px solid lightgray;
      border-radius: 5px;
      color: gray; 
      margin-top: 0.5em;
      margin-bottom: 0.5em;
    }
    

    .input_label {
      font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
      font-weight: bold;
      color: rgb(73, 69, 69);
      font-size: small;
    }

    .input_button_login {
      margin-top: 0.5em;
      border: none;
      border-radius: 3px;
      background-color: purple;
      width: 19.5rem;
      height: 40px;
      color: white;
      cursor: pointer;
      
    }
    
    #msg{
    	margin-left: 60px;
    	color: red;
    	font-weight: bold;
    }


  </style>
<body>
	<div id="loginformdiv">
		<!-- joinform의 input, label 태그 -->
		<div id="input_container">
		<!-- form - controller의 login_session 함수 실행  / onsubmit - return login_check() function 동작 -->
		<!-- return이 붙는 이유는 login_check함수에서 return하는 값에 따라 action을 취할지 말지 정해줌. return이 없으면 뭔짓거리를 하던 액션을함 -->
			<form action="login_user_session" method="post" onsubmit="return login_check();">
				<label for="" class="input_label">아이디</label> <br>
				<input type="text" id="id" name="id" class="input_value" placeholder=" 아이디를 입력해주세요."> <br>
				<label for="" class="input_label">비밀번호</label> <br>
				<input type="password" id="pwd" name="pwd" class="input_value" placeholder=" 비밀번호를 입력해주세요."> <br>
				<input type="submit" id="submit_btn" class="input_button_login" value="LOGIN"> <br> <br>
				<!-- span태그에 로그인 실행 결과를 나타내줌 -->
				<span id="msg"></span>
			</form>
    	</div>
	</div>
        
	<div id="a_container">
		<a href="#" class="find_id">ID찾기</a> 
		<a href="#" class="find_pw">비밀번호 찾기</a> 
		<a href="./blog_userjoin" class="do_join">회원가입</a>
	</div>
</body>
</html>