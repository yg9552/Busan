<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Modify</title>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<script src="https://kit.fontawesome.com/144448c071.js" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	
	<link rel="stylesheet" href="../../../../../resources/assets/css/usercommon.css">
</head>
<body>
      <!-- userHeader s -->
			<%@include file="../../../common/xdmin/userHeader.jsp"%>
	  <!-- userHeader e -->

<div class="container mb-5">
	<h3 class="mb-5 mt-4 text-center">마이페이지</h3>
	<div class="row">
		<div class="col-3">
			<div class="card">
			  <div class="card-body p-4 text-center">
			    <h5 class="card-title"><c:out value="${sessName }"/>회원님은</h5>
			    <h5 class="card-title text-danger">VIP</h5>
			    <p class="card-text">입니다</p>
			  </div>
			  <ul class="list-group list-group-flush text-center">
			    <li class="list-group-item"><a href="javascript:goView(<c:out value="${sessSeq }"/>)">개인정보수정</a></li>
			    <li class="list-group-item"><a href="./mypageOrderedList.html">주문내역</a></li>
			    <li class="list-group-item"><a href="./mypageCart.html">장바구니</a></li>
			  </ul>
			</div>
		</div>
		<div class="col-9">
			<h5 class="mb-3 text-center">개인정보수정</h5>
			<form name="viewform" id="viewform" method="post" autocomplete="off">
			<!-- *Vo.jsp s -->
			<%@include file="memberVo.jsp"%>		<!-- #-> -->
			<!-- *Vo.jsp e -->
				<div class="w-50 mx-auto">
				  <div class="row g-3 mb-3">
				  	<div class="col-12">
				  		<div class="form-floating">
			  				<input type="text" readonly class="form-control" id="nm" name="nm" value="<c:out value="${item.nm }"></c:out>">
			  				<label for="nm">이름</label>
						</div>
				  	</div>
				  	<div class="col-8">
				  		<div class="form-floating">
			  				<input type="text" class="form-control" id="id" name="id" value="<c:out value="${item.id }"></c:out>" maxlength="20" readonly>
			  				<label for="id">아이디</label>
			  				<div class="valid-feedback" id="idFeedback"></div>
						</div>
				  	</div>
				  	<div class="col-4 my-4">
						<button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#pwchange">
						  비밀번호변경
						</button>
						<div class="modal fade" id="pwchange" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
						  <div class="modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h1 class="modal-title fs-5" id="staticBackdropLabel">비밀번호변경</h1>
						        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						      </div>
						      <div class="modal-body">
						        <div class="form-floating mb-3">
					  				<input type="password" class="form-control" id="password" name="password" value="<c:out value="${item.password }"></c:out>">
					  				<label for="password">변경비밀번호</label>
								</div>
						        <div class="form-floating">
					  				<input type="password" class="form-control" id="passwordConfirm" placeholder="비밀번호">
	  								<label for="passwordConfirm">비밀번호확인</label>
					  				<div class="valid-feedback" id="confirmMsg"></div>
								</div>
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
						        <button type="button" class="btn btn-success" id="pwconfirm">변경하기</button>
						      </div>
						    </div>
						  </div>
						</div>
				  		
				  	</div>
				  	<div class="col-12">
				  		<div class="form-floating">
				  			<input type="text" class="form-control" id="datepicker" name="dob" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${item.dob}"/>">
			  				<label for="datepicker">생년월일</label>
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
				  	<div class="col-7">
				  		<div class="form-floating">
			  				<input type="text" class="form-control" id="floatingInputzip" placeholder="zip">
			  				<label for="floatingInputzip">우편번호</label>
						</div>
				  	</div>
				  	<div class="col-5">
			    		<button type="button" class="btn btn-info btn-lg my-1">주소찾기</button>
			  		</div>
				  	<div class="col-12">
				  		<div class="form-floating">
			  				<input type="text" class="form-control" id="floatingInputaddr" placeholder="주소">
			  				<label for="floatingInputaddr">주소</label>
						</div>
				  	</div>
				  	<div class="col-12">
				  		<div class="form-floating">
			  				<input type="text" class="form-control" id="floatingInputaddrdetail" placeholder="상세주소">
			  				<label for="floatingInputaddrdetail">상세주소</label>
						</div>
				  	</div>
				  </div>
		  <div class="row text-center">
    		<div class="col">
      			<button type="button" class="btn btn-warning" id="btnSave">수정</button>
      			<button type="reset" class="btn btn-danger">초기화</button>
      			<button type="button" class="btn btn-danger mx-auto" id="btnUelete">삭제 <i class="fa-solid fa-trash-can"></i></button>
    			<button type="button" class="btn btn-danger mr-2" id="btnDelete">회원탈퇴<i class="fa-solid fa-trash-can"></i></button>
    		</div>
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

      <!-- userFooter s -->
			<%@include file="../../../common/xdmin/userFooter.jsp"%>
	  <!-- userFooter e -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script type="text/javascript">
const myModal = document.getElementById('myModal')
const myInput = document.getElementById('myInput')

myModal.addEventListener('shown.bs.modal', () => {
  myInput.focus()
})
</script>
<script type="text/javascript">
	var goUrlList = "/member/memberList"; 			/* #-> */
	var goUrlInst = "/member/memberInst"; 			/* #-> */
	var goUrlUpdt = "/member/memberUpdt";			/* #-> */
	var goUrlUele = "/member/memberUele";			/* #-> */
	var goUrlDele = "/member/memberDele";			/* #-> */
	var goUrlForm = "/member/memberForm";			/* #-> */
	var goUrlView = "/member/memberMod";			/* #-> */
	var goUrlUpdtPw = "/member/memberUpdtPw";			/* #-> */
	
	var seq = $("input:hidden[name=memberSeq]");
	
	var form = $("form[name=viewform]");
  	var formVo = $("form[name=formVo]");
	
	$("#btnSave").on("click", function(){
  		if (seq.val() == "0" || seq.val() == ""){
  			
  			form.attr("action", goUrlInst).submit();
  	   		// insert
  	   		/* if (validationInst() == false) return false; */
  	   		
  	   	} else {
  	   		
  	   		form.attr("action", goUrlUpdt).submit();
  	   		// update
  	   		/* keyName.val(atob(keyName.val())); */
  	   		/* if (validationUpdt() == false) return false; */
  	   		
  	   	}
  	});
	goView = function(keyValue) {
		seq.val(keyValue);
		form.attr("action", goUrlView).submit();
	}
	$("#pwconfirm").on("click", function(){
  		if(!confirm("변경 하시겠습니까?")){
			return false;
		}else{
			form.attr("action", goUrlUpdtPw).submit();
		}
  	});
	
	$("#btnUelete").on("click", function(){
  		if(!confirm("삭제 하시겠습니까?")){
			return false;
		}else{
			form.attr("action", goUrlUele).submit();
		}
  	});
  	
  	
  	$("#btnDelete").on("click", function(){
  		if(!confirm("삭제 하시겠습니까?")){
			return false;
		}else{
			form.attr("action", goUrlDele).submit();
		}
  	});
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
          ,minDate: "-100Y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
          ,maxDate: "+100y" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)
          ,yearRange: 'c-50:c+50'
      });                    
      
      //초기값을 오늘 날짜로 설정해줘야 합니다.
      //$('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)            
  });
</script>
</body>
</html>