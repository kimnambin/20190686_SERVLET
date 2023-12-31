<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="java.util.Date"%>
<%@ page import="dao.ProductRepository"%>


<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


<%
	String cartId = session.getId(); // 세션 정보 얻기
%>

<title>저장하기</title>
</head>
<body>
	<jsp:include page="../top_banner.jsp" />

	<div class="jumbotron">
	<div class="container">
		<h1 class="display-3">상품예약</h1>
	</div>
	</div>
	<div class="container border">
	<div class="row">
		<table width="100%">
			<tr>
				<td align="left"><a href="product_cart_remove_all.jsp?cartId=<%=cartId%>" class="btn btn-danger">삭제하기</a></td>
                
                <!-- 교수님은 주문하기 -->
				<td align="right"><a href="../order/order_info.jsp?cartId=<%= cartId %>" class="btn btn-success">예약하기</a></td>
			</tr>
		</table>
	</div>
	<div style="padding-top: 50px">
		<table class="table table-hover">
			<tr>
				<th>이름</th>
				<th>분류</th>
				<th>수량</th>
				<th>가격</th>
				<th>비고</th>
			</tr>
			<%
			int sum = 0; // sum 변수 초기화
			ArrayList<Product> cartList = (ArrayList<Product>) session.getAttribute("cartlist");
			if (cartList == null) {
			    cartList = new ArrayList<Product>();
			}
			for (int i = 0; i < cartList.size(); i++) {
			    Product product = cartList.get(i);
			    int total = product.getUnitPrice() * product.getQuantity();
			    sum = sum + total;
			%>
			<tr>
				<td><%=product.getProductId()%> - <%=product.getPname()%></td>
				<td><%=product.getCategory()%></td>
				<td><%=product.getQuantity()%></td>
				<td><%=total%></td>
				<td><a href="product_cart_remove.jsp?id=<%=product.getProductId()%>" class="badge badge-danger">삭제</a></td>
			</tr>
			<%
			}
			%>
			<tr>
				<th></th>
				<th></th>
				<th>총액</th>
				<th><%=sum%></th> <!-- sum 변수 사용 -->
				<th></th>
			</tr>
		</table>
		<a href="../index.jsp" class="btn btn-secondary"> &laquo; 상품 계속보기</a>
	</div>
	<hr>
</div>
<jsp:include page="../footer.jsp" />
</body>
</html>
