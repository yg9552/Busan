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
	<title>Login</title>
	<script src="https://kit.fontawesome.com/144448c071.js" crossorigin="anonymous"></script>
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

<form action="/" method="post">
	<div class="container mt-4 text-center mb-4">
		<h3 class="mb-4">로그인</h3>
		<div class="border rounded m-auto w-25 mb-3 p-3">
			<div class="row justify-content-center">
				<div class="col-11 mb-3">
				  <label for="id" class="form-label">아이디</label>
				  <input type="text" class="form-control" id="id" placeholder="아이디">
				</div>
			</div>
			<div class="row justify-content-center mb-5">
				<div class="col-11">
				  <label for="password" class="form-label">비밀번호</label>
				  <input type="password" class="form-control" id="password" placeholder="암호">
				</div>
			</div>
			<div class="row">
				<div class="d-grid gap-2 col mx-auto">
				  <button class="btn btn-info btn-lg" type="submit">로그인</button>
				</div>
			</div>
		</div>
	</div>
</form>

<div class="container w-25 m-auto text-center">
	<div class="row justify-content-center">
		<div class="col-4">
			<a href="Findidpassword.html">아이디찾기</a>
		</div>
		<div class="col-4">
			<a href="Findidpassword.html">비밀번호찾기</a>
		</div>
		<div class="col-4">
			<a href="./RegForm.html">회원가입</a>
		</div>
	</div>
</div>


<div class="container mt-5 text-center mb-4">
		<hr class="w-25 m-auto mb-3">
		<div class="row">
			<div class="d-grid gap-2 col-3 mx-auto">
			  <button class="btn btn-warning btn-lg text-uppercase" type="button">kakao</button>
			  <button class="btn btn-success btn-lg text-uppercase" type="button">naver</button>
			  <button class="btn btn-outline-dark btn-lg text-uppercase" type="button">google</button>
			  <button class="btn btn-primary btn-lg text-uppercase" type="button">facebook</button>
			</div>
		</div>
	</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
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
</body>
</html>