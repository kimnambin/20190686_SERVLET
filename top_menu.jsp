<%@ page contentType="text/html; charset=utf-8"%>
<nav class="navbar navbar-expand navbar-white bg-green">
    <div class="text-center container" style="margin-bottom: 10px;"> 
        
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
        
        <!--<div class="text-right">
            <img src="../image/blog.jpg" class="img-fluid" alt="main_image" style="margin-top: 5px;"> <!-- 간격 조절 -->
       
        
        <div class="container text-center">
            <div class="navbar-header">
                <style>
                    .navbar-brand {
                        color: yellow; 
                    }
                    .navbar {
                        display: flex;
                        justify-content: center;
                        flex-wrap: wrap;
                    }
                    .navbar input {
                        margin: 0 10px;
                    }
                    .btn-primary { /* 버튼 색상 변경 */
                        background-color: skyblue;
                        border-color: skyblue;
                    }
                </style>
                <div class="navbar">
                    <input type ="button" class="btn btn-primary" value="메뉴바 : 홈페이지" href="../../index.jsp">
                    <input type ="button" class="btn btn-primary" value="홈" href="../../index.jsp">
                    <input type ="button" class="btn btn-primary" value="로그인" href="../login/login.jsp">
                    <input type ="button" class="btn btn-primary" value="공식 블로그" 
                           href="https://section.blog.naver.com/BlogHome.naver?directoryNo=0&currentPage=1&groupId=0">
                    <input type ="button" class="btn btn-primary" value="칠구 블로그 방문하기" 
                           href="https://blog.naver.com/79blog79">
                    <input type ="button" class="btn btn-primary" value="관리자모드" href="../admin/index_ad.jsp">
                </div>
            </div>
        </div>
    </div>
</nav>


