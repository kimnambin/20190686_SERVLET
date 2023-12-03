<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="example.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.time.LocalDate" %>
<%@ page buffer="1kb" autoFlush="true"%>

<html>
    <head>
    	 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script type="text/javascript" src="../js/validation.js"></script>
        <title>회원정보수정</title>
    </head>
    
        <%@ include file="../db/db_conn.jsp"%>
    
    <body>
        <jsp:include page="../top_menu.jsp" />
        
        <%  
            String id = request.getParameter("id");
    
            String sql = "select * from member where joinid = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();
        	if (rs.next()) { 
        %>
        
        <div class="jumbotron">
			<div class="container">
			<h1 class="display-3">회원정보수정</h1>
			</div>
		</div>
        
		<div class="container">
			<form name="newProduct" action="member_update_process.jsp" class="form-horizontal" method="post">
               <div class="form-group row mx-auto border p-3">
                <label for="joinid" class="col-sm-2">id</label>
                <div class="col-sm-3">
                    <input type="text" id="joinid" name="joinid" class="form-control" placeholder="사용할 아이디를 입력해주세요." required autofocus>
                </div>
            </div>

            <div class="form-group row mx-auto border p-3">
                <label for="joinpassword" class="col-sm-2">password</label>
                <div class="col-sm-3" style="width: 100%">
                    <input type="text" id="joinpassword" name="joinpassword" class="form-control" placeholder="사용할 비번을 입력하세요" required autofocus>
                </div>
            </div>
            
            <div class="form-group row mx-auto border p-3">
                <label for="joinname" class="col-sm-2">name</label>
                <div class="col-sm-3">
                    <input type="text" id ="joinname" name="joinname" class="form-control" placeholder="이름을 입력하세요">
                </div>
                 </div>
            
            
            <div class="form-group row mx-auto border p-3">
                <label for="joingender" class="col-sm-2">gender</label>
                <div class="col-sm-3">
                   <input type="text" id ="joingender" name="joingender" class="form-control" placeholder="성별을 입력하세요">
                </div>
            </div>
            
            <div class="form-group row mx-auto border p-3">
                <label for="joinbirth" class="col-sm-2">birth</label>
                <div class="col-sm-3">
                    <input type="text" id ="joinbirth" name="joinbirth" class="form-control" placeholder="생일을 입력하세요">
                </div>
            </div>
            
            <div class="form-group row mx-auto border p-3">
                <label for="joinmail" class="col-sm-2">mail</label>
                <div class="col-sm-3">
                   <input type="text" id ="joinmail" name="joinmail" class="form-control" placeholder="메일을 입력하세요">
                </div>
            </div>
            
            <div class="form-group row mx-auto border p-3">
                <label for="joinphone" class="col-sm-2">phone</label>
                <div class="col-sm-3">
                    <input type="text" id ="joinphone"  name="joinphone" class="form-control" placeholder="전화번호를 입력해주새요.">
                </div>
            </div>
            
            <div class="form-group row mx-auto border p-3">
              <label for="joinaddress" class="col-sm-2">address</label>
                <div class="col-sm-3">
                    <input type="text" id ="joinaddress"  name="joinaddress" class="form-control" placeholder="주소를 입력해주새요.">
                </div>
                </div>
            
                <div class="form-group row">
                    <div class="col-sm-offset-2 col-sm-10 ">
                        <input type="submit" class="btn btn-primary" value="수정">
                    </div>
                </div>
			</form>
		</div>	
        <%
        }
        
        if (rs != null) rs.close();
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
        %>
    </body>
</html>