<%@ page contentType="text/html; charset=utf-8"%>
<%! String greeting = "블로그에 오신걸 환영합니다!!";
	String tagline = "하단 페이지 : 확인";%>
	<div class="jumbotron">
		<div class="container">
            
            <%-- 구글링 해서 검색창 넣음 --%>
            <div class="row">
                 <div class="col-md-4 offset-md-4">
			<form method="post" name="search" action="searchbbs.jsp">
				<table class="pull-right">
					<tr>
						<td><select class="form-control" name="searchField">
								<option value="0">주제</option>
								<option value="bbsTitle">제목</option>
								<option value="userID">작성자</option>
						</select></td>
						<td><input type="text" class="form-control"
							placeholder="검색어 입력" name="searchText" maxlength="100"></td>
						<td><button type="submit" class="btn btn-success">검색</button></td>
					</tr>

				</table>
			</form>
		</div>
	</div>

         <h1 class="display-3">
            <%=greeting%>
         </h1>
	</div>
        
        <div class="card bg-dark text-white">
    <img src="image/7979.jpg" class="card-img" alt="...">
    <div class="card-img-overlay">
    <h5 class="card-title">이웃새글</h5>
    <p class="card-text">글 보러가기</p>
  </div>
  </div>

<div class="list-group">
      <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
        블로그 구경하기</a>
      <a href="#" class="list-group-item list-group-item-action">공감하기</a>
        <a href="#" class="list-group-item list-group-item-action">댓글달기</a>
      
    </div>

