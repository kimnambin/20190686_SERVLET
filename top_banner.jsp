<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <style>
        .h2.Titles {
            font-size: 300px;
        }

        .jumbotron {
            height: 100px;
        }

        .jumbotron-slider {
            overflow: hidden;
            position: relative;
            height: 7px;
            background-color: #2ecc71;
        }

        .jumbotron-slider .container {
            display: flex;
            animation: slide 10s linear infinite;
        }

        @keyframes slide {
            0% {
                transform: translateX(0);
            }
            100% {
                transform: translateX(-100%);
            }
        }

        .navbar-brand {
            
           color: #ffffff;
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

      

        
    </style>
</head>
<body>
     <nav class="navbar navbar-expand navbar-white bg-pink">
            <div class="text-center container"> 
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

                <div class="container text-center">
                    <div class="navbar-header">
                        <div class="navbar">
                         <a class="navbar-brand" href="index.jsp" >홈</a>
                            
                           <a class="navbar-brand"href="../admin/index_ad.jsp" >리뷰 작성하기</a>
                            <a class="navbar-brand" href="../login/login_user.jsp">로그인 </a>
                            <a class="navbar-brand" href="../member/member_join.jsp">회원가입</a>
                            <a class="navbar-brand" href="../admin/product_add.jsp">등록</a>
                            
                        <a class="navbar-brand" href="/BoardListAction.do?pageNum=1">게시판(고객센터)</a>
                            <a class="navbar-brand" href="../admin/index_ad.jsp" >관리자모드</a>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
    <div class="text-center">
        <%!
            String greeting = "칠구 블로그에 어서오세요😆😆";
            String tagline = "하단 페이지 : 확인"; 
        %>

        <div class="jumbotron mx-auto jumbotron-slider" align="center">
            <div class="container" align="center">
                <h3 class="display-4"><%= greeting %></h3>
            </div>
        </div>

       
    </div>
</body>
</html>
