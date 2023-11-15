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
                        gap: 20px; 
                        justify-content: center;
                        flex-wrap: wrap;
                        
                    }
                    .navbar input {
                        margin: 0 10px;
                    }
                    .btn-primary { /* 버튼 색상 변경 */
                        background-color: #2ecc71;
                        border-color: #2ecc71;
                        
                    }
                    .dropdown-menu{
                    background-color: #2ecc71;
                        border-color: #2ecc71;
                    }
                </style>
                <div class="navbar">
                   <div class="navbar">
    <a href="../../index.jsp" class="btn btn-primary">메뉴바 : 홈페이지</a>
    <a href="../../index.jsp" class="btn btn-primary">홈</a>
                      <!-- 교수님 db연동 수정 <a class="navbar-brand" href="index.jsp">상품목록(기본 홈)</a> -->
                       
    <a href="../login/login.jsp" class="btn btn-primary">로그인</a>
    <a href="https://section.blog.naver.com/BlogHome.naver?directoryNo=0&currentPage=1&groupId=0" class="btn btn-primary">공식 블로그</a>
    <a href="https://blog.naver.com/79blog79" class="btn btn-primary">칠구 블로그 방문하기</a>
    <a href="../admin/index_ad.jsp" class="btn btn-primary">관리자모드</a>
</div>

                </div>
            </div>
        </div>
    </div>
</nav>


