<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Join</title>
<link rel="stylesheet"
href="./resources/css/Join.css">
</head>
<body>
<jsp:include page="Navigation.jsp" />
<div class="background-container">
	<div class="join-container">
  <h2>JOIN</h2>
  <form action="JoinProcess.jsp" method="post"> <!-- 'register'는 서버의 회원가입 처리 경로 -->
    <input type="text" name="id" class="form-input" placeholder="ID" required>
    <input type="password" name="password" class="form-input" placeholder="PASSWORD" required>
    <button type="submit" class="form-button">JOIN</button>
  </form>
</div>

</div>


</body>
</html>