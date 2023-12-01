<%@ page contentType="text/html; charset=utf-8"%>

<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.Enumeration" %>

<!-- db 연동 -->
<%@ page import="java.sql.*"%>


<%
    request.setCharacterEncoding("UTF-8");

   

    String joinid = multi.getParameter("joinid");
    String joinpassword = multi.getParameter("joinpassword");
    String joinname = multi.getParameter("joinname");
    String joingender = multi.getParameter("joingender");
    String joinbirth = multi.getParameter("joinbirth");
    String joinmail = multi.getParameter("joinmail");
    String joinphone = multi.getParameter("joinphone");
    String joinaddress = multi.getParameter("joinaddress");
   
   

  java.util.Date now = new java.util.Date();
    java.sql.Date date = new java.sql.Date(now.getTime());

   

    String sql = "insert into member values(?,?,?,?,?,?,?,?,?,?)";
    pstmt = conn.prepareStatement(sql); // 쿼리문 몸체만 넣기
    pstmt.setString(1, joinid); // 각 필드 설정 - ? 순서대로
    pstmt.setString(2, joinpassword);
    pstmt.setString(3, joinname);
    pstmt.setString(4, joingender);
    pstmt.setString(5, joinbirth);
    pstmt.setString(6, joinmail);
    pstmt.setString(7, joinphone);
    pstmt.setString(8, joinaddress);
     pstmt.setTimestamp(9, date);
    
    pstmt.executeUpdate(); // 최종 SQL 쿼리 실행
    if (pstmt != null)
        pstmt.close();
    if (conn != null)
        conn.close();

    response.sendRedirect("../index.jsp");
%>
