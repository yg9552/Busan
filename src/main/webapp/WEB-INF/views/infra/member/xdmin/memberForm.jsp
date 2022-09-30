<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>회원등록</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="../../../../../resources/assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../../../../../resources/assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <script src="https://kit.fontawesome.com/144448c071.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fff4722d1b0684553d2d53d2ea3f7fe9&libraries=services"></script>
    <link rel="stylesheet" href="../../../../../resources/assets/vendors/select2/select2.min.css">
    <link rel="stylesheet" href="../../../../../resources/assets/vendors/select2-bootstrap-theme/select2-bootstrap.min.css">
    <!-- End Plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="../../../../../resources/assets/css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="../../../../../resources/assets/images/favicon.png" />
  </head>
  <body>
    <div class="container-scroller">
      <!-- adminHeader s -->
			<%@include file="../../../common/xdmin/adminHeader.jsp"%>
	  <!-- adminHeader e -->
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
            <div class="page-header">
              <h3 class="page-title">회원관리</h3>
            </div>
            <div class="row">
              <div class="col-md-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">회원등록</h4>
                    <form autocomplete="off" id="form" name="form" method="post">
                    <!-- *Vo.jsp s -->
					<%@include file="memberVo.jsp"%>		<!-- #-> -->
					<!-- *Vo.jsp e -->
						<div class="form-group">
	                        <label for="nm">이름</label>
	                        <input type="text" class="form-control" id="nm" name="nm" value="<c:out value="${item.nm }"></c:out>">
	                    </div>
						<div class="form-group">
	                        <label for="id">아이디</label>
	                        <input type="hidden" id="ifmmIdAllowedNy" name="ifmmIdAllowedNy" value="0">
	                        <input type="text" class="form-control" id="id" name="id" value="<c:out value="${item.id }"></c:out>">
	                        <div class="valid-feedback" id="idFeedback"></div>
	                        <input type="hidden" class="form-control" id="password" name="password" value="<c:out value="${item.password }"></c:out>">
	                    </div>
	                    <div class="form-group">
                        	<label for="password">암호</label>
                        	<input type="password" class="form-control" id="password" name="password" value="<c:out value="${item.password }"></c:out>">
                        </div>
	                    <div class="form-group">
                        	<label for="email">이메일</label>
                        	<input type="email" class="form-control" id="email" name="email" value="<c:out value="${item.email }"></c:out>">
                        </div>
	                    <div class="form-group">
                        	<label for="gender_code">성별</label>
                        	<select class="form-control" id="gender_code" name="gender_code" >
		                        <option value="201" <c:if test="${item.gender_code eq 201}">selected</c:if>> 남성 </option>
		                        <option value="202" <c:if test="${item.gender_code eq 202}">selected</c:if>> 여성 </option>
		                        <option value="203" <c:if test="${item.gender_code eq 203}">selected</c:if>> 기타 </option>
	                    	</select>
                        </div>
                        <div class="form-group">
	                        <label for="DelNy">삭제여부</label>
	                        <select class="form-control" id="DelNy" name="DelNy" >
			                        <option value="0" <c:if test="${item.delNy eq 0}">selected</c:if>> N </option>
			                        <option value="1" <c:if test="${item.delNy eq 1}">selected</c:if>> Y </option>
		                    </select>
	                    </div>
	                    <div class="form-group">
	                        <label for="dob">생년월일</label>
	                        <input type="text" class="form-control" id="dob" name="dob" value="<c:out value="${item.dob }"></c:out>">
	                    </div>
	                    
	                    <div class="row">
	                    	<div class="col">
           			        	<div class="form-group">
			                        <label for="sample4_postcode">우편번호</label>
			                        <input type="text" class="form-control" id="sample4_postcode" name="sample4_postcode">
		                    	</div>
	                    	</div>
	                    	<div class="col">
	                    		<button type="button" class="btn btn-success my-4 mr-2" onclick="sample4_execDaumPostcode()">주소찾기</button>
	                    		<button type="button" class="btn btn-warning my-4" id="btnAddressReset"><i class="fa-solid fa-rotate"></i></button>
	                    	</div>
	                    </div>
	                    <div class="row">
	                    	<div class="col-6">
           			        	<div class="form-group">
			                        <label for="sample4_roadAddress">도로명주소</label>
			                        <input type="text" class="form-control" id="sample4_roadAddress" name="sample4_roadAddress">
		                    	</div>
	                    	</div>
	                    	<div class="col-6">
	                    		<div class="form-group">
			                        <label for="sample4_jibunAddress">지번주소</label>
			                        <input type="text" class="form-control" id="sample4_jibunAddress" name="sample4_jibunAddress">
			                        <input type="hidden" class="form-control" id="guide" name="guide">
		                    	</div>
	                    	</div>
	                    	<div class="col-6">
	                    		<div class="form-group">
			                        <label for="sample4_detailAddress">상세주소</label>
			                        <input type="text" class="form-control" id="sample4_detailAddress" name="sample4_detailAddress">
		                    	</div>
	                    	</div>
	                    	<div class="col-6">
	                    		<div class="form-group">
			                        <label for="sample4_extraAddress">참고항목</label>
			                        <input type="text" class="form-control" id="sample4_extraAddress" name="sample4_extraAddress">
		                    	</div>
	                    	</div>
	                    	<div class="col-6">
	                    		<div class="form-group">
			                        <label for="lat">위도</label>
			                        <input type="text" class="form-control" id="lat" name="lat">
		                    	</div>
	                    	</div>
	                    	<div class="col-6">
	                    		<div class="form-group">
			                        <label for="lng">경도</label>
			                        <input type="text" class="form-control" id="lng" name="lng">
		                    	</div>
	                    	</div>
	                    </div>
	                    
                      	<div class="row">
							<div class="col">
								<button type="button" class="btn btn-success mr-2" id="btnSave">회원등록</button>
							</div>
							<div class="col-auto">
								<button type="reset" class="btn btn-warning mr-2"><i class="fa-solid fa-rotate"></i></button>
								<button type="button" class="btn btn-dark" id="btnList">목록</button>
							</div>
					  	</div>
                    </form>
                    <form name="formVo" id="formVo" method="post">
					<!-- *Vo.jsp s -->
					<%@include file="memberVo.jsp"%>		<!-- #-> -->
					<!-- *Vo.jsp e -->
					</form>
                  </div>
                </div>
              </div>
              
              <script type="text/javascript">
              
          		var goUrlList = "/member/memberList"; 			/* #-> */
		      	var goUrlInst = "/member/memberInst"; 			/* #-> */
		      	var goUrlUpdt = "/member/memberUpdt";			/* #-> */
		      	var goUrlUele = "/member/memberUele";			/* #-> */
		      	var goUrlDele = "/member/memberDele";			/* #-> */
		      	var goUrlForm = "/member/memberForm";			/* #-> */
		      	var goUrlView = "/member/memberView";			/* #-> */
              	
	        	var form = $("form[name=form]");
	        	var formVo = $("form[name=formVo]");
	        	
	        	$("#btnSave").on("click", function(){
	        	   	form.attr("action", goUrlInst).submit();
	        	}); 
	        	
	        	$("#btnList").on("click", function(){
		    		formVo.attr("action", goUrlList).submit();
		    	});
	        	
	        	$("#btnAddressReset").on("click", function(){
		      		$("#sample4_postcode").val("");
		      		$("#sample4_roadAddress").val("");
		      		$("#sample4_jibunAddress").val("");
		      		$("#sample4_detailAddress").val("");
		      		$("#sample4_extraAddress").val("");
		      		$("#guide").val("");
		      	});
	        	
	        	//id check ajax
	        		$("#id").on("focusout", function(){
		
				//	if(!checkId('id', 2, 0, "영대소문자,숫자,특수문자(-_.),4~20자리만 입력 가능합니다")) {
				//		return false;
				//	} else {
						$.ajax({
							async: true 
							,cache: false
							,type: "post"
							/* ,dataType:"json" */
							,url: "/member/checkId"
							/* ,data : $("#formLogin").serialize() */
							,data : { "id" : $("#id").val() }
							,success: function(response) {
								if(response.rt == "success") {
									document.getElementById("id").classList.add('is-valid');
									document.getElementById("id").classList.remove('is-invalid');
				
									document.getElementById("idFeedback").classList.remove('invalid-feedback');
									document.getElementById("idFeedback").classList.add('valid-feedback');
									document.getElementById("idFeedback").innerText = "사용 가능한 아이디 입니다.";
									
									document.getElementById("ifmmIdAllowedNy").value = 1;
									
								} else {
									document.getElementById("id").classList.add('is-invalid');
									document.getElementById("id").classList.remove('is-valid');
									
									document.getElementById("idFeedback").classList.remove('valid-feedback');
									document.getElementById("idFeedback").classList.add('invalid-feedback');
									document.getElementById("idFeedback").innerText = "사용 불가능한 아이디 입니다";
									
									document.getElementById("ifmmIdAllowedNy").value = 0;
								}
							}
							,error : function(jqXHR, textStatus, errorThrown){
								alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
							}
						});
					//}
				});
              </script>
              
              <!-- 카카오주소 API -->
              <script>
				    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
				    function sample4_execDaumPostcode() {
				        new daum.Postcode({
				            oncomplete: function(data) {
				            	
				                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
				
				                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
				                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				                var roadAddr = data.roadAddress; // 도로명 주소 변수
				                var extraRoadAddr = ''; // 참고 항목 변수
				
				                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
				                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
				                    extraRoadAddr += data.bname;
				                }
				                // 건물명이 있고, 공동주택일 경우 추가한다.
				                if(data.buildingName !== '' && data.apartment === 'Y'){
				                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
				                }
				                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
				                if(extraRoadAddr !== ''){
				                    extraRoadAddr = ' (' + extraRoadAddr + ')';
				                }
				
				                // 우편번호와 주소 정보를 해당 필드에 넣는다.
				                document.getElementById('sample4_postcode').value = data.zonecode;
				                document.getElementById("sample4_roadAddress").value = roadAddr;
				                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
				                
				                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
				                if(roadAddr !== ''){
				                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
				                } else {
				                    document.getElementById("sample4_extraAddress").value = '';
				                }
				
				                var guideTextBox = document.getElementById("guide");
				                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
				                if(data.autoRoadAddress) {
				                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
				                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
				                    guideTextBox.style.display = 'block';
				
				                } else if(data.autoJibunAddress) {
				                    var expJibunAddr = data.autoJibunAddress;
				                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
				                    guideTextBox.style.display = 'block';
				                } else {
				                    guideTextBox.innerHTML = '';
				                    guideTextBox.style.display = 'none';
				                }
				                
				                var geocoder = new kakao.maps.services.Geocoder();
				                
				                geocoder.addressSearch(roadAddr, function(result, status) {

				                    // 정상적으로 검색이 완료됐으면 
				                     if (status === kakao.maps.services.Status.OK) {
				                    	 
				                        /* var coords = new kakao.maps.LatLng(result[0].y, result[0].x); */
				                        
				                        document.getElementById("lat").value = result[0].y;
				                        document.getElementById("lng").value = result[0].x;
				                    }
				                });
				             },
				        }).open();
				    }
				</script>
				
				<!-- datepicker -->
				<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
				<script>
				   $(function() {
				       //input을 datepicker로 선언
				       $("#dob").datepicker({
				           dateFormat: 'yy-mm-dd' //달력 날짜 형태
				           ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
				           ,showMonthAfterYear:true // 월- 년 순서가아닌 년도 - 월 순서
				           ,changeYear: true //option값 년 선택 가능
				           ,changeMonth: true //option값  월 선택 가능                
				           ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
				           ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
				           ,buttonImageOnly: true //버튼 이미지만 깔끔하게 보이게함
				           ,buttonText: "선택" //버튼 호버 텍스트              
				           ,yearSuffix: "년" //달력의 년도 부분 뒤 텍스트
				           ,monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 텍스트
				           ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip
				           ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 텍스트
				           ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 Tooltip
				           ,minDate: "-5Y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
				           ,maxDate: "+5y" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)  
				       });                    
				       
				       //초기값을 오늘 날짜로 설정해줘야 합니다.
				       $('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)            
				   });
				</script>
				
          <!-- content-wrapper ends -->
          <!-- partial:../../partials/_footer.html -->
          <footer class="footer">
            <div class="d-sm-flex justify-content-center justify-content-sm-between">
              <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © bootstrapdash.com 2020</span>
              <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center"> Free <a href="https://www.bootstrapdash.com/bootstrap-admin-template/" target="_blank">Bootstrap admin templates</a> from Bootstrapdash.com</span>
            </div>
          </footer>
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="../../../../../resources/assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="../../../../../resources/assets/js/off-canvas.js"></script>
    <script src="../../../../../resources/assets/js/hoverable-collapse.js"></script>
    <script src="../../../../../resources/assets/js/misc.js"></script>
    <script src="../../../../../resources/assets/js/settings.js"></script>
    <script src="../../../../../resources/assets/js/todolist.js"></script>
    <!-- endinject -->
  </body>
</html>