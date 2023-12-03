<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.sql.*"%>
<%@ page import="java.time.LocalDate" %>
<%@ include file="../db/db_conn.jsp" %>

<%
    // 앞에서 id 받아오기
    request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String birth = request.getParameter("birth");
	String mail = request.getParameter("mail");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
    LocalDate _regist_day = LocalDate.now();
    String  regist_day = String.valueOf(_regist_day);

    out.println(joinid + joinpassword + joinname + joingender);

    String sql = "UPDATE member SET joinid=?, joinname=?, joinpassword=?, joinbirth=?, joingender=?, joinmail=?, joinphone=?, joinaddress=?
    pstmt = conn.prepareStatement(sql); // 쿼리문 몸체만 넣기

    pstmt.setString(1, joinid);
    pstmt.setString(2, joinname); // 각 필드 설정 - ? 순서대로
    pstmt.setString(3, joinpassword);
    pstmt.setString(4, joinbirth);
    pstmt.setString(5, joingender);
    pstmt.setString(6, joinmail);
    pstmt.setString(7, joinphone);
    pstmt.setString(8, joinaddress);
   

    pstmt.executeUpdate(); // 최종 SQL 쿼리 실행

    if (pstmt != null)
        pstmt.close();
    if (conn != null)
        conn.close();

    response.sendRedirect("member_view.jsp?edit=m_update");
%>