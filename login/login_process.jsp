<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>

<%
    // 데이터베이스 연결
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        String url = "jdbc:mysql://localhost:3306/blog_20190686";
        String user = "root";
        String password = "20190686";

        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, password);

        // 사용자로부터 전달된 파라미터 가져오기
        String joinid = request.getParameter("id");
        String joinpassword = request.getParameter("password");

        // SQL 쿼리 작성 및 실행
        String sql = "SELECT * FROM member WHERE joinid = ? AND joinpassword = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, joinid);
        pstmt.setString(2, joinpassword);

        rs = pstmt.executeQuery();

        if (rs.next()) {
            // 로그인 성공
            session.setAttribute("sessionId", joinid);
            response.sendRedirect("../member/member_body.jsp");
        } else {
            // 로그인 실패
            response.sendRedirect("../login/login_user.jsp?error=true");
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        // 리소스 해제
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
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
%>
