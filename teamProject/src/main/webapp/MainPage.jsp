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
    <!-- ī�װ� ��ư�� -->
    <button class="category-button"><a href="Snack.jsp">���ڷ� (����)</a></button>
    <button class="category-button"><a href="Bread.jsp">���� (����)</a></button>
    <button class="category-button"><a href="Information.jsp">����</a></button>
    <button class="category-button"><a href="Event.jsp">�̺�Ʈ</a></button>
    <button class="category-button"><a href="board.jsp">Ŀ�´�Ƽ</a></button>
  </div>

    <div class="main-content">
      <!-- ���� ������ -->
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
    <!-- �̺�Ʈ ���� ���� �߰� -->
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