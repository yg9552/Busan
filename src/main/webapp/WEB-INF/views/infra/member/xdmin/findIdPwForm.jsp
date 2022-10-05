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
				<div class="row mx-auto w-50">
					<div class="col-auto form-check form-check-inline mb-3">
						<input type="radio" class="form-check-input" id="search_1" name="search_total" onclick="search_check(1)" checked="checked">
						<label class="custom-control-label font-weight-bold" for="search_1">아이디 찾기</label>
					</div>
					<div class="col-auto form-check form-check-inline">
						<input type="radio" class="form-check-input" id="search_2" name="search_total" onclick="search_check(2)"> 
						<label class="custom-control-label font-weight-bold" for="search_2">비밀번호 찾기</label>
					</div>
				</div>
				
				<div id="searchI">
					<div class="form-floating mb-3">
		  				<input type="text" class="form-control" id="nm" name="nm" maxlength="20">
		  				<label for="nm">이름</label>
					</div>
					<div class="form-floating mb-3">
		  				<input type="email" class="form-control" id="email" name="email">
		  				<label for="email">이메일</label>
					</div>
					
					<div class="form-group">
						<button id="searchBtn" type="button" onclick="idSearch_click()" class="btn btn-primary">확인</button>
						<a class="btn btn-danger btn-block"	href="${pageContext.request.contextPath}">취소</a>
					</div>
				</div>
				<div id="searchP" style="display: none;">
					<div class="form-floating mb-3">
		  				<input type="text" class="form-control" id="id" name="id" maxlength="20">
		  				<label for="id">아이디</label>
					</div>
					<div class="form-floating mb-3">
		  				<input type="email" class="form-control" id="email" name="email">
		  				<label for="email">이메일</label>
					</div>
					<div class="form-group">
						<button id="searchBtn2" type="button" class="btn btn-primary btn-block">확인</button>
					<a class="btn btn-danger btn-block"	href="${pageContext.request.contextPath}">취소</a>
				</div>
				</div>
			</div>
		</div>
	<script type="text/javascript">
	function search_check(num) {
		if (num == '1') {
			document.getElementById("searchP").style.display = "none";
			document.getElementById("searchI").style.display = "";	
		} else {
			document.getElementById("searchI").style.display = "none";
			document.getElementById("searchP").style.display = "";
		}
	}
	</script>


<script type="text/javascript">
const myModal = document.getElementById('myModal')
const myInput = document.getElementById('myInput')

myModal.addEventListener('shown.bs.modal', () => {
  myInput.focus()
})
</script>
	  