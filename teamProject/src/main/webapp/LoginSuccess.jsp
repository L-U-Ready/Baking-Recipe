<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Success</title>
<link rel="stylesheet" href="./resources/css/Login.css"> <!-- 가정한 경로입니다. 실제 CSS 파일 경로를 사용하세요. -->
<style>
  .login-success-container {
    
    width: 320px; /* 로그인 창과 동일한 최대 너비 */
    margin: 50px auto; /* 화면 중앙 배치 */
    padding: 20px;
    border: 3px solid #DD8888; /* 테두리 */
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* 그림자 효과 */
    background: #FFF8F8; /* 배경색 */
    text-align: center;
  }
  .login-success-container h1{
  	color: #C26A66;
  }

  .main-page-button {
    width: 80%;
    padding: 10px;
    margin-top: 20px; /* 버튼 위 여백 */
    background-color: #C26A66; /* 버튼 배경색 */
    color: white;
    border: none;
    cursor: pointer;
    display: block;
    margin: 20px auto; /* 버튼을 컨테이너 중앙에 배치 */
  }

  @font-face {
    font-family: 'BMHANNAPro';
    src: url('./resources/BMHANNAPro.woff') format('woff');
  }

  body {
    font-family: 'BMHANNAPro', sans-serif;
  }
</style>
</head>
<body>
<jsp:include page="Navigation.jsp" />
<div class="login-success-container">
  <h1>로그인 성공!</h1>
  <button onclick="location.href='MainPage.jsp'" class="main-page-button">메인 페이지 이동</button>
</div>

</body>
</html>
