<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList"%>
<%@ page import = "dto.Snack" %>
<%@ page import = "dao.SnackRepository" %>
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
      String sname = request.getParameter("sname");
      SnackRepository dao = SnackRepository.getInstance();
      Snack snack = dao.getSnackByName(sname);
      
  
      ArrayList<Snack> allSnacks = dao.getAllSnacks(); // 모든 Snack 객체를 가져옵니다.
      ArrayList<Snack> otherSnacks = new ArrayList<>(); // sname과 일치하지 않는 Snack 객체를 저장할 리스트

      // 모든 Snack 객체를 순회하며 sname과 일치하지 않는 객체를 찾습니다.
      for(Snack othersnack : allSnacks) {
        if(!othersnack.getSname().equals(sname)) {
          otherSnacks.add(othersnack); // 조건에 맞지 않는 객체를 리스트에 추가
        }
      }
  
%>
<div class="main-container">

	<div class="side-content">
    	
    </div>
  
	<div class="detail-container">
		<div class="detail-container">
		
		  <div class="detail-wrapper">
		  <div class="detail-name"><%=snack.getSname()%></div>
		    <div class="detail-bar"></div>
			<div class="detail">
			  <img src="${pageContext.request.contextPath}\resources\css\images\<%=snack.getFilename()%>" alt="<%=snack.getSname()%>">
			</div>
		  </div>
		  
		  <div class="detail-wrapper">
		  <div class="detail-name"></div>
		  	<div class="detail-text">
		  		<p>[소요 시간]<br><%= snack.getTime() %>
		  		<p>[재료]<br><%= snack.getIngredient() %>
		  	</div>
		  </div>
		</div>
		<div class="detail-container">
		
		  <div class="recipe-container">
		    <img src="${pageContext.request.contextPath}\resources\css\images\<%=snack.getRecipe()%>" alt="<%=snack.getRecipe()%>">
		  </div>
		</div>
	</div>
		
	<div class="side-content">
		<div class="another-text">다른 레시피 보기</div>
		<%
		  	for (int i = 0; i < otherSnacks.size(); i++){
		        Snack othersnack = otherSnacks.get(i);
		%>
		<div class="another-wrapper">
			<div class="another-bar"></div>
			<a class="another" href="./DetailSnack.jsp?sname=<%=othersnack.getSname()%>" role="button">
      			<img src="${pageContext.request.contextPath}\resources\css\images\<%=othersnack.getFilename()%>" alt="<%=snack.getSname()%>" class="img-hover-effect">
    		</a>
		</div>
		  <%
			}
		  %>
	</div>

</div>

</body>
</html>
