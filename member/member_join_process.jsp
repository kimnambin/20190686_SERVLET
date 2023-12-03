<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.sql.*"%>

<%@ page import="java.time.LocalDate" %>


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

        LocalDate _regist_day = LocalDate.now();
        String regist_day = String.valueOf(_regist_day);

        String sql = "INSERT INTO member VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, joinid);
        pstmt.setString(2, joinpassword);
        pstmt.setString(3, joinname);
        pstmt.setString(4, joingender);
        pstmt.setString(5, joinbirth);
        pstmt.setString(6, joinmail);
        pstmt.setString(7, joinphone);
        pstmt.setString(8, joinaddress);
        pstmt.setString(9, regist_day);  // VARCHAR 필드에 대해 setString 사용

        pstmt.executeUpdate(); // SQL 쿼리 실행

       
    }
    catch(Exception e) {
        e.printStackTrace();
    }
    finally {
        if (pstmt != null) {
            try {
                pstmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
 response.sendRedirect("../index.jsp");
%>
