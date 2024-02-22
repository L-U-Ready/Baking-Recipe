<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>

<style>
	
	
	#header {
	position: relative;
    text-align: center;
    }
    #header img {
    	width: 100%;
    	height: auto;
    }
    #header .text-overly {
    	position: absolute;
    	top: 30%;
    	left: 10%;
    	tranform: translate(-25%, -25%);
    	color: #e9b1b0;
    	font-size: 125px;
    	font-weight: bold;
    	font-family: 'Cooper Black', sans-serif;
    	text-shadow: -1px -1px 1px white, 1px -1px 1px white, -1px 1px 1px white, 1px 1px 1px white;
    }
</style>
<title>Main Index</title>
</head>
<body>
	<jsp:include page="Navigation.jsp" />
	<div id="header">
    	<img src="./resources/header_cupcakes.jpg" alt="Header Image">
    	<div class="text-overly">Baking Recipe</div>
    </div>
</body>
</html>