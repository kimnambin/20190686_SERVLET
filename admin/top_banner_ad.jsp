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
                            <a class="navbar-brand" href="login/login.jsp">작성자 보기/추가/수정/삭제</a>
            <a class="navbar-brand" href="index_ad.jsp">리뷰 보기</a>
            <a class="navbar-brand" href="product_add.jsp">등록</a>
            
            <a class="navbar-brand" href="product_edit.jsp?edit=update">수정</a>
            <a class="navbar-brand" href="product_edit.jsp?edit=delete">삭제</a>    
            
            <a class="navbar-brand" href="../index.jsp">일반모드</a>
            <a href="../login/logout.jsp" class="btn btn-sm btn-success pull-right">로그아웃</a>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
    <div class="text-center">
        <%!
            String greeting = "⚠️여기는 관리자 페이지입니다.⚠️";
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
