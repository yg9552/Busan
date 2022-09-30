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

<form name="formList" method="post">
<input type="hidden" name="seq" value="<c:out value="${vo.seq }"/>">
<div class="container mb-5">
	<h3 class="mb-5 mt-4 text-center">마이페이지</h3>
	<div class="row">
		<div class="col-3">
			<div class="card">
			  <div class="card-body p-4 text-center">
			    <h5 class="card-title"><c:out value="${sessName }"/>님은</h5>
			    <h5 class="card-title text-danger">VIP</h5>
			    <p class="card-text">입니다</p>
			  </div>
			  <ul class="list-group list-group-flush text-center">
			    <li class="list-group-item"><a href="javascript:goView(<c:out value="${sessSeq }"/>)">개인정보수정</a></li>
			    <li class="list-group-item"><a href="/product/purchaseList?member_seq=<c:out value="${sessSeq }"/>">주문내역</a></li>
			    <li class="list-group-item"><a href="./mypageCart.html">장바구니</a></li>
			  </ul>
			</div>
		</div>
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
	var goUrlList = "/member/memberList"; 			/* #-> */
  	var goUrlInst = "/member/memberInst"; 			/* #-> */
  	var goUrlUpdt = "/member/memberUpdt";			/* #-> */
  	var goUrlUele = "/member/memberUele";			/* #-> */
  	var goUrlDele = "/member/memberDele";			/* #-> */
  	var goUrlForm = "/member/memberForm";			/* #-> */
  	var goUrlView = "/member/memberMod";			/* #-> */
  	
  	var seq = $("input:hidden[name=seq]");
  	var form = $("form[name=formList]");
  	
  	goView = function(keyValue) {
		seq.val(keyValue);
		form.attr("action", goUrlView).submit();
	}
</script>
</body>
</html>