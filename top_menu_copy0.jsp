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
        
       
        </div>
        
        <hr>

        <div class="container text-center">
            <div class="navbar-header">
                <style>
                    .navbar-brand {
                        background-color: #ff69b4;
                        border-color: #ff69b4; /* 분홍색 */
                    }
                    .navbar {
                        display: flex;
                        justify-content: center;
                        background-color: #2ecc71;
                        margin: 0;
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
                        <a href="../../index.jsp" class="btn btn-primary1">홈</a>
                        <a href="../admin/index_ad.jsp" class="btn btn-primary1">리뷰 작성하기</a>
                        <a href="product_add.jsp" class="btn btn-primary1">등록</a>
                        <a href="../admin/product_edit.jsp?edit=update" class="btn btn-primary1">수정</a>
                        <a href="../admin/product_edit.jsp?edit=delete" class="btn btn-primary1">삭제</a>
                        <a class="navbar-brand" href="/BoardListAction.do?pageNum=1">게시판(고객센터)</a>
                        <a href="../admin/index_ad.jsp" class="btn btn-primary1">관리자모드</a>
                    </div>
                </div>
            </div>
        </div>
    
</nav>

