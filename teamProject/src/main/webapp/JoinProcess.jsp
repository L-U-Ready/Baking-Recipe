<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*"%>
<%@ page import="dto.User" %>
<%@ page import="dao.UserRepository" %>


<%
    // UserRepository 인스턴스 생성. 싱글톤으로 가정함.
    UserRepository userRepository = UserRepository.getInstance();

    String id = request.getParameter("id");
    String password = request.getParameter("password");

    // 사용자가 이미 존재하는지 확인
    boolean userExists = userRepository.checkUserExists(id);

    if(userExists) {
        // 사용자가 이미 존재하면 경고 메시지를 띄우고 이전 페이지로 돌아감
%>
<script type="text/javascript">
    alert("이미 존재하는 회원입니다.");
    history.back();
</script>
<%
    } else {
        // 새로운 사용자를 등록
        userRepository.registerUser(id, password);

        // 회원가입 성공 페이지로 리다이렉트
        response.sendRedirect("JoinSuccess.jsp");
    }
%>