<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />


<%! String greeting = "환영합니다~!!";
	String tagline = "하단 페이지 : 확인";%>
	<div class="jumbotron" align="center">
		<div class="container" align="center">
            
            <div class="jumbotron" align="center">
		<div class="container" align="center">
			<h3 class="display-4" align="center">
				<%=greeting%>
            </h3>
		</div>
	</div>
    <%
	ArrayList<Product> listOfProducts = productDAO.getAllProducts(); // 리스트에 상품 전체 정보를 얻어온다.
    %> 	

            <div class="container">
		<div class="row" align="center">
			<%
				for (int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
			%>
			<div class="col-md-4">
               
               
<div class="card bg-dark text-white">
    <img src="image/product/<%=product.getProductId()%>.jpg" class="card-img" alt="...">
    <div class="card-img-overlay">
        <h5 class="card-title">다옴 383</h5>
        <p class="card-text">출처 : 칠구 블로그</p>
    </div>
</div>


            
                <%-- <div class="card bg-dark text-white">
    <img src="image/product/P1234.jpg" class="card-img" alt="...">
    <div class="card-img-overlay">
        <h5 class="card-title">다옴 383</h5>
        <p class="card-text">출처 : 칠구 블로그</p>
    </div>
</div>
            
            <div class="card bg-dark text-white">
    <img src="image/product/P1235.jpg>.jpg" class="card-img" alt="...">
    <div class="card-img-overlay">
        <h5 class="card-title">송리단취향</h5>
        <p class="card-text">출처 : 칠구 블로그</p>
    </div>
</div>
            
            <div class="card bg-dark text-white">
    <img src="image/product/P1236.jpg>.jpg" class="card-img" alt="...">
    <div class="card-img-overlay">
        <h5 class="card-title">중찬미식</h5>
        <p class="card-text">출처 : 칠구 블로그</p>
    </div>
</div> --%>

				<h3><%=product.getPname()%></h3>
				<p><%=product.getDescription()%>
				<p><%=product.getUnitPrice()%>💲
			</div>
			<%
				}
			%>
		</div>
		<hr>
	</div>
            <%-- 구글링 해서 검색창 넣음 --%>
            <div class="row">
                 <div class="col-md-4 offset-md-4">
			<form method="post" name="search" action="searchbbs.jsp">
				<table class="pull-right">
					<tr>
						<td><select class="form-control" name="searchField">
								<option value="0">주제</option>
								<option value="bbsTitle">제목</option>
								<option value="userID">작성자</option>
						</select></td>
						<td><input type="text" class="form-control"
							placeholder="검색어 입력" name="searchText" maxlength="100"></td>
						<td><button type="submit" class="btn btn-success">검색</button></td>
					</tr>

				</table>
			</form>
		</div>
	</div>

         <h1 class="display-3">
            <%=greeting%>
         </h1>
	</div>
        
        
        
        
        <div class="card bg-dark text-white">
    <img src="image/7979.jpg" class="card-img" alt="...">
    <div class="card-img-overlay">
    <h5 class="card-title">이웃새글</h5>
    <p class="card-text">글 보러가기</p>
  </div>
  </div>

<div class="list-group">
      <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
        블로그 구경하기</a>
      <a href="#" class="list-group-item list-group-item-action">공감하기</a>
        <a href="#" class="list-group-item list-group-item-action">댓글달기</a>
      
    </div>

