<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Navigation Bar</title>
<style>
@font-face {
  font-family: 'BMHANNAPro';
  src: url('./resources/BMHANNAPro.woff') format('woff');
}
html, body {
  margin: 0;
  padding: 0;
  width: 100%;
  display: flex; /* Flexbox를 사용하여 자식 요소를 중앙에 배치 */
    flex-direction: column; /* 자식 요소들을 수직 방향으로 쌓음 */
}

/* 네비게이션 바 스타일 */
.navbar {
  background-color: #CF5C69; /* 배경색 설정 */
  overflow: hidden; /* 넘치는 콘텐츠를 숨김 */
  font-family: 'BMHANNAPro', sans-serif;
  width: 100%; /* 너비를 화면 가득 차게 설정 */
  position: fixed; /* 상단에 고정 */
  top: 0; /* 상단에 붙임 */
  left: 0; /* 왼쪽에 붙임 */
  z-index: 1000; /* 다른 요소들 위에 배치 */
}

/* 네비게이션 링크 스타일 */
.navbar a {
  float: left; /* 왼쪽 정렬 */
  display: block; /* 블록 레벨 요소로 설정 */
  color: #FEF2E2; /* 텍스트 색상 설정 */
  text-align: center; /* 텍스트 중앙 정렬 */
  padding: 14px 20px; /* 패딩 설정 */
  text-decoration: none; /* 텍스트 밑줄 제거 */
}

/* 로그인/가입 링크 오른쪽 정렬 */
.navbar a.login {
  float: right; /* 오른쪽 정렬 */
}

/* 링크에 마우스를 올렸을 때 */
.navbar a:hover {
  background-color: #DD8888; /* 배경색 변경 */
}
.navbar a.login:hover {
  background-color: transparent; /* 배경색 변경 없음 */
  cursor: default; /* 포인터 모양을 기본값으로 설정 */
}
.title-container {
	
    text-align: center; /* 중앙 정렬 */
    margin: 60px 0; /* 타이틀 주위 마진 */
    margin-top: 130px;
    
  }
 .clickable-title:hover {
  transform: scale(1.05); /* 호버 시 약간 확대 */
}
.clickable-title {
  cursor: pointer;
  transition: transform 0.3s ease;
  display: block;
  margin: 20px auto;
  width: 100%; /* 기본적으로 가용한 전체 너비를 사용 */
  max-width: 600px; /* 최대 너비 설정 */
}

/* 화면 크기가 768px 이상일 때 */
@media (min-width: 768px) {
  .clickable-title {
    max-width: 350px; /* 중간 크기의 디스플레이에서의 최대 너비 */
  }
}

/* 화면 크기가 992px 이상일 때 */
@media (min-width: 992px) {
  .clickable-title {
    max-width: 450px; /* 큰 디스플레이에서의 최대 너비 */
  }
}

/* 화면 크기가 1200px 이상일 때 */
@media (min-width: 1200px) {
  .clickable-title {
    max-width: 500px; /* 매우 큰 디스플레이에서의 최대 너비 */
  }
}
</style>

</head>
<body>

<div class="navbar">
  <a href="./MainPage.jsp">HOME</a>
  <a href="./Information.jsp">INFORMATION</a>
  <a href="./board.jsp">COMMUNITY</a>
  <a href="./Event.jsp">EVENT</a>
  <% 
    // 세션에서 로그인한 사용자의 ID를 가져옴
    String loggedInUserId = (String) session.getAttribute("loggedInUserId");
    if(loggedInUserId != null && !loggedInUserId.isEmpty()) {
        out.println("<a class='login'>" + loggedInUserId + "님 환영합니다!</a>");
        
    } else {
        out.println("<a href='./Login.jsp' class='login'>LOGIN/JOIN</a>");
    }
  %>
</div>

<div class="title-container">
  <!-- 클릭 시 메인 페이지로 이동 -->
  <a href="MainPage.jsp">
  <img src="./resources/css/images/title.png" alt="Delightful Sweets" style="border: none;"class="clickable-title"/>
</a>

</div>


</body>
</html>
