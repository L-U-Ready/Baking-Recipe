<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*"%>
<%@ page import="dto.User" %>
<%@ page import="dao.UserRepository" %>


<%
    // UserRepository �ν��Ͻ� ����. �̱������� ������.
    UserRepository userRepository = UserRepository.getInstance();

    String id = request.getParameter("id");
    String password = request.getParameter("password");

    // ����ڰ� �̹� �����ϴ��� Ȯ��
    boolean userExists = userRepository.checkUserExists(id);

    if(userExists) {
        // ����ڰ� �̹� �����ϸ� ��� �޽����� ���� ���� �������� ���ư�
%>
<script type="text/javascript">
    alert("�̹� �����ϴ� ȸ���Դϴ�.");
    history.back();
</script>
<%
    } else {
        // ���ο� ����ڸ� ���
        userRepository.registerUser(id, password);

        // ȸ������ ���� �������� �����̷�Ʈ
        response.sendRedirect("JoinSuccess.jsp");
    }
%>