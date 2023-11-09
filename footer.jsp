<%@ page contentType="text/html; charset=utf-8"%>	
<%@ page import="java.util.Date"%>

<%@ page import="example.*" %>
  <footer class="container">
     <p> <br> &copy; 블로그 대표 : 김남빈, 고유번호 : 20190686, 연락처 : mkkim044@naver.com <br> 
        <%
    	ShopTime time = new ShopTime();
         %>    
        오늘 날짜와 시간 : <%=time.timenow() %>
        </p>
	</footer>
