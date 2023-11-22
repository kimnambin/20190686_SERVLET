<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />
<!-- 검색 추가 구현 -->
<%@ page import="java.io.*,java.net.*,java.util.*" %>
<%@ page import="java.sql.*"%> <!-- db 연동 -->
<%@ include file="db/db_conn.jsp"%> <!-- db 연동 -->

<%! String greeting = "⬇️추천 추천⬇️";
	String tagline = "하단 페이지 : 확인"; %>

<div class="jumbotron" align="center">
	<div class="container" align="center">
		<h3 class="display-4"><%= greeting %></h3>
	</div>
</div>

<!-- 추가 구현 부분 (검색) -->
 <script>
    function addsearch() {
        var searchText = document.getElementById('searchText').value;
        var encodedSearchText = encodeURIComponent(searchText);
        var searchURL = 'https://section.blog.naver.com/Search/Post.naver?pageNo=1&rangeType=ALL&orderBy=sim&keyword=' 
        + encodedSearchText; window.location.href = searchURL;
    }
</script>

<div class="container">
   

   <!-- % 넣어야함
    int productsPerGroup = 3;
    String[] groupTitles = {
        "<div class='list-group-item'>🍽️맛집 추천🍴</div>",
        "<div class='list-group-item'>☕카페 추천🍹</div>",
        "<div class='list-group-item'>😝갈만한 곳 추천😊</div>",
    };

    int groupNumber = 0; // 그룹 번호 초기화
    for (int i = 0; i < listOfProducts.size(); i += productsPerGroup, groupNumber++) {
    %>
    <div class="row justify-content-center">
        <h2>= groupTitles[groupNumber] %></h2>
    </div>-->
    <div class="row" align="center">
        <%
		String sql = "select * from product"; // 조회
		pstmt = conn.prepareStatement(sql); // 연결 생성
		rs = pstmt.executeQuery(); // 쿼리 실행
		while (rs.next()) { // 결과 ResultSet 객체 반복
	%>
       <!-- %넣어야함
        for (int j = i; j < Math.min(i + productsPerGroup, listOfProducts.size()); j++) {
            Product product = listOfProducts.get(j);
        -->
        <div class="col-md-4">
            <div class="card bg-dark text-white">
                <img src="admin/image/product/<%=rs.getString("p_filename")%>" class="card-img" alt="...">
                <div class="card-img-overlay">
                    <h5 class="card-title">
    <%=rs.getString("p_name")%>
</h5>

                    <p class="card-text">출처 : 칠구 블로그</p>
                </div>
            </div>
            
		<h3><%=rs.getString("p_name")%></h3>
		<p><%=rs.getString("p_description")%>
		<p><%=rs.getString("p_unitPrice")%>⚕️원
		<p><a href="product_detail.jsp?id=<%=rs.getString("p_id")%>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>
        </div>
       
    
   <%
			} // 반복문 끝난 이후 db 연결 종료	
		if (rs != null)
			rs.close();
 		if (pstmt != null)
 			pstmt.close();
 		if (conn != null)
			conn.close();
	%>
</div>

<hr>
</div>
<style>
    .btn-secondary { 
        background-color: #2ecc71;
        border-color: #2ecc71;
    }
</style>

<div class="row">
    <div class="col-md-4 offset-md-4">
        <form method="post" name="search" action="searchbbs.jsp">
            <div class="form-group">
                <select class="form-control" name="searchField">
                    <option value="0">글</option>
                    <option value="bbsTitle">블로그</option>
                    <option value="userID">작성자</option>
                </select>
            </div>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="검색어 입력" id="searchText" maxlength="100">
            </div>
            <button type="submit" class="btn btn-success">검색</button> <!-- 버튼 타입 수정 -->
        </form>
    </div>
</div>

<div id="searchResult"></div>

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
