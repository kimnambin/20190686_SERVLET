<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>

<%! String greeting = "⬇️갈곳 추천⬇️";
	String tagline = "하단 페이지 : 확인"; %>

<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
          crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>

    <title>추천 페이지</title>
   
</head>
<body>
   
    <div class="jumbotron">
        <div class="container" align="center">
            <h1 class="display-3" align="center">갈만한 곳~</h1>
        </div>
    </div>
    <div class="container">
     <div class='list-group-item'>갈곳 추천~</div>
<div class="card bg-dark text-blue">
	<img src="image/go.png" class="card-img" alt="...">
	<div class="card-img-overlay">
		<h5 class="card-title">✔️이웃새글✔️</h5>
		<p class="card-text">⭐글 보러가기⭐</p>
	</div>
</div>
        </div>
    <hr>
   
</body>
</html>