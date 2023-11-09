<%@ page contentType="text/html; charset=utf-8"%>

<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous">
    </script>
    
    <!-- 카카오톡 api -->
     <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    
    <script>
        // 우편번호 찾기 화면을 넣을 element
        var element_layer = document.getElementById('layer');

        function closeDaumPostcode() {
            // iframe을 넣은 element를 안보이게 합니다.
            element_layer.style.display = 'none';
        }

        function sample2_execDaumPostcode() {
            new daum.Postcode({
                oncomplete: function(data) {
                    // 검색 결과 항목을 클릭했을 때 실행할 코드를 작성하는 부분.

                    // 각 주소의 노출 규칙에 따라 주소를 조합합니다.
                    // 내려오는 변수가 값이 없는 경우에는 공백('')값을 가지므로, 이를 참고하여 분기합니다.
                    var addr = ''; // 주소 변수
                    var extraAddr = ''; // 참고항목 변수

                    // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져옵니다.
                    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택한 경우
                        addr = data.roadAddress;
                    } else { // 사용자가 지번 주소를 선택한 경우(J)
                        addr = data.jibunAddress;
                    }

                    // 사용자가 선택한 주소가 도로명 타입인 경우에 참고항목을 조합합니다.
                    if (data.userSelectedType === 'R') {
                        // 법정동명이 있을 경우 추가합니다. (법정리는 제외)
                        // 법정동의 경우 마지막 문자가 "동/로/가"로 끝납니다.
                        if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                            extraAddr += data.bname;
                        }
                        // 건물명이 있고, 공동주택인 경우 추가합니다.
                        if (data.buildingName !== '' && data.apartment === 'Y') {
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만듭니다.
                        if (extraAddr !== '') {
                            extraAddr = ' (' + extraAddr + ')';
                        }
                        // 조합된 참고항목을 해당 필드에 넣습니다.
                        document.getElementById("sample2_extraAddress").value = extraAddr;
                    } else {
                        document.getElementById("sample2_extraAddress").value = '';
                    }

                    // 우편번호와 주소 정보를 해당 필드에 넣습니다.
                    document.getElementById('sample2_postcode').value = data.zonecode;
                    document.getElementById("sample2_address").value = addr;
                    // 커서를 상세주소 필드로 이동합니다.
                    document.getElementById("sample2_detailAddress").focus();

                    // iframe을 넣은 element를 안 보이게 합니다.
                    element_layer.style.display = 'none';
                },
                width: '100%',
                height: '100%',
                maxSuggestItems: 5
            }).embed(element_layer);

            // iframe을 넣은 element를 보이게 합니다.
            element_layer.style.display = 'block';

            // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킵니다.
            initLayerPosition();
        }

        // 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 할 때에는
        // resize 이벤트나, orientationchange 이벤트를 이용하여 값이 변경될 때마다 아래 함수를 실행시키거나,
        // 직접 element_layer의 top, left 값을 수정해 주시면 됩니다.
        function initLayerPosition() {
            var width = 300; // 우편번호 서비스가 들어갈 element의 width
            var height = 400; // 우편번호 서비스가 들어갈 element의 height
            var borderWidth = 5; // 샘플에서 사용하는 border의 두께

            // 위에서 선언한 값들을 실제 element에 넣습니다.
            element_layer.style.width = width + 'px';
            element_layer.style.height = height + 'px';
            element_layer.style.border = borderWidth + 'px solid';
            // 실행될 때의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산합니다.
            element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width) / 2 - borderWidth) + 'px';
            element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height) / 2 - borderWidth) + 'px';
        }
    </script>
    
    
    <!--  예약일 부분 달력보시 -->
    <script>
        function openPostcodeSearch() {
            new daum.Postcode({
                oncomplete: function(data) {
                   
                }
            }).open();
        }
        
        function setMinDate() {
            var today = new Date();
            today.setDate(today.getDate() + 1);
            var minDate = today.toISOString().split('T')[0];
            document.getElementById("shippingDate").min = minDate;
        }
    </script>
    
    <title>예약 정보</title>
</head>
<body>
    <jsp:include page="../top_menu.jsp" />
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">ℹ️예약 정보</h1>
        </div>
    </div>
    <div class="container">
        <form action="order_info_process.jsp" class="form-horizontal" method="post">
            <input type="hidden" name="cartId" value="<%=request.getParameter("cartId")%>" />
            <div class="form-group row">
                <label class="col-sm-2">✔️성명</label>
                <div class="col-sm-3">
                    <input name="name" type="text" class="form-control" />
                </div>
            </div>
           
            <div class="form-group row">
                <label class="col-sm-2">✔️예약일</label>
                <div class="col-sm-3">
                    <input id="shippingDate" name="shippingDate" type="date" class="form-control" required />
                </div>
            </div>
	 
            <!-- 교수님 문제 국가명을 SELECT 박스로 수정하자. -->
           <div class="form-group row">
    <label class="col-sm-2">✔️인원수</label>
    <div class="col-sm-5">
        <select name="country" class="form-control">
            <option value="1">1명</option>
            <option value="2">2명</option>
            <option value="3">3명</option>
            <option value="4">4명</option>
        </select>
    </div>
</div>
          
            <div class="form-group row">
                <label class="col-sm-2">✔️전화번호</label>
                <div class="col-sm-3">
                    <input name="zipCode" type="text" class="form-control" />
                </div>
            </div>
	
             <!-- 주소 입력 필드 카카오톡 -->
    <div class="form-group row">
        <label class="col-sm-2">주소 검색 해보기</label>
        <div class="col-sm-5">
            <input name="addressName" type="text" class="form-control" />
            <input type="text" id="sample2_postcode" placeholder="우편번호">
            <input type="button" onclick="sample2_execDaumPostcode()" value="우편번호 찾기">(하단에나타남)<br>         
            <input type="text" id="sample2_address" placeholder="주소"><br>
            <input type="text" id="sample2_detailAddress" placeholder="상세주소">
            <input type="text" id="sample2_extraAddress" placeholder="참고항목">
        </div>
    </div>
            
            <div class="form-group row">
                <div class="col-sm-offset-2 col-sm-10 ">
                    <a href="../cart/product_cart.jsp?cartId=<%=request.getParameter("cartId")%>" class="btn btn-secondary" role="button"> 이전 </a> 
                    <input type="submit" class="btn btn-primary" value="예약" />
                    <a href="order_cancelled.jsp" class="btn btn-secondary" role="button"> 취소 </a>
                </div>
            </div>
        </form>
    </div>
    
    <script>
        // 페이지 로딩 후 최소 예약일을 설정합니다.
        setMinDate();
    </script>
</body>
</html>
