<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Main Page</title>
<link rel="stylesheet"
href="./resources/css/MainPage.css">
</head>
<body>
<jsp:include page="Navigation.jsp" />

<div class="container">
  <div class="sidebar">
    <!-- 카테고리 버튼들 -->
    <button class="category-button"><a href="Snack.jsp">과자류 (제과)</a></button>
    <button class="category-button"><a href="Bread.jsp">빵류 (제빵)</a></button>
    <button class="category-button"><a href="Information.jsp">정보</a></button>
    <button class="category-button"><a href="Event.jsp">이벤트</a></button>
    <button class="category-button"><a href="board.jsp">커뮤니티</a></button>
  </div>

    <div class="main-content">
      <!-- 메인 콘텐츠 -->
      <h1>Monthly Recipe</h1>
      
		<div class="grid">
		  <div class="grid-item">
		    <a href="Snack.jsp">
		      <img src=".\resources\css\images\monthly_recipe1.jpg" alt="monthly_recipe1">
		    </a>
		  </div>
		  <div class="grid-item">
		    <a href="Bread.jsp">
		      <img src=".\resources\css\images\monthly_recipe2.jpg" alt="monthly_recipe2">
		    </a>
		  </div>
		  <div class="grid-item">
		    <a href="Bread.jsp">
		      <img src=".\resources\css\images\monthly_recipe3.jpg" alt="monthly_recipe3">
		    </a>
		  </div>
		  <div class="grid-item">
		    <a href="Bread.jsp">
		      <img src=".\resources\css\images\monthly_recipe4.jpg" alt="monthly_recipe4">
		    </a>
		  </div>
		</div>
     
     
    </div>

  <div class="event-section">
    <!-- 이벤트 관련 내용 추가 -->
    <h1>Events</h1>
	   	<div class = "event-grid-item">
	   		<a href="Event.jsp">
	   			<img src=".\resources\css\images\event.jpg" alt="event">
	   		</a>
	   	</div>
    </div>
    
  
</div>

</body>
</html>