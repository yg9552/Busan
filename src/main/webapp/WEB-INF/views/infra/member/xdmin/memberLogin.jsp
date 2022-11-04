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
	<title>Login</title>
	<script src="https://kit.fontawesome.com/144448c071.js" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link rel="stylesheet" href="../../../../../resources/assets/css/usercommon.css">
</head>
<body>
	  <!-- userHeader s -->
			<%@include file="../../../common/xdmin/userHeader.jsp"%>
	  <!-- userHeader e -->

<form method="post" id="formLogin" name="formLogin" autocomplete="on">
	<div class="container mt-4 text-center mb-4">
		<h3 class="mb-4">로그인</h3>
		<div class="border rounded m-auto w-25 mb-3 p-3">
			<div class="row justify-content-center">
				<div class="col-11 mb-3">
					<label for="id">아이디</label>
                    <input type="text" class="form-control" id="id" name="id" placeholder="아이디" value="<c:out value="${dto.id }"></c:out>">
				</div>
			</div>
			<div class="row justify-content-center mb-5">
				<div class="col-11">
				  <label for="password" class="form-label">비밀번호</label>
				  <input type="password" class="form-control" id="password" name="password" placeholder="암호" value="<c:out value="${dto.password }"></c:out>">
				</div>
			</div>
			<div class="row">
				<div class="d-grid gap-2 col mx-auto">
				  <button class="btn btn-info btn-lg" type="button" id="btnLogin">로그인</button>
				</div>
			</div>
		</div>
	</div>
</form>

<div class="container w-25 m-auto text-center">
	<div class="row justify-content-center">
		<div class="col">
			<a href="/member/xdminLogin">관리자 로그인</a> | 
			<a href="/member/findIdPwForm">아이디/비밀번호 찾기</a> | 
			<a href="/member/memberReg">회원가입</a>
		</div>
	</div>
</div>

<form name="form">
	<input type="hidden" name="nm"/>
	<input type="hidden" name="snsId"/>
	<input type="hidden" name="phone"/>
	<input type="hidden" name="email"/>
	<input type="hidden" name="gender"/>
	<input type="hidden" name="dob"/>
	<input type="hidden" name="snsImg"/>
	<input type="hidden" name="token"/>
</form>

<div class="container mt-5 text-center mb-4">
	<hr class="w-25 m-auto mb-3">
	<div class="row">
		<div class="d-grid gap-2 col-3 mx-auto">
		  <button class="btn btn-warning btn-lg text-uppercase" type="button" id="kakaoBtn">kakao 로그인</button>
		  <!-- <button class="btn btn-success btn-lg text-uppercase" type="button">naver</button>
		  <button class="btn btn-outline-dark btn-lg text-uppercase" type="button">google</button>
		  <button class="btn btn-primary btn-lg text-uppercase" type="button">facebook</button> -->
		</div>
	</div>
</div>

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script type="text/javascript">
$('#id, #password').on('keypress', function(e){
	  if(e.keyCode == '13'){
	  	$('#btnLogin').click();
	  }
});

var goUrlMain = "/Main"; 			/* #-> */

$("#btnLogin").on("click", function(){
	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		/* ,dataType:"json" */
		,url: "/member/loginProc"
		/* ,data : $("#formLogin").serialize() */
		,data : { "id" : $("#id").val(), "password" : $("#password").val() }
		,success: function(response) {
			if(response.rt == "success") {
				location.href = goUrlMain;
			} else {
				alert("아이디와 비밀번호를 확인하세요");
			}
		}
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
	});
	
});

Kakao.init('fff4722d1b0684553d2d53d2ea3f7fe9');
console.log(Kakao.isInitialized());

$("#kakaoBtn").on("click", function() {
	/* Kakao.Auth.authorize({
	      redirectUri: 'http://localhost:8080/member/kakaoCallback',
	    }); */
	
	Kakao.Auth.login({
	      success: function (response) {
	        Kakao.API.request({
	          url: '/v2/user/me',
	          success: function (response) {
	        	  
	        	  var accessToken = Kakao.Auth.getAccessToken();
	        	  Kakao.Auth.setAccessToken(accessToken);

	        	  var account = response.kakao_account;
	        	  
	        	  console.log(response)
	        	  console.log("email : " + account.email);
	        	  console.log("nm : " + account.name);
	        	  console.log("nickname : " + account.profile.nickname);
	        	  console.log("picture : " + account.gender);
	        	  console.log("picture : " + account.birthday);
	        	  console.log("picture : " + account.birthday.substring(0,2) + "-" + account.birthday.substring(2,account.birthday.length));
      	  
	        	  $("input[name=snsId]").val("카카오로그인");
	        	  $("input[name=name]").val(account.profile.nickname);
	        	  $("input[name=phone]").val(account.profile.phone_number);
	        	  $("input[name=email]").val(account.email);
	        	  $("input[name=dob]").val(account.birthday.substring(0,2) + "-" + account.birthday.substring(2,account.birthday.length));
	        	  $("input[name=snsImg]").val(account.profile.thumbnail_image_url);
	        	  $("input[name=token]").val(accessToken);
	        	  
	        	  if (account.gender === "male") {
	        		  $("input[name=gender]").val(5);
      		  } else {
      			  $("input[name=gender]").val(6);
 			  } 
	        	  
	        	 /*  $("form[name=form]").attr("action", "/member/kakaoLoginProc").submit(); */
			
	        	  $.ajax({
				async: true
				,cache: false
				,type:"POST"
				,url: "/member/kakaoLoginProc"
				,data: {"name": $("input[name=name]").val(), "snsId": $("input[name=snsId]").val(), "phone": $("input[name=phone]").val(), "email": $("input[name=email]").val(), "gender": $("input[name=gender]").val(), "dob": $("input[name=dob]").val(), "snsImg": $("input[name=snsImg]").val(), "token": $("input[name=token]").val()}
				,success : function(response) {
					if (response.rt == "fail") {
						alert("아이디와 비밀번호를 다시 확인 후 시도해 주세요.");
						return false;
					} else {
						window.location.href = "/Main";
					}
				},
				error : function(jqXHR, status, error) {
					alert("알 수 없는 에러 [ " + error + " ]");
				}
			});
	          },
	          fail: function (error) {
	            console.log(error)
	          },
	        })
	      },
	      fail: function (error) {
	        console.log(error)
	      },
	    })
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
<!-- <script type="text/javascript">
id check ajax
$("#id").on("focusout", function(){

 if(!checkId('id', 2, 0, "영대소문자,숫자,특수문자(-_.),4~20자리만 입력 가능합니다")) {
	return false;
} else { 
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
				document.getElementById("idFeedback").innerText = "사용 가능 합니다.";
				
				document.getElementById("ifmmIdAllowedNy").value = 1;
				
			} else {
				document.getElementById("id").classList.add('is-invalid');
				document.getElementById("id").classList.remove('is-valid');
				
				document.getElementById("idFeedback").classList.remove('valid-feedback');
				document.getElementById("idFeedback").classList.add('invalid-feedback');
				document.getElementById("idFeedback").innerText = "사용 불가능 합니다.";
				
				document.getElementById("ifmmIdAllowedNy").value = 0;
			}
		}
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
	});
}
});
</script> -->
</body>
</html>