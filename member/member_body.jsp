<html>
    <head>
<%@ page contentType="text/html; charset=utf-8"%>

<!-- 검색 추가 구현 -->
<%@ page import="java.io.*,java.net.*,java.util.*" %>
<%@ page import="java.sql.*"%> <!-- db 연동 -->
<%@ page import="example.*" %>





<!-- 추가 구현 부분 (검색) -->
 <script>
    function addsearch() {
        var searchText = document.getElementById('searchText').value;
        var encodedSearchText = encodeURIComponent(searchText);
        var searchURL = 'https://section.blog.naver.com/Search/Post.naver?pageNo=1&rangeType=ALL&orderBy=sim&keyword=' 
        + encodedSearchText; window.location.href = searchURL;
    }
</script>

  
    
<div style="text-align: center;">
    <img src="../image/7979.png" alt="7979 Image">
    <h1>
        사용자 페이지 로그인 완료!!
    </h1>
</div>
 <div class="row" align="center">
     
     <div class="container" style="padding: 40px;">
    <div class="row">
        <%
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        // Establish the database connection
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog_20190686", "root", "20190686");

        String sql = "select * from member";
        pstmt = conn.prepareStatement(sql);
        rs = pstmt.executeQuery();

        // Display the ResultSet contents as text
        out.println("<table border='1'>");
        out.println("<tr><th>ID</th><th>Password</th><th>Name</th><th>Gender</th><th>Birth</th><th>Mail</th><th>Phone</th><th>Address</th><th>Registration Date</th></tr>");
        
        while (rs.next()) {
            out.println("<tr>");
            out.println("<td>" + rs.getString("joinid") + "</td>");
            out.println("<td>" + rs.getString("joinpassword") + "</td>");
            out.println("<td>" + rs.getString("joinname") + "</td>");
            out.println("<td>" + rs.getString("joingender") + "</td>");
            out.println("<td>" + rs.getString("joinbirth") + "</td>");
            out.println("<td>" + rs.getString("joinmail") + "</td>");
            out.println("<td>" + rs.getString("joinphone") + "</td>");
            out.println("<td>" + rs.getString("joinaddress") + "</td>");
            out.println("<td>" + rs.getTimestamp("date") + "</td>");
            out.println("</tr>");
        }

        out.println("</table>");
    } catch (SQLException e) {
        e.printStackTrace();
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    } finally {
        // Close resources in the reverse order of their creation
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

        <div class="col-md-10 offset-md-1">
            <form method="post" name="search" action="searchbbs.jsp">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="검색어 입력" id="searchText" maxlength="100">
                    <div class="input-group-append">
                        <button type="submit" class="btn btn-success">검색</button>
                    </div>
                </div>
            </form>
        </div>
    </div>


<div id="searchResult"></div>
    
   
        

        


<hr>
</div>
<style>
    .btn-secondary { 
        background-color: #2ecc71;
        border-color: #2ecc71;
    }
    .col-md-4{
        border-bottom: 2px solid #ccc; 
        margin-bottom: 80px; 
    }

</style>



<div class="container">
    <div class="card bg-dark text-blue">
        <img src="../image/7979.jpg" class="card-img" alt="...">
        <div class="card-img-overlay">
            <h5 class="card-title">✔️이웃새글✔️</h5>
            <p class="card-text">⭐글 보러가기⭐</p>
        </div>
    </div>
</div>

<div class="container">
    <div class="list-group">
        <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
            블로그 구경하기</a>
        <a href="#" class="list-group-item list-group-item-action">공감하기</a>
        <a href="#" class="list-group-item list-group-item-action">댓글달기</a>
    </div>
</div>
        </div>
    
</html>

    
