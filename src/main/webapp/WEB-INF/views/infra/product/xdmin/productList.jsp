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
	<title>prodList</title>
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
		.clearboth {
			clear: both;
		}
	</style>
</head>
<body>
	  <!-- userHeader s -->
			<%@include file="../../../common/xdmin/userHeader.jsp"%>
	  <!-- userHeader e -->
	<div class="container text-center">
		<div class="row mb-3 mx-auto">
			<c:forEach items="${list}" var="list" varStatus="status">
			<div class="col-3 mb-3">
				<a href="/codeGroup/codeGroupView?seq=<c:out value="${list.seq }"/>">
					<div class="card" style="width: 18rem;">
	  					<img src="../../../../../resources/image/26650739290.20220517095259.png" class="card-img-top" alt="...">
	  					<div class="card-body">
	    					<h5 class="card-title"> <c:out value="${list.product_name }"/> </h5>
	  					</div>
					  	<ul class="list-group list-group-flush">
						    <li class="list-group-item"> 가격 : <c:out value="${list.price }"/>원 </li>
						    <li class="list-group-item"> 배송정보 : <c:out value="${list.deliveryinfo }"/> </li>
						    <li class="list-group-item"> 원산지 :  </li>
						    <li class="list-group-item"> 적립금 : <c:out value="${list.reserve }"/>원 </li>
					  	</ul>
					</div>
				</a>
			</div>
			</c:forEach>
			<div class="col-3">
				<a href="./prodView.html">
					<div class="card" style="width: 18rem;">
	  					<img src="../../../../../resources/image/coffee-g8719fce7c_640.png" class="card-img-top" alt="...">
	  					<div class="card-body">
	    					<h5 class="card-title">커피콩</h5>
	  					</div>
					  	<ul class="list-group list-group-flush">
						    <li class="list-group-item">상품가격</li>
						    <li class="list-group-item">배송정보</li>
						    <li class="list-group-item">원산지</li>
						    <li class="list-group-item">적립금</li>
					  	</ul>
					</div>
				</a>
			</div>
			<div class="col-3">
				<a href="#">
					<div class="card" style="width: 18rem;">
	  					<img src="../../../../../resources/image/basict.png" class="card-img-top" alt="...">
	  					<div class="card-body">
	    					<h5 class="card-title">BASIC T-SHIRT</h5>
	  					</div>
					  	<ul class="list-group list-group-flush">
						    <li class="list-group-item">상품가격</li>
						    <li class="list-group-item">배송정보</li>
						    <li class="list-group-item">원산지</li>
						    <li class="list-group-item">적립금</li>
					  	</ul>
					</div>
				</a>
			</div>
			<div class="col-3">
				<a href="./prodView2.html">
					<div class="card" style="width: 18rem;">
	  					<img src="../../../../../resources/image/26650739290.20220517095259.png" class="card-img-top" alt="...">
	  					<div class="card-body">
	    					<h5 class="card-title">더블 폭스헤드 반팔 티셔츠</h5>
	  					</div>
					  	<ul class="list-group list-group-flush">
						    <li class="list-group-item">상품가격</li>
						    <li class="list-group-item">배송정보</li>
						    <li class="list-group-item">원산지</li>
						    <li class="list-group-item">적립금</li>
					  	</ul>
					</div>
				</a>
			</div>
		</div>
		<nav aria-label="Page navigation example">
		  <ul class="pagination pagination-sm justify-content-center">
		  	<li class="page-item">
		      <a class="page-link" href="#" aria-label="Previous">
		        <span aria-hidden="true"><i class="fa-solid fa-angles-left"></i></span>
		      </a>
		    </li>
		    <li class="page-item">
		      <a class="page-link" href="#"><i class="fa-solid fa-angle-left"></i></i></a>
		    </li>
		    <li class="page-item active"><a class="page-link" href="#">1</a></li>
		    <li class="page-item"><a class="page-link" href="#">2</a></li>
		    <li class="page-item"><a class="page-link" href="#">3</a></li>
		    <li class="page-item">
		      <a class="page-link" href="#"><i class="fa-solid fa-angle-right"></i></a>
		    </li>
		    <li class="page-item">
		      <a class="page-link" href="#" aria-label="Next">
		        <span aria-hidden="true"><i class="fa-solid fa-angles-right"></i></span>
		      </a>
		    </li>
		  </ul>
		</nav>
	</div>



<!-- 
<footer class="container-fluid bg-light text-center p-2" style="clear: both;">
	<div>
		<a class="navbar-brand" href="../main/main.html"><img src="../image/lgo.png" alt="" width="100" height="40" class="d-inline-block mb-2"></a>
	</div>
	<span class="fs-6 fw-light">회사명 : OOO | 대표자 : OOO | 사업자등록번호 : 000 | 통신판매신고번호 : 000 | 개인정보관리책임자 : OOO | 전화번호 : 000</span><br>
	<ul class="list-inline">
		<li class="list-inline-item"><a href="https://www.navercorp.com" data-clk="intronhn">회사소개</a></li>
		<li class="list-inline-item"><a href="https://recruit.navercorp.com/" data-clk="recruit">인재채용</a></li>
		<li class="list-inline-item"><a href="https://www.navercorp.com/naver/proposalGuide" data-clk="contact">제휴제안</a></li>
		<li class="list-inline-item"><a href="/policy/service.html" data-clk="service">이용약관</a></li>
		<li class="list-inline-item"><a href="/policy/privacy.html" data-clk="privacy"><strong>개인정보처리방침</strong></a></li>
		<li class="list-inline-item"><a href="/policy/youthpolicy.html" data-clk="youth">청소년보호정책</a></li>
		<li class="list-inline-item"><a href="/policy/spamcheck.html" data-clk="policy">정책</a></li>
		<li class="list-inline-item"><a href="https://help.naver.com/" data-clk="helpcenter">고객센터</a></li>
	</ul>
	<span class="m-auto"><i class="fa-solid fa-copyright"></i> copyright</span>
</footer>
 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script type="text/javascript">
const myModal = document.getElementById('myModal')
const myInput = document.getElementById('myInput')

myModal.addEventListener('shown.bs.modal', () => {
  myInput.focus()
})
</script>
</body>
</html>