<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.sql.*"%>
<%@ include file="../db/db_conn.jsp" %>

<%
    // 앞에서 받아온 id
    String joinid = request.getParameter("joinid");
    
    // db 연동
    String sql = "select * from member"; // sql문 -- 전체 조회
	pstmt = conn.prepareStatement(sql); //객체생성
	rs = pstmt.executeQuery(); //쿼리문실행

    while (rs.next()) {
        String test = rs.getString("joinid");
        
        if(joinid.equals(test)) {
            String sql1 = "delete from member where joinid = ?";
            pstmt = conn.prepareStatement(sql1);
            pstmt.setString(1, joinid);
            
            pstmt.executeUpdate(); 
            
        }
    }
    response.sendRedirect("member_view.jsp?edit=m_delete");
%>