<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*,java.net.*,java.util.*" %>

<%@ include file="../db/db_conn.jsp"%> <!-- db 연동 -->


<%
    
    try {
        String joinid = request.getParameter("joinid");
        String joinpassword = request.getParameter("joinpassword");
        String joinname = request.getParameter("joinname");
        String joingender = request.getParameter("joingender");
        String joinbirth = request.getParameter("joinbirth");
        String joinmail = request.getParameter("joinmail");
        String joinphone = request.getParameter("joinphone");
        String joinaddress = request.getParameter("joinaddress");

    java.util.Date now = new java.util.Date();
    java.sql.Timestamp date = new java.sql.Timestamp(now.getTime());

         
            
        String sql = "insert into member values(?,?,?,?,?,?,?,?,?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, joinid);
        pstmt.setString(2, joinpassword);
        pstmt.setString(3, joinname);
        pstmt.setString(4, joingender);
        pstmt.setString(5, joinbirth);
        pstmt.setString(6, joinmail);
        pstmt.setString(7, joinphone);
        pstmt.setString(8, joinaddress);
        pstmt.setTimestamp(9, date);

        pstmt.executeUpdate(); // 최종 SQL 쿼리 실행
       rs = pstmt.executeQuery();
       response.sendRedirect("../login/login_user.jsp");
        
    } catch (SQLException e) {
        e.printStackTrace(); // 또는 예외를 로깅하거나 처리하는 방식을 선택
    } finally {
        // 자원 해제
        try {
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace(); // 또는 예외를 로깅하거나 처리하는 방식을 선택
        }
    }

%>
