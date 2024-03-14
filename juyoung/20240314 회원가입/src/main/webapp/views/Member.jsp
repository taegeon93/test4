<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여기어떤데-회원가입</title>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="sawa.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="boot.css">
</head>
<body>
    <header>
        <div class="hstyle">
            <img class="lsty1" src="./화면 캡처 2024-03-04 154345.png" alt="이미지">
            <button type="button" class="btn btn-outline-secondary">My Page</button>
        </div>
    </header>
    <hr>
    <div class="member">
        <fieldset>
            <form action="/Sawadicab/Welcome.me" method="post" class="login-form" id="scale-box">
                <label><h5><strong>회원가입</strong></h5></label><br>
                <div id="div1">
                    <input type="text" name="id" id="id"  placeholder="아이디" /><br>
                    <input type="password" name="pwd" id="pwd" placeholder="비밀번호" /><br>
                    <input type="password" name="pwd2" id="pwd2" placeholder="비밀번호확인" /><br>
                    <input type="text" name="name" id="name" placeholder="이름" /><br>
                    <input type="text" name="birth" id="birth" placeholder="생년월일" /><br>
                    <input type="text" name="phone" id="phone" placeholder="전화번호" />
                </div>
                <div>
                    <button class="btn btn-primary btn1" type="submit"  onclick="return checkPwd()">회원가입</button><br>
                    <button class="btn btn-success btn1">네이버로 시작하기</button><br>
                    <button class="btn btn-warning btn1">카카오로 시작하기</button>
                </div>
            </form>
        </fieldset>
    </div>
      <script>
        function checkPwd(){
            const pwd = document.querySelector("input[id=pwd]");
            const pwd2 = document.querySelector("input[id=pwd2]");
            if(pwd.value != pwd2.value){
                alert("비밀번호가 다릅니다.");
                return false;
            }
        }
        
    </script>
</body>

</html>