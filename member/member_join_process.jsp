<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>

<%
    // 변수 선언
    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        // 데이터베이스 연결
        String url = "jdbc:mysql://localhost:3306/blog_20190686";
        String user = "root";
        String password = "20190686";

        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, password);

        // 사용자로부터 전달된 파라미터 가져오기
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

        // SQL 쿼리 작성 및 실행
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
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        // 리소스 해제
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

    // 회원가입 후 어떤 페이지로 이동할지 정의 (예: index.jsp)
    response.sendRedirect("../login/login_user.jsp");
%>
