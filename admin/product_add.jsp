<%@ page contentType="text/html;charset=utf-8"%>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkwu6Cf0FNN6wF9zHjePuu7F6G5TOeNM6j7dFp7FIAvkojw5pe1biU6XG" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous">
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
                <label for="productId" class="col-sm-2">상품 코드</label>
                <div class="col-sm-3">
                    <input type="text" name="productId" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <label for="name" class="col-sm-2">제목</label>
                <div class="col-sm-3">
                    <input type="text" name="name" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <label for="unitPrice" class="col-sm-2">가격</label>
                <div class="col-sm-3">
                    <input type="text" name="unitPrice" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <label for="description" class="col-sm-2">상세 정보</label>
                <div class="col-sm-5">
                    <textarea name="description" cols="50" rows="2" class="form-control"></textarea>
                </div>
            </div>
            <div class="form-group row">
                <label for="manufacturer" class="col-sm-2">위치</label>
                <div class="col-sm-3">
                    <input type="text" name="manufacturer" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2">분류</label>
                <div class="col-sm-5">
                    <input type="radio" name="category" value="New"> 맛집
                    <input type="radio" name="category" value="Old"> 카페
                    <input type="radio" name="category" value="Refurbished"> 갈만한 곳
                </div>
            </div>
            <div class="form-group row">
                <label for="unitsInStock" class="col-sm-2">주차</label>
                <div class="col-sm-3">
                    <input type="text" name="unitsInStock" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2">평가</label>
                <div class="col-sm-5">
                    <input type="radio" name="condition" value="New"> 강력 추천
                    <input type="radio" name="condition" value="Old"> 추천
                    <input type="radio" name="condition" value="Refurbished"> 비추천
                </div>
            </div>
            <div class="form-group row">
                <label class ="col-sm-2">이미지</label>
                <div class="col-sm-5">
                    <input type="file" name="productImage" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-offset-2 col-sm-10">
                    <input type="submit" class="btn btn-primary" value="등록">
                </div>
            </div>
        </form>
    </div>
</body>
</html>

