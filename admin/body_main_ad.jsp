<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>


<%! String greeting = "⚠️여기는 관리자 페이지입니다⚠️";
	String tagline = "하단 페이지 : 확인";%>


	
	<div class="container">
	<div class="jumbotron">
		<div class="container">
			<h3 class="display-4">
				<%=greeting%>
            </h3>
		</div>
	</div>	
        
	<%
		ProductRepository dao = ProductRepository.getInstance();
		ArrayList<Product> listOfProducts = dao.getAllProducts();
	%>
	<div class="container">
		<div class="row" align="center">
			<%
				for (int i = 0; i < listOfProducts.size(); i++) { // 반복문 시작 : 리스트 저장된 상품 크기만큼 반복
					Product product = listOfProducts.get(i); // 상품 정보 얻기
			%>

    			<div class="col-md-4">
                    <div class="card bg-dark text-white">
                        
                        <img src="image/product/<%=product.getFileName()%>" class="card-img" alt="...">
                        <div class="card-img-overlay">
                        <h5 class="card-title">
								<%= product.getImageText() %>
							</h5>
                        <p class="card-text">출처 : 칠구 블로그 </p>
                        </div>
                        </div>
				<h3><%=product.getPname()%></h3> <!-- 상품 이름 -->
                    <p><%=product.getDescription()%></p> <!-- 상품 정보 -->
				<p><%=product.getUnitPrice()%>원 <!-- 상품 가격 -->
                <p><a href="../product_detail.jsp?id=<%=product.getProductId()%>" 
                      class="btn btn-secondary" role="button"> 상품 상세 정보 &raquo;</a>
			</div>
			<%
				} // 반복문 끝
			%>
		<hr>
	</div>

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

<div class="card bg-dark text-white">
   <img src="image/7979.jpg" class="card-img" alt="...">
   <div class="card-img-overlay">
      <h5 class="card-title">✔️이웃새글✔️</h5>
      <p class="card-text">⭐글 보러가기⭐</p>
   </div>
</div>

<div class="list-group">
   <a href="#" class="list-group-item list-group-item-action active" aria-current="true">블로그 구경하기</a>
   <a href="#" class="list-group-item list-group-item-action">공감하기</a>
   <a href="#" class="list-group-item list-group-item-action">댓글달기</a>
</div>