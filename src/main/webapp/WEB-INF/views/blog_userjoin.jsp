<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<title>회원가입</title>
</head>
<style>
    
    #logo {
      /* border: 5px solid pink; */
      	display: flex;
      	justify-content: center;
      	align-items: center;
      	margin-right: 20px;
      	margin-top: 50px;
    }

    #joinform {
      /* border: 5px solid greenyellow; */
      	display: flex;
      	justify-content: center;
      	align-items: center;
    }

    div {
      	padding: 10px;
      /* border: 5px solid gray; */
    }

    a {
      	margin: 0px;
      	padding: 0px;
      /* border-bottom: 1px solid black; */
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
    
    .input_value_code {
      	width: 12.5rem;
      	height: 1.8rem;
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

    .input_button_join {
     	margin-top: 0.5em;
     	border: none;
      	border-radius: 3px;
      	background-color: purple;
      	width: 19.5rem;
      	height: 40px;
      	color: white;
      	cursor: pointer;
    }
    .input_button_code {
    	border: none;
      	border-radius: 3px;
      	background-color: purple;
      	width: 6rem;
      	height: 30px;
      	color: white;
      	cursor: pointer;
    }
    .id_ok, .nickname_ok, .pwd_ok{
    	color: #6A82FB; display: none;
    }
    .id_already, .nickname_already, .pwd_no{
    	color:red;
    	display:none;
    }
    #msg{
    	margin-left: 60px;
    	color: red;
    	font-size: 13px;
    	font-weight: bold;
    }

  </style>
<body>
<form action="userjoinsuccess.do" method="post" onsubmit="return joinCheck();">
      <!-- display : flex 를 위한 div-->
      <div id="joinform">
        <!-- joinform의 input, label 태그 -->
        <div id="input_container">
            <label for="" class="input_label">아이디</label> <br>
            <input type="text" id="id" maxlength="20" name="userid" class="input_value" placeholder=" 아이디를 입력해주세요.(7 ~ 20자)" oninput="checkId();" required> <br>
            <span class="id_ok">사용 가능한 아이디입니다.</span>
			<span class="id_already">중복된 아이디입니다.</span><br />

            <label for="" class="input_label">비밀번호</label> <br>
            <input type="password" id="pwd1" name="userpwd" class="input_value" placeholder=" 비밀번호를 입력해주세요." required> <br>
            
            <label for="" class="input_label">비밀번호확인</label> <br>
            <input type="password" id="pwd2" name="userpwd2" class="input_value" placeholder=" 비밀번호를 입력해주세요." oninput="checkPwd();" required> <br>
            <span class="pwd_ok">비밀번호가 일치합니다.</span>
			<span class="pwd_no">비밀번호가 일치하지 않습니다.</span><br />
            
            <label for="" class="input_label">이름</label> <br>
            <input type="text" name="username" class="input_value" placeholder=" 이름을 입력해주세요."> <br>
            
            <label for="" class="input_label">생년월일</label> <br>
            <input type="date" name="userbirth" class="input_value"> <br>
            
            <label for="" class="input_label">성별</label> <br>
            <input type="radio" name="usersex" class="input_value1" value="남성">남성 
            <input type="radio" name="usersex" class="input_value1" value="여성">여성<br>

            <label for="" class="input_label">휴대폰</label> <br>
            <input type="text" name="userpnum" class="input_value" placeholder=" 휴대폰번호를 입력해주세요."> <br>
            
            <span id="code" style="display: none"></span>
            <span id="msg"></span> <br />
            
            <input type="submit" class="input_button_join" value="가입하기">
         </div>
      </div>
      </form>
</body>
</html>