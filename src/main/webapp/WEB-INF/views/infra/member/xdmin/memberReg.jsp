<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>회원가입</title>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<script src="https://kit.fontawesome.com/144448c071.js" crossorigin="anonymous"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fff4722d1b0684553d2d53d2ea3f7fe9&libraries=services"></script>
	<script src="https://kit.fontawesome.com/144448c071.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="../../../../../resources/assets/css/usercommon.css">
	<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=mfnayvqkam"></script>
	<script src="/resources/xdmin/js/commonXdmin.js"></script>
	<script src="/resources/xdmin/js/validationXdmin.js"></script>
	
</head>
<body>
	  <!-- userHeader s -->
			<%@include file="../../../common/xdmin/userHeader.jsp"%>
	  <!-- userHeader e -->

<form class="needs-validation" novalidate autocomplete="off" name="form" id="form" method="post" enctype="multipart/form-data">
<!-- *Vo.jsp s -->
<%@include file="memberVo.jsp"%>		<!-- #-> -->
<!-- *Vo.jsp e -->
	<div class="container">
		<h3 class="mb-4 mt-4 text-center">회원가입</h3>	
		<div class="w-50 mx-auto">
		  <div class="row g-3 mb-3">
		  	<span class="text-danger" style="font-size: 5px;">* 필수입력사항</span>
		  	<div class="col-12">
		  		<div class="form-floating">
	  				<input type="text" class="form-control" id="nm" name="nm" value="<c:out value="${item.nm }"></c:out>">
	  				<label for="nm">이름<span class="text-danger fs-5">*</span></label>
	  				<div class="invalid-feedback" id="nmFeedback"></div>
				</div>
		  	</div>
		  	<div class="col-12">
		  		<div class="form-floating">
		  			<input type="hidden" id="ifmmIdAllowedNy" name="ifmmIdAllowedNy" value="0">
	  				<input type="text" class="form-control" id="id" name="id" value="<c:out value="${item.id }"></c:out>" maxlength="20">
	  				<label for="id">아이디<span class="text-danger fs-5">*</span></label>
	  				<div class="invalid-feedback" id="idFeedback"></div>
				</div>
		  	</div>
		  	<div class="col-12">
		  		<div class="form-floating">
	  				<input type="password" class="form-control" id="password" name="password" value="<c:out value="${item.password }"></c:out>">
	  				<label for="password">비밀번호<span class="text-danger fs-5">*</span></label>
	  				<div class="invalid-feedback" id="passwordFeedback"></div>
				</div>
		  	</div>
		  	<div class="col-12">
		  		<div class="form-floating">
	  				<input type="password" class="form-control" id="passwordConfirm" placeholder="비밀번호">
	  				<label for="passwordConfirm">비밀번호확인</label>
	  				<div class="valid-feedback" id="confirmMsg"></div>
				</div>
		  	</div>
		  	<div class="col-12">
		  		<div class="form-floating">
	  				<input type="text" class="form-control" id="datepicker" name="dob" value="<c:out value="${item.dob }"></c:out>">
	  				<label for="datepicker">생년월일</label>
				</div>
		  	</div>
		  	<div class="col-12">
			    <div class="form-floating">
			      <select class="form-select" id="gender_code" name="gender_code">
			        <option value="201" <c:if test="${item.gender_code eq 201}">selected</c:if>> 남성 </option>
                    <option value="202" <c:if test="${item.gender_code eq 202}">selected</c:if>> 여성 </option>
                    <option value="203" <c:if test="${item.gender_code eq 203}">selected</c:if>> 기타 </option>
			      </select>
			      <label for="gender_code">성별</label>
			    </div>
		  	</div>
		  	<div class="col-12">
		  		<div class="form-floating">
	  				<input type="text" class="form-control" id="tel" placeholder="연락처" required="required" name="tel">
	  				<label for="tel">연락처 <i class="fa-solid fa-mobile-button"></i><span class="text-danger fs-5">*</span></label>
	  				<div class="invalid-feedback" id="telFeedback"></div>
				</div>
		  	</div>
		  	<div class="col-12">
		  		<div class="form-floating">
	  				<input type="email" class="form-control" id="email" name="email" value="<c:out value="${item.email }"></c:out>">
	  				<label for="email">이메일<span class="text-danger fs-5">*</span></label>
	  				<div class="invalid-feedback" id="emailFeedback"></div>
				</div>
		  	</div>
		  	<div class="col-lg-6">
		  		<div class="form-floating">
	  				<input type="text" class="form-control" id="sample4_postcode" name="zip">
	  				<label for="sample4_postcode">우편번호</label>
				</div>
		  	</div>
		  	<div class="d-grid gap-2 col-lg-6 mx-auto">
	    		<button type="button" class="btn btn-info my-1" onclick="sample4_execDaumPostcode()">주소찾기</button>
	  		</div>
		  	<div class="col-lg-6">
		  		<div class="form-floating">
	  				<input type="text" class="form-control" id="sample4_roadAddress" name="addr">
	  				<label for="sample4_roadAddress">도로명주소</label>
				</div>
		  	</div>
		  	<div class="col-lg-6">
		  		<div class="form-floating">
	  				<input type="text" class="form-control" id="sample4_jibunAddress" name="sample4_jibunAddress">
	  				<input type="hidden" class="form-control" id="guide" name="guide">
	  				<label for="sample4_jibunAddress">지번주소</label>
				</div>
		  	</div>
		  	<div class="col-lg-6">
		  		<div class="form-floating">
	  				<input type="text" class="form-control" id="sample4_extraAddress" name="sample4_extraAddress">
	  				<label for="sample4_extraAddress">참고항목</label>
				</div>
		  	</div>
		  	<div class="col-12">
		  		<div class="form-floating">
	  				<input type="text" class="form-control" id="sample4_detailAddress" name="addr_detail">
	  				<label for="sample4_detailAddress">상세주소</label>
				</div>
		  	</div>
		  	<div class="col-lg-6">
		  		<div class="form-floating d-none">
	  				<input type="text" class="form-control" id="lat" name="memberAddrLat">
	  				<label for="lat">위도</label>
				</div>
		  	</div>
		  	<div class="col-lg-6">
		  		<div class="form-floating d-none">
	  				<input type="text" class="form-control" id="lng" name="memberAddrLng">
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
<div id="map" style="width:100%;height:400px;"></div>
    <script type="text/javascript">
        var map = null;

        function initMap() {
            map = new naver.maps.Map('map', {
                center: new naver.maps.LatLng(37.3595704, 127.105399),
                zoom: 10
            });
        }
    </script>
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
<script type="text/javascript">
//id check ajax
$("#id").on("focusout", function(){

//  if(!checkId('id',2,0,"영대소문자,숫자,특수문자(-_.),4~20자리만 입력 가능합니다")) {
//	document.getElementById("idFeedback").classList.remove('valid-feedback');
//		document.getElementById("idFeedback").classList.add('invalid-feedback');
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
  	
  	$("#nm").on("focusout", function(){
		if(!checkOnlyKorean('nm',2,0,"이름은 한글로 특수문자, 공백없이 입력해 주세요")) {
			return false;
		} 
	});
  	
  	$("#password").on("focusout", function(){
		if(!checkPassword('password',2,0,"영대소문자,숫자,특수문자(!@#$%^&*),8~20자리 조합만 입력 가능합니다")) {
			return false;
		} 
	});
  	
  	$("#tel").on("focusout", function(){
		if(!checkOnlyNumber('tel',2,0,0,0,0," - 없이 휴대전화 번호를 입력해주세요")) {
			return false;
		} 
	});
  	
  	$("#btnSave").on("click", function(){
  		if (validationInst() == false){
   			return false;
   		} else {
   			form.attr("action", goUrlInst).submit();
   		}
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
  	
  	validationInst = function() {
		if(!checkOnlyKorean('nm', 2, 0, "이름은 특수문자, 공백없이 입력해 주세요")) return false;
		if(!checkId('id', 2, 0, "영대소문자,숫자,특수문자(-_.),4~20자리만 입력 가능합니다")) return false;
		if(!checkPassword('password', 2, 0, "영대소문자,숫자,특수문자(!@#$%^&*),8~20자리 조합만 입력 가능합니다")) return false;
		if(!checkEmail('email', 2, 0, "이메일 주소를 올바르게 입력해 주세요")) return false;
	}
  	
</script>

<!-- 비밀번호체크 -->
<script type="text/javascript">
      $("#passwordConfirm").on("focusout", function passConfirm() {
     	/* 비밀번호, 비밀번호 확인 입력창에 입력된 값을 비교해서 같다면 비밀번호 일치, 그렇지 않으면 불일치 라는 텍스트 출력.*/
     	/* document : 현재 문서를 의미함. 작성되고 있는 문서를 뜻함. */
     	/* getElementByID('아이디') : 아이디에 적힌 값을 가진 id의 value를 get을 해서 password 변수 넣기 */
     		var password = document.getElementById('password');					//비밀번호 
     		var passwordConfirm = document.getElementById('passwordConfirm');	//비밀번호 확인 값
     		var confrimMsg = document.getElementById('confirmMsg');				//확인 메세지
     		var correctColor = "#00ff00";	//맞았을 때 출력되는 색깔.
     		var wrongColor ="#ff0000";	//틀렸을 때 출력되는 색깔
     		
     		if(password.value == passwordConfirm.value){//password 변수의 값과 passwordConfirm 변수의 값과 동일하다.
     			document.getElementById("password").classList.add('is-valid');
				document.getElementById("password").classList.remove('is-invalid');
				passwordConfirm.classList.add('is-valid');
				passwordConfirm.classList.remove('is-invalid');
     			document.getElementById('confirmMsg').classList.remove('invalid-feedback');
     			document.getElementById('confirmMsg').classList.add('valid-feedback');
     			document.getElementById("confirmMsg").innerText = "비밀번호 일치";
     			//confirmMsg.style.color = correctColor;/* span 태그의 ID(confirmMsg) 사용  */
     			//confirmMsg.innerHTML ="비밀번호 일치";/* innerHTML : HTML 내부에 추가적인 내용을 넣을 때 사용하는 것. */
     		}else{
     			document.getElementById("password").classList.remove('is-valid');
				/* document.getElementById("password").classList.add('is-invalid'); */
				passwordConfirm.classList.remove('is-valid');
				passwordConfirm.classList.add('is-invalid');
     			document.getElementById('confirmMsg').classList.add('invalid-feedback');
     			document.getElementById('confirmMsg').classList.remove('valid-feedback');
     			document.getElementById("confirmMsg").innerText = "비밀번호 불일치";
     			//confirmMsg.style.color = wrongColor;
     			//confirmMsg.innerHTML ="비밀번호 불일치";
     		}
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
				
				<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
				<!-- datepicker -->
				<script>
				   $(function() {
				       //input을 datepicker로 선언
				       $("#datepicker").datepicker({
				           dateFormat: 'yy-mm-dd' //달력 날짜 형태
				           ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
				           ,showMonthAfterYear:true // 월- 년 순서가아닌 년도 - 월 순서
				           ,changeYear: true //option값 년 선택 가능
				           ,changeMonth: true //option값  월 선택 가능                
				           ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
				           ,buttonImageOnly: true //버튼 이미지만 깔끔하게 보이게함
				           ,buttonText: "선택" //버튼 호버 텍스트              
				           ,yearSuffix: "년" //달력의 년도 부분 뒤 텍스트
				           ,monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 텍스트
				           ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip
				           ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 텍스트
				           ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 Tooltip
				           ,minDate: "-100y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
				           ,maxDate: "+5y" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)
				       	   ,yearRange: 'c-120:c+1'
				       });                    
				       
				       //초기값을 오늘 날짜로 설정해줘야 합니다.
				       $('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)            
				   });
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