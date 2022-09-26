<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>회원가입</title>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fff4722d1b0684553d2d53d2ea3f7fe9&libraries=services"></script>
	<script src="https://kit.fontawesome.com/144448c071.js" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<style type="text/css">
		ul.navbar-nav li.dropdown:hover > ul.dropdown-menu {
		display: block; 
		margin: 0;
		}
		a {
			text-decoration: none;
			color: black;
		}
		.white {
			color: white;
		}
		.white:hover {
			color: #f4e638
		}
	</style>
</head>
<body>
	  <!-- userHeader s -->
			<%@include file="../../../common/xdmin/noUserHeader.jsp"%>
	  <!-- userHeader e -->

<form class="needs-validation" novalidate autocomplete="off">
<!-- *Vo.jsp s -->
<%@include file="memberVo.jsp"%>		<!-- #-> -->
<!-- *Vo.jsp e -->
	<div class="container">
		<h3 class="mb-4 mt-4 text-center">회원가입</h3>	
		<div class="w-50 mx-auto">
		  <div class="row g-3 mb-3">
		  	<div class="col-12">
		  		<input type="hidden" id="DelNy" name="DelNy" value="0">
		  		<div class="form-floating">
	  				<input type="text" class="form-control" id="nm" name="nm" value="<c:out value="${item.nm }"></c:out>">
	  				<label for="nm">이름</label>
				</div>
		  	</div>
		  	<div class="col-12">
		  		<div class="form-floating">
	  				<input type="text" class="form-control" id="id" name="id" value="<c:out value="${item.id }"></c:out>" maxlength="20">
	  				<label for="id">아이디</label>
	  				<div class="valid-feedback" id="idFeedback"></div>
				</div>
		  	</div>
		  	<div class="col-12">
		  		<div class="form-floating">
	  				<input type="password" class="form-control" id="password" name="password" value="<c:out value="${item.password }"></c:out>">
	  				<label for="password">비밀번호</label>
				</div>
		  	</div>
		  	<div class="col-12">
		  		<div class="form-floating">
	  				<input type="password" class="form-control" id="floatingInputpassre" placeholder="비밀번호">
	  				<label for="floatingInputpassre">비밀번호확인</label>
				</div>
		  	</div>
		  	<div class="col-12">
		  		<div class="form-floating">
	  				<input type="date" class="form-control" id="dob" name="dob" value="<c:out value="${item.dob }"></c:out>">
	  				<label for="dob">생년월일</label>
				</div>
		  	</div>
		  	<div class="col-12">
			    <div class="form-floating">
			      <select class="form-select" id="gender_code" name="gender_code">
			        <option selected>선택</option>
			        <option value="201" <c:if test="${item.gender_code eq 201}">selected</c:if>> 남성 </option>
                    <option value="202" <c:if test="${item.gender_code eq 202}">selected</c:if>> 여성 </option>
                    <option value="203" <c:if test="${item.gender_code eq 203}">selected</c:if>> 기타 </option>
			      </select>
			      <label for="gender_code">성별</label>
			    </div>
		  	</div>
		  	<div class="col-12">
		  		<div class="form-floating">
	  				<input type="text" class="form-control" id="floatingInputtel" placeholder="연락처" value="숫자만 입력하세요" required="required">
	  				<label for="floatingInputtel">연락처 <i class="fa-solid fa-mobile-button"></i></label>
				</div>
		  	</div>
		  	<div class="col-12">
		  		<div class="form-floating">
	  				<input type="text" class="form-control" id="floatingInputtel2" placeholder="연락처" value="숫자만 입력하세요">
	  				<label for="floatingInputtel2">연락처 <i class="fa-solid fa-phone-flip"></i></label>
				</div>
		  	</div>
		  	<div class="col-12">
		  		<div class="form-floating">
	  				<input type="email" class="form-control" id="email" name="email" value="<c:out value="${item.email }"></c:out>">
	  				<label for="email">이메일</label>
				</div>
		  	</div>
		  	<div class="col-3">
		  		<div class="form-floating">
	  				<input type="text" class="form-control" id="sample4_postcode" name="sample4_postcode">
	  				<label for="sample4_postcode">우편번호</label>
				</div>
		  	</div>
		  	<div class="col">
	    		<button type="button" class="btn btn-info btn-lg my-1" onclick="sample4_execDaumPostcode()">주소찾기</button>
	  		</div>
	  		<div class="col-6">
		  		<div class="form-floating">
	  				<input type="text" class="form-control" id="sample4_extraAddress" name="sample4_extraAddress">
	  				<label for="sample4_extraAddress">참고항목</label>
				</div>
		  	</div>
		  	<div class="col-6">
		  		<div class="form-floating">
	  				<input type="text" class="form-control" id="sample4_roadAddress" name="sample4_roadAddress">
	  				<label for="sample4_roadAddress">도로명주소</label>
				</div>
		  	</div>
		  	<div class="col-6">
		  		<div class="form-floating">
	  				<input type="text" class="form-control" id="sample4_jibunAddress" name="sample4_jibunAddress">
	  				<input type="hidden" class="form-control" id="guide" name="guide">
	  				<label for="sample4_jibunAddress">지번주소</label>
				</div>
		  	</div>
		  	<div class="col-12">
		  		<div class="form-floating">
	  				<input type="text" class="form-control" id="sample4_detailAddress" name="sample4_detailAddress">
	  				<label for="sample4_detailAddress">상세주소</label>
				</div>
		  	</div>
		  	<div class="col-6 d-none">
		  		<div class="form-floating">
	  				<input type="text" class="form-control" id="lat" name="lat">
	  				<label for="lat">위도</label>
				</div>
		  	</div>
		  	<div class="col-6">
		  		<div class="form-floating d-none">
	  				<input type="text" class="form-control" id="lng" name="lng">
	  				<label for="lng">경도</label>
				</div>
		  	</div>
		  </div>
		  <div class="row text-center">
    		<div class="col">
      			<button type="button" class="btn btn-success" id="btnSave">등록</button>
      			<button type="reset" class="btn btn-warning mr-2"><i class="fa-solid fa-rotate"></i></button>
    		</div>
  		</div>
		</div>
	</div>
</form>
<form name="formVo" id="formVo" method="post">
<!-- *Vo.jsp s -->
<%@include file="memberVo.jsp"%>		<!-- #-> -->
<!-- *Vo.jsp e -->
</form>
<script type="text/javascript">

//Example starter JavaScript for disabling form submissions if there are invalid fields
(() => {
  'use strict'

  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  const forms = document.querySelectorAll('.needs-validation')

  // Loop over them and prevent submission
  Array.from(forms).forEach(form => {
    form.addEventListener('submit', event => {
      if (!form.checkValidity()) {
        event.preventDefault()
        event.stopPropagation()
      }

      form.classList.add('was-validated')
    }, false)
  })
})()
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
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

<!-- <script type="text/javascript">


//Example starter JavaScript for disabling form submissions if there are invalid fields
(() => {
  'use strict'

  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  const forms = document.querySelectorAll('.needs-validation')

  // Loop over them and prevent submission
  Array.from(forms).forEach(form => {
    form.addEventListener('submit', event => {
      if (!form.checkValidity()) {
        event.preventDefault()
        event.stopPropagation()
      }

      form.classList.add('was-validated')
    }, false)
  })
})()
</script> -->

</body>
</html>