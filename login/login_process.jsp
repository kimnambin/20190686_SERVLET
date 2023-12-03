<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%@ include file="../db/db_conn.jsp" %>

<%
    
    request.setCharacterEncoding("UTF-8");
    String j_username = request.getParameter("j_username");
    String j_password = request.getParameter("j_password");

   
    String sql = "SELECT * FROM member WHERE joinid = ?"; 
    pstmt = conn.prepareStatement(sql); 
    pstmt.setString(1, j_username); 
    rs = pstmt.executeQuery();

    
    if (rs.next()) {
        String storedPassword = rs.getString("joinpassword");
        // 여기서 storedPassword와 j_password를 비교하여 로그인 성공 여부 확인
        if (storedPassword.equals(j_password)) {
            // 로그인 성공 시
            response.sendRedirect("../index.jsp");
        } else {
            // 비밀번호 불일치 시
            // 로그인 실패 처리 또는 에러 메시지 표시
        }
    } else {
        // 사용자가 입력한 아이디에 해당하는 계정이 없을 때
        // 로그인 실패 처리 또는 에러 메시지 표시
    }
%>
