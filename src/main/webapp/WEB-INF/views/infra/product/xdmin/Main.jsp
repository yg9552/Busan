<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="CodeServiceImpl" class="com.yg.infra.modules.code.CodeServiceImpl"/>

<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>MAIN</title>
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
		.clearboth {
			clear: both;
		}
	</style>
</head>
<body>
      <!-- userHeader s -->
			<%@include file="../../../common/xdmin/userHeader.jsp"%>
	  <!-- userHeader e -->
	  <div>
	  	sessSeq: <c:out value="${sessSeq }"/><br>
		sessName: <c:out value="${sessName }"/><br>
		sessId: <c:out value="${sessId }"/><br>
	  </div>

<div class="container mb-5">
	<div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
	  <div class="carousel-inner" style="width: 1296px; height: 600px;">
	    <div class="carousel-item active">
	      <img src="../../../../../resources/image/bg1.png" class="d-block w-100" alt="...">
	    </div>
	    <div class="carousel-item">
	      <img src="../../../../../resources/image/bg2.png" class="d-block w-100" alt="...">
	    </div>
	    <div class="carousel-item">
	      <img src="../../../../../resources/image/bg3.png" class="d-block w-100" alt="...">
	    </div>
	  </div>
	</div>
</div>

<c:set var="listCodeOrigin" value="${CodeServiceImpl.selectListCachedCode('9')}"/>
<div class="container text-center">
	<h3 class="mb-4">BEST상품</h3>
	<form name="MainList" id="MainList" autocomplete="off" method="post">
	<input type="hidden" name="mainkey">
    <input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage }" default="1" />">
    <input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow }" />">
    <input type="hidden" name="checkboxSeqArray">
    <input type="hidden" name="seq" value="<c:out value="${vo.seq }"/>">
	<div class="row mb-3 mx-auto">
			<c:forEach items="${list}" var="list" varStatus="status">
			<div class="col-3 mb-3">
				<a href="javascript:goView(<c:out value="${list.seq }"/>)">
					<div class="card" style="width: 18rem;">
	  					<img src="../../../../../resources/image/26650739290.20220517095259.png" class="card-img-top" alt="...">
	  					<div class="card-body">
	    					<h5 class="card-title"> <c:out value="${list.product_name }"/> </h5>
	  					</div>
					  	<ul class="list-group list-group-flush">
						    <li class="list-group-item"> 가격 : <c:out value="${list.price }"/>원 </li>
						    <li class="list-group-item text-danger"> 할인가: 80,000</li>
						    <li class="list-group-item"> 배송정보 : <c:out value="${list.deliveryinfo }"/> </li>
						    <li class="list-group-item"> 원산지 :
						    	<c:forEach items="${listCodeOrigin}" var="listOrigin" varStatus="statusOrigin">
									<c:if test="${list.origin_code eq listOrigin.seq}"><c:out value="${listOrigin.name }"/></c:if>
								</c:forEach>
						    </li>
						    <li class="list-group-item"> 적립금 : <c:out value="${list.reserve }"/>원 </li>
					  	</ul>
					</div>
				</a>
			</div>
			</c:forEach>
			<div class="col-3">
				<a href="../prod/prodView.html">
					<div class="card" style="width: 18rem;">
	  					<img src="../../../../../resources/image/0220416093432.jpg" class="card-img-top" alt="...">
	  					<div class="card-body">
	    					<h5 class="card-title">피케티셔츠</h5>
	  					</div>
					  	<ul class="list-group list-group-flush">
						    <li class="list-group-item">100,000원</li>
						    <li class="list-group-item text-danger">할인가: 80,000</li>
						    <li class="list-group-item">무료배송</li>
						    <li class="list-group-item">적립금: 100원</li>
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
						    <li class="list-group-item">10,000원</li>
						    <li class="list-group-item text-danger">할인가: 8,000원</li>
						    <li class="list-group-item">무료배송</li>
						    <li class="list-group-item">적립금: 10원</li>
					  	</ul>
					</div>
				</a>
			</div>
			<div class="col-3">
				<a href="#">
					<div class="card" style="width: 18rem;">
	  					<img src="../../../../../resources/image/26650739290.20220517095259.png" class="card-img-top" alt="...">
	  					<div class="card-body">
	    					<h5 class="card-title">더블 폭스헤드 반팔 티셔츠</h5>
	  					</div>
					  	<ul class="list-group list-group-flush">
						    <li class="list-group-item">500,000원</li>
						    <li class="list-group-item text-danger">신상품</li>
						    <li class="list-group-item">배송비 : 3000원</li>
						    <li class="list-group-item">적립금: 500원</li>
					  	</ul>
					</div>
				</a>
			</div>
			<div class="col-3">
				<a href="#">
					<div class="card" style="width: 18rem;">
	  					<img src="../../../../../resources/image/coffee-g8719fce7c_640.png" class="card-img-top" alt="...">
	  					<div class="card-body">
	    					<h5 class="card-title">상품명</h5>
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
		</form>
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
var goUrlView = "/product/productView";			/* #-> */

var seq = $("input:hidden[name=seq]");
var form = $("form[name=MainList]");

goView = function(keyValue) {
	seq.val(keyValue);
	form.attr("action", goUrlView).submit();
}


</script>
</body>
</html>