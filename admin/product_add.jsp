<%@ page contentType="text/html;charset=utf-8"%>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script type ="text/javascript" src ="../js/validation.js">
    </script>
    <title>리뷰 등록</title>
</head>
<body>
    <jsp:include page="top_menu_ad.jsp" />
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">리뷰 등록</h1>
        </div>
    </div>
    <div class="container">
        <form name="newProduct" action="product_add_process.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
            <div class="form-group row">
                <label for="productId" class="col-sm-2">*상품 코드</label><br>
                
                <div class="col-sm-3">
                    <input type="text" id ="productId" name="productId" class="form-control" placeholder="(P+숫자 조합)">
                </div>
            </div>
            <div class="form-group row">
                <label for="name" class="col-sm-2">*제목</label>
                <div class="col-sm-3">
                    <input type="text" id ="name" name="name" class="form-control" placeholder="제목을 입력하세요">
                </div>
            </div>
            <div class="form-group row">
                <label for="unitPrice" class="col-sm-2">*가격</label>
                <div class="col-sm-3">
                    <input type="text" id ="unitPrice" name="unitPrice" class="form-control" placeholder="반드시 숫자로 입력하세요">
                </div>
            </div>
            <div class="form-group row">
                <label for="description" class="col-sm-2">상세 정보</label>
                <div class="col-sm-5">
                    <textarea name="description" cols="50" rows="2" class="form-control" placeholder="간단하게라도 입력해주세요."></textarea>
                </div>
            </div>
            <div class="form-group row">
                <label for="manufacturer" class="col-sm-2">*위치</label>
                <div class="col-sm-3">
                    <input type="text" name="manufacturer" class="form-control" placeholder="ex) 경기도 화성시 ~~">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2">*분류</label>
                <div class="col-sm-5">
                    <input type="radio" name="category" value="맛집"> 맛집
                    <input type="radio" name="category" value="카페"> 카페
                    <input type="radio" name="category" value="갈만한 곳"> 갈만한 곳
                </div>
            </div>
            <div class="form-group row">
                <label for="unitsInStock" class="col-sm-2">블로그 리뷰수</label>
                <div class="col-sm-3">
                    <input type="text" id ="unitsInStock"  name="unitsInStock" class="form-control" placeholder="반드시 숫자로 입력해주새요.">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2">평가</label>
                <div class="col-sm-5">
                    <input type="radio" name="condition" value="강력추천"> 강력 추천
                    <input type="radio" name="condition" value="추천"> 추천
                    <input type="radio" name="condition" value="비추천"> 비추천
                </div>
            </div>
            <div class="form-group row">
                <label class ="col-sm-2">*이미지</label>
                <div class="col-sm-5">
                    <input type="file"  name="productImage" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-offset-2 col-sm-10">
                    <input type ="button" class="btn btn-primary" value="등록" onclick ="CheckAddProduct()">
                    

                </div>
            </div>
        </form>
    </div>
</body>
</html>

