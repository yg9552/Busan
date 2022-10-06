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
	<title>My Page</title>
	<script src="https://kit.fontawesome.com/144448c071.js" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link rel="stylesheet" href="../../../../../resources/assets/css/usercommon.css">
</head>
<body>
	<!-- userHeader s -->
		<%@include file="../../../common/xdmin/userHeader.jsp"%>
	<!-- userHeader e -->
<form name="mypageForm" method="post">
<!-- *Vo.jsp s -->
<%@include file="memberVo.jsp"%>		<!-- #-> -->
<!-- *Vo.jsp e -->


<div class="container mb-5">
	<h3 class="mb-5 mt-4 text-center">마이페이지</h3>
	<div class="row">
	
		<!-- side s -->
		<%@include file="../../../common/xdmin/myPageSide.jsp"%>
		<!-- side e -->
		<div class="col-9">
			<div class="row text-center border rounded p-2">
				<div class="col-3"><a href="#"><i class="fa-solid fa-truck fa-2x"></i><br>주문배송</a></div>
				<div class="col-3"><a href="#"><i class="fa-solid fa-coins fa-2x"></i><br>적립금</a></div>
				<div class="col-3"><a href="#"><i class="fa-solid fa-cart-shopping fa-2x"></i><br>장바구니</a></div>
				<div class="col-3"><a href="#"><i class="fa-solid fa-user-pen fa-2x"></i><br>내가작성한글</a></div>
				<div class="col-3 p-4 fs-3">0건</div>
				<div class="col-3 p-4 fs-3"><c:out value="${item.reserve }"/>원</div>
				<div class="col-3 p-4 fs-3">0개</div>
				<div class="col-3 p-4 fs-3">0개</div>
			</div>
		</div>
	</div>
	
	
</div>
</form>
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
</script>
</body>
</html>