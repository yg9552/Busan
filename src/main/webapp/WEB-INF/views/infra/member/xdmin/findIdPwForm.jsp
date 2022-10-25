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
	<title>FindIDPW</title>
	<script src="https://kit.fontawesome.com/144448c071.js" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link rel="stylesheet" href="../../../../../resources/assets/css/usercommon.css">
</head>
<body>
	  <!-- userHeader s -->
			<%@include file="../../../common/xdmin/userHeader.jsp"%>
	  <!-- userHeader e -->

		<div class="container">
			<div class="area_inputs wow fadeIn w-50 mx-auto">
				<div class="sub_title font-weight-bold text-center mb-5">
					<h3>아이디/비밀번호 찾기</h3>
				</div>
				<div class="d-flex mb-3">
                  <button type="button" class="btn col btn-primary" id="search_1" onclick="search_check(1)">아이디 찾기</button>
                  <button class="btn col" id="search_2" onclick="search_check(2)">비밀번호 찾기</button>
                </div>
				
				<div id="searchI">
					<div class="form-floating mb-3">
		  				<input type="text" class="form-control" id="nm" name="nm" maxlength="20">
		  				<label for="nm">이름</label>
		  				<div class="valid-feedback" id="idFeedback"></div>
					</div>
					<div class="form-floating mb-3">
		  				<input type="email" class="form-control" id="email" name="email">
		  				<label for="email">이메일</label>
					</div>
					<div class="form-group d-grid gap-2">
						<button id="btnFindId" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#findidmodal">아이디찾기</button>
						<a class="btn btn-danger btn-block"	href="${pageContext.request.contextPath}">취소</a>
						
						<!-- Modal -->
						<div class="modal fade" id="findidmodal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
						  <div class="modal-dialog modal-dialog-centered">
						    <div class="modal-content">
						      <div class="modal-body text-center" id="findid_value">
						        
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
						        <a type="button" class="btn btn-primary" href="/member/memberLogin">로그인</a>
						      </div>
						    </div>
						  </div>
						</div>
					</div>
				</div>
			
				<div id="searchP" style="display: none;">
					<div class="form-floating mb-3">
		  				<input type="text" class="form-control" id="id" name="id" maxlength="20">
		  				<label for="id">아이디</label>
					</div>
					<div class="form-floating mb-3">
		  				<input type="email" class="form-control" id="email2" name="email">
		  				<label for="email2">이메일</label>
					</div>
					<div class="form-group d-grid gap-2">
						<button id="btnFindPw" type="button" class="btn btn-primary btn-block" data-bs-toggle="modal" data-bs-target="#findpwmodal">비밀번호찾기</button>
						<a class="btn btn-danger btn-block"	href="${pageContext.request.contextPath}">취소</a>
						
						<!-- Modal -->
						<div class="modal fade" id="findpwmodal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
						  <div class="modal-dialog modal-dialog-centered">
						    <div class="modal-content" id="findPwSuccess">
						      <div class="modal-header">
						        <h1 class="modal-title fs-5" id="staticBackdropLabel">비밀번호 재설정</h1>
						        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						      </div>
						      <div class="modal-body">
						        <div class="form-floating mb-3">
					  				<input type="password" class="form-control" id="password" name="password" value="<c:out value="${item.password }"></c:out>">
					  				<label for="password">비밀번호</label>
								</div>
						        <div class="form-floating">
					  				<input type="password" class="form-control" id="passwordConfirm">
	  								<label for="passwordConfirm">비밀번호확인</label>
					  				<div class="valid-feedback" id="confirmMsg"></div>
								</div>
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
						        <button type="button" class="btn btn-success" id="pwconfirm">변경하기</button>
						      </div>
						    </div>
						    <div class="modal-content" id="findPwFail">
						    	<div class="modal-body text-center">아이디와 이메일을 다시 확인하세요.</div>
						    	<div class="modal-footer">
							        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
						      </div>
						  	</div>
						  </div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
		<script type="text/javascript">
			const myModal = document.getElementById('myModal')
			const myInput = document.getElementById('myInput')
			
			myModal.addEventListener('shown.bs.modal', () => {
			  myInput.focus()
			})
		</script>
	<script type="text/javascript">
	var goUrlUpdtPw = "/member/memberUpdtPw";			/* #-> */
	var form = $("form[name=pwform]");
	
	function search_check(num) {
		if (num == '1') {
			document.getElementById("searchP").style.display = "none";
			document.getElementById("searchI").style.display = "";
			document.getElementById("search_1").classList.add('btn-primary');
			document.getElementById("search_2").classList.remove('btn-primary');	
		} else {
			document.getElementById("searchI").style.display = "none";
			document.getElementById("searchP").style.display = "";
			document.getElementById("search_2").classList.add('btn-primary');
			document.getElementById("search_1").classList.remove('btn-primary');
		}
	}
	
	$("#btnFindPw").on("click", function(){
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/member/findPw"
			,data : { "id" : $("#id").val(), "email" : $("#email2").val() }
			,success: function(response) {
				if(response.rt == "success") {
					document.getElementById("findPwFail").style.display = "none";
					document.getElementById("findPwSuccess").style.display = "";
				} else {
					document.getElementById("findPwFail").style.display = "";
					document.getElementById("findPwSuccess").style.display = "none";
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});
	
	$("#btnFindId").on("click", function(){
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/member/findId"
			,data : { "nm" : $("#nm").val(), "email" : $("#email").val() }
			,success: function(response) {
				if(response.rt == "success") {
					document.getElementById("findid_value").innerText = "회원님의 아이디는 " + response.id + " 입니다." ;
				} else {
					document.getElementById("findid_value").classList.add('btn-primary');
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});
	
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
					document.getElementById("password").classList.add('is-invalid');
					passwordConfirm.classList.remove('is-valid');
					passwordConfirm.classList.add('is-invalid');
        			document.getElementById('confirmMsg').classList.add('invalid-feedback');
        			document.getElementById('confirmMsg').classList.remove('valid-feedback');
        			document.getElementById("confirmMsg").innerText = "비밀번호 불일치";
        			//confirmMsg.style.color = wrongColor;
        			//confirmMsg.innerHTML ="비밀번호 불일치";
        		}
     	});
	
	$("#pwconfirm").on("click", function(){
  		if(!confirm("변경 하시겠습니까?")){
			return false;
		}else{
			form.attr("action", goUrlUpdtPw).submit();
		}
  	});
	
	
	</script>

	  