<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Product"%>
<%@ page import="java.util.Date"%>
<%@ page import="example.*" %>
<%@ page errorPage = "exception/product_not_found.jsp" %>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script type="text/javascript">
	function addToCart() {
		if (confirm("리뷰를 저장하기에 추가하시겠습니까?")) {
			document.addForm.submit()
		} else {		
			document.addForm.reset();
		}
	}
</script>
    <title>상세 정보</title>
</head>

    <body>
    	<%@ include file="top_banner.jsp" %>
	<%@ include file="top_menu.jsp" %>
	<div class="jumbotron">
		<div class="container" align="center" >
			<h1 class="display-3"align="center">상세 정보</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		Product product = productDAO.getProductById(id);
	%>
	<div class="container" align="center">
		<div class="row" align="center">
                      
            
            
			<div class="col-md-6" align="center">
				<h3><%=product.getPname()%></h3>
				<p><%=product.getDescription()%>
				<p><b>상품 코드 : </b><span class="badge badge-danger"> <%=product.getProductId()%></span>
				<p><b>위치</b> : <%=product.getManufacturer()%>
				<p><b>분류</b> : <%=product.getCategory()%>
				<p><b>블로그 리뷰수</b> : <%=product.getUnitsInStock()%>
				<h4><%=product.getUnitPrice()%>원</h4>
                
                
<p><form name="addForm" action="cart/product_cart_add.jsp?id=<%=product.getProductId()%>" method="post">
			<!-- <a href="order/order_info.jsp" class="btn btn-info" onclick="addToCart()"> 예약하기 &raquo;</a> -->
            <a href="order/order_info.jsp" class="btn btn-info"> 예약하기 &raquo;</a>
			<a href="cart/product_cart.jsp" class="btn btn-warning" onclick="addToCart()"> 저장하기 &raquo;</a>
                
	</form>

                <div class="card bg-dark text-white">
                    <img src="image/product/<%=product.getFilename()%>" class="card-img" alt="...">
                    <div class="card-img-overlay" align="center">
                    
                        <h5 class="card-title" align="center"><%= product.getImageText() %></h5>
                        
                    <p class="card-text" align="center" >출처 : 칠구 블로그 </p>
                    </div>
                </div>
	<p>
   <!-- <a href="<%= product.getLink() %>" class="btn btn-info">상품 주문 &raquo;</a> -->
    <a href="index.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>
</p>

		</div>
		</div>
		<hr>
	</div>
    <%@ include file="footer.jsp" %>
</body>
</html>
