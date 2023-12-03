<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page import="java.sql.*" %>

<%
    request.setCharacterEncoding("utf-8");

    String joinid = request.getParameter("joinid");
    String joinpassword = request.getParameter("joinpassword");

    // 데이터베이스 연결 및 로그인 처리
    try {
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog_20190686", "root", "20190686");
        String sql = "SELECT * FROM member WHERE joinid = ? AND joinpassword = ?";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, joinid);
        pstmt.setString(2, joinpassword);

        ResultSet resultSet = pstmt.executeQuery();

        if (resultSet.next()) {
            // 로그인 성공
            session.setAttribute("sessionId", joinid);
            response.sendRedirect("../member/member_body.jsp");
        }

        // Close resources in the reverse order of their creation
        if (resultSet != null) {
            resultSet.close();
        }
        if (pstmt != null) {
            pstmt.close();
        }
        if (conn != null) {
            conn.close();
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>
