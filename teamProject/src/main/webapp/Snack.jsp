<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList"%>
<%@ page import = "dto.Snack" %>
<%@ page import = "dao.SnackRepository" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
href="./resources/css/Snack.css">
<title>Snack</title>
</head>
<body>
<jsp:include page="Navigation.jsp" />

<%
      SnackRepository dao = SnackRepository.getInstance();
      ArrayList<Snack> listOfSnacks = dao.getAllSnacks();
%>

<div class="snack-container">

  <%
  	for (int i = 0; i < listOfSnacks.size(); i++){
        Snack snack = listOfSnacks.get(i);
        if (i == 10) {
        	break;
        }
  %>
  
  <div class="snack-wrapper">
    <div class="snack-bar"></div>
    <a class="snack" href="./DetailSnack.jsp?sname=<%=snack.getSname()%>" role="button">
      <img src="${pageContext.request.contextPath}\resources\css\images\<%=snack.getFilename()%>" alt="<%=snack.getSname()%>" class="img-hover-effect">
    </a>
    <div class="snack-name"><%=snack.getSname()%></div>
  </div>
  
  <%
	}
  %>
</div>


</body>
</html>