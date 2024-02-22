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
  <form action="loginAction.jsp" method="post"> <!-- 'loginAction'�� ������ �α��� ó�� ��� -->
    <input type="text" name="id" class="form-input" placeholder="ID" required>
    <input type="password" name="password" class="form-input" placeholder="PASSWORD" required>
    <button type="submit" class="form-button">LOGIN</button>
  </form>
  <a href="Join.jsp" class="join-link">JOIN</a> <!-- 'join.jsp'�� �̵��ϴ� ��ũ -->
</div>
</body>
</html>