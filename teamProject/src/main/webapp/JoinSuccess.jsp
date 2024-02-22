<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join Success</title>
<link rel="stylesheet" href="./resources/css/Join.css">
<style>
  .success-container {
    
    width: 320px; /* 조인 창과 동일한 최대 너비 */
    margin: 50px auto; /* 화면 중앙 배치 */
    padding: 20px;
    border: 3px solid #DD8888; /* 테두리 */
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* 그림자 효과 */
    background: #FFF8F8; /* 배경색 */
    text-align: center;
  }
  .success-container h1 {
  color: #C26A66; /* 색상 변경 */
  /* 기타 스타일 속성들 */
}


  .join-button {
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

  /* 여기에 BMHANNAPro 폰트를 적용하는 @font-face 규칙 추가 */
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
<div class="success-container">
  <h1>회원가입 성공!</h1>
  <button onclick="location.href='Login.jsp'" class="join-button">로그인 페이지 이동</button>
</div>

</body>
</html>
