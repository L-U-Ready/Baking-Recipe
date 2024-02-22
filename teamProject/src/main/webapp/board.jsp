<%@ page import="dao.BoardRepository" %>
<%@ page import="dao.FileBoardRepository" %>
<%@ page import="dto.Board" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

<%@ page contentType="text/html; charset=utf-8" %>

<%
    FileBoardRepository boardRepository = FileBoardRepository.getInstance();

    // 게시글 추가
    if (request.getParameter("action") != null && request.getParameter("action").equals("add")) {
        String title = request.getParameter("title");
    	String author = request.getParameter("author");
        String password = request.getParameter("password");
        String content = request.getParameter("content");
        
        author = (author != null && author.length() > 10) ? author.substring(0, 10) : author;
        content = content.length() > 140 ? content.substring(0, 140) : content;

        if (title!=null && author != null && password != null && content != null) {
            boardRepository.addBoard(request.getParameter("title"), author, password, content);
            // 글 추가 후에 입력 필드 초기화
            response.sendRedirect("board.jsp");
            return;
        }
    }

    // 게시글 삭제
	if (request.getParameter("action") != null && request.getParameter("action").equals("delete")) {
	    String title = request.getParameter("title");
    	String author = request.getParameter("author");
    	String deletePassword = request.getParameter("deletePassword"); // 수정된 부분

    if (title != null && author != null && deletePassword != null) {
        boardRepository.deleteBoard(title, deletePassword); // 수정된 부분
        // 글 삭제 후에 입력 필드 초기화
        response.sendRedirect("board.jsp");
        return;
    }
}


    // 모든 게시글 가져오기
    List<Board> boardList = boardRepository.getAllBoards();
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="./resources/css/Login.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Simple Board</title>
    <script>
    	function limitTextarea(element){
    		// 최대 글자수를 140자로 제한
    		if(element.value.length>140){
    			element.value=element.value.substring(0, 140);
    		}
    	}
    	 function limitAuthor(element) {
             // 최대 글자수를 10으로 제한
             if (element.value.length > 10) {
                 element.value = element.value.substring(0, 10);
             }
         }
    	 window.onload = function() {
    	      document.getElementById("password").value = "";
    	   };
    </script>
    <style>
    @font-face {
  		font-family: 'BMHANNAPro';
  		src: url('./resources/BMHANNAPro.woff') format('woff');
		}
        body {
            font-family: 'BMHANNAPro', sans-serif;
        }

        .board-container {
            display: flex;
            flex-wrap: wrap;
            margin: -10px;
        }

        .board-item {
            min-width: 30%; /* 한 줄에 4개씩 보이도록 설정 (100% / 4 - 2%) */
            margin: 1%; /* 각 박스 사이의 간격 */
            border: 1px solid #ccc;
            box-sizing: border-box;
            padding: 10px;
        }

        .board-content {
            margin-top: 10px;
        }

        .delete-form {
            margin-top: 10px;
            text-align: center;
        }
        
        .write-box {
            background-color: #e9b1b0;
            padding: 20px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .write-textarea {
            width: 100%;
            height: 200px;
        }
    </style>
</head>
<body>
	<jsp:include page="Navigation.jsp"/>
	<%
    // 이전에 입력한 값들을 세션에서 가져오기
    String previousTitle = (String) session.getAttribute("previousTitle");
    String previousAuthor = (String) session.getAttribute("previousAuthor");
    String previousContent = (String) session.getAttribute("previousContent");
	%>
    <div class="write-box">
    <h3>Write a Post</h3>
    <form action="board.jsp?action=add" method="post" autocomplete="off">
        <!-- 이전에 입력한 값들을 폼에 채우기 -->
        <label for="title">Title:</label>
        <input type="text" name="title" value="<%= previousTitle %>" required>
        <br>
        <label for="author">Author:</label>
        <input type="text" name="author" value="<%= previousAuthor %>" required>
        <br>
        <label for="content">Content:</label>
        <textarea name="content" class="write-textarea" required><%= previousContent %></textarea>
        <br>
        <label for="password">Password:</label>
        <input type="password" name="password" autocomplete="new-password" required>
        <br>
        <input type="submit" value="Add Post">
    </form>
    </div>

    <hr>

    <h3>All Posts</h3>
    <div class="board-container">
    <% for (Board board : boardList) { 
    	if(!board.isDeleted()){	
    %>
    	<div class="board-item">
        <p>
            <strong><%=board.getTitle() %></strong> <br>
            <%= board.getAuthor() %>			
			<div class="board-content">
            	<%= board.getContent() %>
            </div>
            <br>
            <div class="delete-form">
            <!-- 글 삭제 폼 -->
            <form action="board.jsp?action=delete" method="post">
                <input type="hidden" name="title" value="<%= board.getTitle() %>">
    			<input type="hidden" name="author" value="<%= board.getAuthor() %>">
    			<label for="deletePassword">Password:</label>
    			<input type="password" name="deletePassword" required>
    			<!-- deletePassword에 해당하는 값을 전달 -->
    			<!-- <input type="hidden" name="password" value="<%= board.getPassword() %>"> -->
    			<input type="submit" value="Delete">
			</form>
			</div>
        </div>
        <hr>
    <% 		}
    	} 
    %>
    </div>
    <%
    // 사용자가 입력한 값들을 세션에 저장
    session.setAttribute("previousTitle", request.getParameter("title"));
    session.setAttribute("previousAuthor", request.getParameter("author"));
    session.setAttribute("previousContent", request.getParameter("content"));
%>
</body>
</html>
