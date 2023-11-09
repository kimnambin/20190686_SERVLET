<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

<%! String greeting = "⬇️추천 추천⬇️";
	String tagline = "하단 페이지 : 확인"; %>

<div class="jumbotron" align="center">
	<div class="container" align="center">
		<h3 class="display-4"><%= greeting %></h3>
	</div>
</div>

<div class="container">
	<%
	ArrayList<Product> listOfProducts = productDAO.getAllProducts(); // 리스트에 상품 전체 정보를 얻어온다.
	%>

	<%
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
	<h2><%= groupTitles[groupNumber] %></h2>
</div>
<div class="row" align="center">
	<%
	for (int j = i; j < Math.min(i + productsPerGroup, listOfProducts.size()); j++) {
		Product product = listOfProducts.get(j);
	%>
	<div class="col-md-4">
		<div class="card bg-dark text-white">
						
                            <img src="image/product/<%=product.getFilename()%>" class="card-img" alt="...">

						<div class="card-img-overlay">
							<h5 class="card-title">
								<%= product.getImageText() %>
							</h5>
							<p class="card-text">출처 : 칠구 블로그</p>
						</div>
					</div>
		<h3><%= product.getPname() %></h3>
		<p><%= product.getDescription() %></p>
					<p><%= product.getUnitPrice() %>💲</p>
					<p><a href="product_detail.jsp?id=<%= product.getProductId() %>"
							class="btn btn-secondary" role="button">상세 정보 &raquo;</a></p>
	</div>
	<%
	}
	%>
</div>
<%
}
%>

</div>

<hr>

<div class="row">
	<div class="col-md-4 offset-md-4">
		<form method="post" name="search" action="searchbbs.jsp">
			<div class="form-group">
				<select class="form-control" name="searchField">
					<option value="0">주제</option>
					<option value="bbsTitle">제목</option>
					<option value="userID">작성자</option>
				</select>
			</div>
			<div class="form-group">
				<input type="text" class="form-control" placeholder="검색어 입력" name="searchText" maxlength="100">
			</div>
			<button type="submit" class="btn btn-success">검색</button>
		</form>
	</div>
</div>

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

