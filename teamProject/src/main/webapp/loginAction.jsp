<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dao.UserRepository"%>
<%@ page import="dto.User"%>
<%
    // UserRepository 인스턴스 생성
    UserRepository userRepository = UserRepository.getInstance();
    // 요청으로부터 ID와 비밀번호를 받아옴
    String id = request.getParameter("id");
    String password = request.getParameter("password");

    // 사용자 확인
    boolean isValidUser = userRepository.checkUser(id, password);

    if (isValidUser) {
        // 로그인 성공: LoginSuccess.jsp로 리다이렉트
        request.getSession().setAttribute("loggedInUserId", id);
        response.sendRedirect("LoginSuccess.jsp");
    } else {
        // 로그인 실패: 경고 메시지를 보여주고 로그인 페이지로 리다이렉트
%>
<script>
    alert("없는 회원입니다.");
    history.back(); 
</script>
<%
    }
%>
