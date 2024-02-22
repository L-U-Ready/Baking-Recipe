<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList"%>
<%@ page import = "dto.Bread" %>
<%@ page import = "dao.BreadRepository" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
href="./resources/css/Snack.css">
<title>Bread</title>
</head>
<body>
<jsp:include page="Navigation.jsp" />

<%
      BreadRepository dao = BreadRepository.getInstance();
      ArrayList<Bread> listOfBreads = dao.getAllBreads();
%>

<div class="snack-container">

  <%
  	for (int i = 0; i < listOfBreads.size(); i++){
        Bread bread = listOfBreads.get(i);
        if (i == 10) {
        	break;
        }
  %>
  
  <div class="snack-wrapper">
    <div class="snack-bar"></div>
    <a class="snack" href="./DetailBread.jsp?bname=<%=bread.getBname()%>" role="button">
      <img src="${pageContext.request.contextPath}\resources\css\images\<%=bread.getFilename()%>" alt="<%=bread.getBname()%>" class="img-hover-effect">
    </a>
    <div class="snack-name"><%=bread.getBname()%></div>
  </div>
  
  <%
	}
  %>
</div>


</body>
</html>