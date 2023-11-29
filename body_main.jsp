<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />
<!-- 검색 추가 구현 -->
<%@ page import="java.io.*,java.net.*,java.util.*" %>
<%@ page import="java.sql.*"%> <!-- db 연동 -->
<%@ include file="db/db_conn.jsp"%> <!-- db 연동 -->




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
    <img src="image/7979.png" alt="7979 Image">
</div>

<div class="container" style="padding: 40px;">
    <div class="row">
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
    
    <div class="row" align="center">
        <%
            String sql = "select * from product";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();

            String[] Titles = {
                "🍽️🍴맛집 추천1️⃣",
                 "🍽️🍴맛집 추천2️⃣",
                 "🍽️🍴맛집 추천3️⃣",
                "☕🍹카페 추천1️⃣",
                "☕🍹카페 추천2️⃣",
                "☕🍹카페 추천3️⃣",
                "😝😊갈만한 곳1️⃣",
                "😝😊갈만한 곳2️⃣",
                "😝😊갈만한 곳3️⃣",
                    "추가 테스트1️⃣",
                "추가 테스트2️⃣",
                "추가 테스트3️⃣",
                 "추가 테스트4️⃣",
                 "추가 테스트5️⃣",
                 "추가 테스트6️⃣",
                
            };
        %>
        

        <div class="row justify-content-center">
            <%
                int titleIndex = 0;
                while (rs.next()) {
            %>
           <div class="col-md-4" style="padding: 40px;">
                <h2><%= Titles[titleIndex] %></h2>
                <div class="card bg-dark text-white">
                    <img src="admin/image/product/<%= rs.getString("p_filename") %>" class="card-img" alt="...">
                    <div class="card-img-overlay">
                        <h5 class="card-title"><%= rs.getString("p_name") %></h5>
                        <p class="card-text">출처 : 칠구 블로그</p>
                    </div>
                </div>

                <h3>📌<%= rs.getString("p_name") %></h3>
                <p>📁<%= rs.getString("p_description") %></p>
                <p><%= rs.getString("p_unitPrice") %>🪙</p>
                <p><a href="product_detail.jsp?id=<%= rs.getString("p_id") %>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;</a></p>
            </div>
            <%
                    titleIndex++;
                    if (titleIndex >= Titles.length) {
                        titleIndex = 0; // Reset index to loop back to the first title
                    }
                }
                // Close the database connections
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            %>
        </div>
    </div>





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
        <img src="image/7979.jpg" class="card-img" alt="...">
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
