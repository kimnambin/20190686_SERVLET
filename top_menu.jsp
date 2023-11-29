<%@ page contentType="text/html; charset=utf-8"%>
<nav class="navbar navbar-expand navbar-white bg-pink">
    <div class="text-center container" > 
        
        <div class="dropdown" style="margin-left: 50px;">
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
                        background-color: #ff69b4; /* 분홍색 */
                        border-color: #ff69b4; /* 분홍색 */
                    }
                    .navbar {
                        display: flex;
                        gap: 5px; 
                        justify-content: center;
                        flex-wrap: wrap;
                        
                    }
                    .navbar input {
                        margin: 0 10px;
                    }
                    .btn-primary1 {
    background-color: #ff69b4; /* 분홍색 */
    border-color: #ff69b4; /* 분홍색 */
    color: #fff; /* 흰색 */
                         margin: 3px;
                       
}
                    .dropdown-menu{
                    background-color: #ff69b4; /* 분홍색 */
                    border-color: #ff69b4; /* 분홍색 */
                        
                        /* 오른쪽으로 이동 */
                    }
                </style>
                <div class="navbar">
                   <div class="navbar">
    <a href="../../index.jsp" class="btn btn-primary1">메뉴바 : 홈페이지</a>
    <a href="../../index.jsp" class="btn btn-primary1">홈</a>
                      <!-- 교수님 db연동 수정 <a class="navbar-brand" href="index.jsp">상품목록(기본 홈)</a> -->
                        <a href="../admin/index_ad.jsp" class="btn btn-primary1">리뷰 작성하기</a>
    <a href="../admin/index_ad.jsp" class="btn btn-primary1">로그인</a>
                       
                       <!-- 버튼으로 할지 네비바로 할 지 고민해봐야 할 듯 -->
            <a class="navbar-brand" href="/BoardListAction.do?pageNum=1">게시판(고객센터)</a>
    <a href="https://section.blog.naver.com/BlogHome.naver?directoryNo=0&currentPage=1&groupId=0" class="btn btn-primary1">공식 블로그</a>
    <a href="https://blog.naver.com/79blog79" class="btn btn-primary1">칠구 블로그 방문하기</a>
    <a href="../admin/index_ad.jsp" class="btn btn-primary1">관리자모드</a>
</div>

                </div>
            </div>
        </div>
    </div>
</nav>


