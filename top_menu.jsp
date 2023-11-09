<%@ page contentType="text/html; charset=utf-8"%>
<nav class="navbar navbar-expand  navbar-white bg-green">
	<div class="dropdown">
  		<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    		카테고리
  		</button>
    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
        <a class="dropdown-item" href="../add/foodpage.jsp">맛집</a>
        <a class="dropdown-item" href="../add/cafepage.jsp">카페</a>
        <a class="dropdown-item" href="../add/gopage.jsp">갈만한 곳</a>
           
     </div>
	</div>
    
    <div>
        <img src="../image\blog.jpg" class="img-fluid" alt="main_image">
    </div>
    
	<div class="container">
		<div class="navbar-header">
            <style>
    
    .navbar-brand {
        color: blue; 
    }
    </style>
			<div style="display: flex; justify-content: space-between;">
    <div class="navbar" style="display: flex; justify-content: center;">
        <input type ="button" class="btn btn-primary" value="메뉴바 : 홈페이지" href="../../index.jsp" style="margin-right: 10px;">
        <input type ="button" class="btn btn-primary" value="로그인" href="../login/login.jsp" style="margin-right: 10px;">
        <input type ="button" class="btn btn-primary" value="공식 블로그" 
               href="https://section.blog.naver.com/BlogHome.naver?directoryNo=0&currentPage=1&groupId=0" style="margin-right: 10px;">
        <input type ="button" class="btn btn-primary" value="관리자모드" href="../admin/index_ad.jsp" style="margin-right: 10px;">
        <!--<a class="navbar-brand" href="../../index.jsp">메뉴바 : 홈페이지</a>
        <a class="navbar-brand" href="../login/login.jsp">로그인</a>
        <!--<a class="navbar-brand" href="./index.jsp">회원가입</a> -->
      <!--  <a class="navbar-brand" href="https://section.blog.naver.com/BlogHome.naver?directoryNo=0&currentPage=1&groupId=0">공식 블로그</a>
       <!-- <a class="navbar-brand" href="../admin/index_ad.jsp">관리자모드</a> -->
    </div>
    <img src="../image\000.jpg" class="img-fluid" alt="main_image">
</div>

        </div>
	</div>
</nav>
