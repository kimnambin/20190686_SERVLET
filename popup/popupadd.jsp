<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>2023 네이버 블로그 체크인 챌린지</title>
  <meta name="description" content="장소 기록으로 체크인 레벨을 올려 보세요! 만렙은 당신의 것, Let's Go!">
  <meta property="og:type" content="website">
  <meta property="og:title" content="2023 블로그 체크인 챌린지">
  <meta property="og:url" content="https://mkt.naver.com/p1/2023blogchallenge">
  <meta property="og:description" content="장소 기록으로 체크인 레벨을 올려 보세요! 만렙은 당신의 것, Let's Go!">
  <meta property="og:image" content="https://mkt-cdn.pstatic.net/mkt/p1/2023/04/2023blogchallenge/asset/og_v2.png">
  <meta name="twitter:card" content="summary">
  <meta name="twitter:title" content="2023 블로그 체크인 챌린지">
  <meta name="twitter:description" content="장소 기록으로 체크인 레벨을 올려 보세요! 만렙은 당신의 것, Let's Go!">
  <meta name="twitter:image" content="https://mkt-cdn.pstatic.net/mkt/p1/2023/04/2023blogchallenge/asset/og_v2.png">
  <link rel="icon" href="https://mkt-cdn.pstatic.net/mkt/favicon.ico" type="image/x-icon">
  <link rel="stylesheet" href="https://mkt-cdn.pstatic.net/css/swiper/swiper.min.css" type="text/css">
  <script src="https://mkt-cdn.pstatic.net/mkt/p1/2023/04/2023blogchallenge/js/swiper.min_v4.js"></script>
  <script src="https://mkt-cdn.pstatic.net/mkt/p1/2023/04/2023blogchallenge/js/ie11CustomProperties.js"></script>
  <script src="https://mkt-cdn.pstatic.net/mkt/p1/2023/04/2023blogchallenge/js/jquery-latest.min.js"></script>
  <style>
    @charset "UTF-8";
    /* 여기에 CSS 코드 추가 */
    .navbar-brand {
        color: yellow; 
    }
    .navbar {
        display: flex;
        justify-content: center;
    }
    .navbar input {
        margin-right: 10px;
    }
  </style>
</head>
<body>
  <!-- 여기에 나머지 HTML 코드 추가 -->
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
      <img src="../image/blog.jpg" class="img-fluid" alt="main_image">
    </div>
  
    <div class="container">
      <div class="navbar-header">
        <div style="display: flex; justify-content: space-center;">
          <div class="navbar" style="display: flex; justify-content: center;">
            <input type="button" class="btn btn-primary" value="메뉴바 : 홈페이지" href="../../index.jsp" style="margin-right: 10px;">
            <input type="button" class="btn btn-primary" value="로그인" href="../login/login.jsp" style="margin-right: 10px;">
            <input type="button" class="btn btn-primary" value="공식 블로그" href="https://section.blog.naver.com/BlogHome.naver?directoryNo=0&currentPage=1&groupId=0" style="margin-right: 10px;">
            <input type="button" class="btn btn-primary" value="관리자모드" href="../admin/index_ad.jsp" style="margin-right: 10px;">
          </div>
        </div>
      </div>
        <div class="card bg-dark text-blue">
	<img src="../image/123.png" class="card-img" alt="...">
	<div class="card-img-overlay">
            </div>
        </div>
    </div>
  </nav>
</body>
</html>
