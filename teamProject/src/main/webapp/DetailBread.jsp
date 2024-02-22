<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList"%>
<%@ page import = "dto.Bread" %>
<%@ page import = "dao.BreadRepository" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./resources/css/Detail.css">
<title>Detail</title>
</head>
<body>
<jsp:include page="Navigation.jsp" />

<%
      String bname = request.getParameter("bname");
      BreadRepository dao = BreadRepository.getInstance();
      Bread bread = dao.getBreadByName(bname);
      
  
      ArrayList<Bread> allBreads = dao.getAllBreads(); // 모든 Snack 객체를 가져옵니다.
      ArrayList<Bread> otherBreads = new ArrayList<>(); // sname과 일치하지 않는 Snack 객체를 저장할 리스트

      // 모든 Snack 객체를 순회하며 sname과 일치하지 않는 객체를 찾습니다.
      for(Bread otherbread : allBreads) {
        if(!otherbread.getBname().equals(bname)) {
          otherBreads.add(otherbread); // 조건에 맞지 않는 객체를 리스트에 추가
        }
      }
  
%>
<div class="main-container">

	<div class="side-content">
    	
    </div>
  
	<div class="detail-container">
		<div class="detail-container">
		
		  <div class="detail-wrapper">
		  <div class="detail-name"><%=bread.getBname()%></div>
		    <div class="detail-bar"></div>
			<div class="detail">
			  <img src="${pageContext.request.contextPath}\resources\css\images\<%=bread.getFilename()%>" alt="<%=bread.getBname()%>">
			</div>
		  </div>
		  
		  <div class="detail-wrapper">
		  <div class="detail-name"></div>
		  	<div class="detail-text">
		  		<p>[소요 시간]<br><%= bread.getTime() %>
		  		<p>[재료]<br><%= bread.getIngredient() %>
		  	</div>
		  </div>
		</div>
		<div class="detail-container">
		
		  <div class="recipe-container">
		    <img src="${pageContext.request.contextPath}\resources\css\images\<%=bread.getRecipe()%>" alt="<%=bread.getRecipe()%>">
		  </div>
		</div>
	</div>
		
	<div class="side-content">
		<div class="another-text">다른 레시피 보기</div>
		<%
		  	for (int i = 0; i < otherBreads.size(); i++){
		        Bread otherbread = otherBreads.get(i);
		%>
		<div class="another-wrapper">
			<div class="another-bar"></div>
			<a class="another" href="./DetailBread.jsp?bname=<%=otherbread.getBname()%>" role="button">
      			<img src="${pageContext.request.contextPath}\resources\css\images\<%=otherbread.getFilename()%>" alt="<%=bread.getBname()%>" class="img-hover-effect">
    		</a>
		</div>
		  <%
			}
		  %>
	</div>

</div>

</body>
</html>
