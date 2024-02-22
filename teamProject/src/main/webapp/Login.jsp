<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet"
href="./resources/css/Login.css">
<title>Login</title>
</head>
<body>
<jsp:include page="Navigation.jsp" />
<div class="login-container">
  <h2>LOGIN</h2>
  <form action="loginAction.jsp" method="post"> <!-- 'loginAction'는 서버의 로그인 처리 경로 -->
    <input type="text" name="id" class="form-input" placeholder="ID" required>
    <input type="password" name="password" class="form-input" placeholder="PASSWORD" required>
    <button type="submit" class="form-button">LOGIN</button>
  </form>
  <a href="Join.jsp" class="join-link">JOIN</a> <!-- 'join.jsp'로 이동하는 링크 -->
</div>
</body>
</html>