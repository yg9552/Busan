<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<jsp:useBean id="CodeServiceImpl" class="com.yg.infra.modules.code.CodeServiceImpl"/>

<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>MAIN</title>
	
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
	<script src="https://kit.fontawesome.com/144448c071.js" crossorigin="anonymous"></script>
  	<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="../../../../../resources/assets/css/usercommon.css">
</head>
<body>
      <!-- userHeader s -->
			<%@include file="../../../common/xdmin/userHeader.jsp"%>
	  <!-- userHeader e -->
	  <div class="d-none">
	  	sessSeq: <c:out value="${sessSeq }"/><br>
		sessName: <c:out value="${sessName }"/><br>
		sessId: <c:out value="${sessId }"/><br>
	  </div>
<div class="d-none d-lg-block container mb-5">
	 <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
      <div class="carousel-inner" style="width: 1296px; height: 600px;">
      	<div class="carousel-item active" data-bs-interval="2000">
          <img src="../../../../../resources/image/hoody_con02.jpg" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item" data-bs-interval="2000">
          <img src="../../../../../resources/image/bg1.png" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item" data-bs-interval="2000">
          <img src="../../../../../resources/image/hoody_con02.png" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item" data-bs-interval="2000">
          <img src="../../../../../resources/image/bg2.png" class="d-block w-100" alt="...">
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
</div>
<div class="container mb-5 d-none d-sm-block d-lg-none">
	 <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
      <div class="carousel-inner" style="width: 768px; height: 300px;">
      	<div class="carousel-item active" data-bs-interval="2000">
          <img src="../../../../../resources/image/hoody_con02.jpg" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item" data-bs-interval="2000">
          <img src="../../../../../resources/image/bg1.png" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item" data-bs-interval="2000">
          <img src="../../../../../resources/image/hoody_con02.png" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item" data-bs-interval="2000">
          <img src="../../../../../resources/image/bg2.png" class="d-block w-100" alt="...">
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
</div>
<div class="container mb-5 d-sm-none">
	 <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
      <div class="carousel-inner" style="width: 360px; height: 150px;">
      	<div class="carousel-item active" data-bs-interval="2000">
          <img src="../../../../../resources/image/hoody_con02.jpg" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item" data-bs-interval="2000">
          <img src="../../../../../resources/image/bg1.png" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item" data-bs-interval="2000">
          <img src="../../../../../resources/image/hoody_con02.png" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item" data-bs-interval="2000">
          <img src="../../../../../resources/image/bg2.png" class="d-block w-100" alt="...">
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
</div>

<c:set var="listCodeOrigin" value="${CodeServiceImpl.selectListCachedCode('9')}"/>
<c:set var="listCodeDeliInfo" value="${CodeServiceImpl.selectListCachedCode('10')}"/>
<div class="container text-center">
	<h3 class="mb-4">BEST상품</h3>
	<form name="MainList" id="MainList" autocomplete="off" method="post">
	<input type="hidden" name="mainkey">
    <input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage }" default="1" />">
    <input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow }" />">
    <input type="hidden" name="checkboxSeqArray">
    <input type="hidden" name="productSeq" value="<c:out value="${vo.productSeq }"/>">
    <input type="hidden" name="memberSeq" value="<c:out value="${sessSeq }"/>">
	
	<div class="row autoplay">
		<c:forEach items="${list}" var="list" varStatus="status">
			<c:if test="${list.bestNy eq 1 }">
				<div class="col-3 mb-3">
					<a href="javascript:goView(<c:out value="${list.productSeq }"/>)">
						<div class="card" style="width: 18rem;">
							<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
						  		<c:if test="${listUploaded.type eq 2 && listUploaded.pseq eq list.productSeq && listUploaded.sort eq 0}">
		  							<img src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" class="card-img-top" alt="..." style="width: 286px; height: 286px;">
  								</c:if>
 								</c:forEach>
		  					<div class="card-body">
		    					<h5 class="card-title"> <c:out value="${list.product_name }"/> </h5>
		  					</div>
						  	<ul class="list-group list-group-flush">
							    <li class="list-group-item"> 가격 : <fmt:formatNumber value="${list.price}" pattern="#,###"/>원</li>
							    <c:choose>
							    	<c:when test="${list.discount_percent eq 0 }"></c:when>
							    	<c:otherwise>
							    		<li class="list-group-item text-danger"> 할인가: <fmt:formatNumber value="${list.discountprice}" pattern="#,###"/>원</li>
							    	</c:otherwise>
							    </c:choose>
							    <%-- 
							    <li class="list-group-item"> 배송정보 : 
							    <c:forEach items="${listCodeDeliInfo}" var="listDeliInfo" varStatus="statusDeliinfo">
									<c:if test="${list.deliveryinfo eq listDeliInfo.seq}"><c:out value="${listDeliInfo.name }"/></c:if>
								</c:forEach>
							    </li>
							     --%>
							    <c:choose>
							    	<c:when test="${list.deliverycost eq 0 }">
							    		<li class="list-group-item text-danger"> 배송비 : 무료배송 </li>
							    	</c:when>
							    	<c:otherwise>
							    		<li class="list-group-item"> 배송비 : <fmt:formatNumber value="${list.deliverycost}" pattern="#,###"/>원 </li>
							    	</c:otherwise>
							    </c:choose>
							    <%-- 
							    <li class="list-group-item"> 원산지 :
							    	<c:forEach items="${listCodeOrigin}" var="listOrigin" varStatus="statusOrigin">
										<c:if test="${list.origin_code eq listOrigin.seq}"><c:out value="${listOrigin.name }"/></c:if>
									</c:forEach>
							    </li>
							     --%>
							    <li class="list-group-item"> 적립금 : <fmt:formatNumber value="${list.reserve}" pattern="#,###"/>원 </li>
	
						  	</ul>
						</div>
					</a>
				</div>
			</c:if>
		</c:forEach>
	</div>
	                    <!-- pagination s -->
						<%-- <%@include file="../../../common/xdmin/pagination.jsp"%> --%>
						<!-- pagination e -->
	</form>
		
</div>
      <!-- userFooter s -->
			<%@include file="../../../common/xdmin/userFooter.jsp"%>
	  <!-- userFooter e -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<script type="text/javascript">
const myModal = document.getElementById('myModal')
const myInput = document.getElementById('myInput')

myModal.addEventListener('shown.bs.modal', () => {
  myInput.focus()
})
</script>
<script type="text/javascript">
var goUrlView = "/product/productView";			/* #-> */
var goUrlMain = "/Main";

var seq2 = $("input:hidden[name=productSeq]");
var form = $("form[name=MainList]");

goView = function(keyValue) {
	seq2.val(keyValue);
	form.attr("action", goUrlView).submit();
}
goList = function(thisPage) {
		$("input:hidden[name=thisPage]").val(thisPage);
		form.attr("action", goUrlMain).submit();
	}
$('.autoplay').slick({
	  slidesToShow: 4,
	  slidesToScroll: 1,
	  autoplay: true,
	  arrows : false,
	  pauseOnHover : true,
	  autoplaySpeed: 2000,
	  draggable : true,
	  responsive: [ // 반응형 웹 구현 옵션
          {  
            breakpoint: 1260, //화면 사이즈 1360px
            settings: {
              slidesToShow: 3
            } 
          },
          {  
            breakpoint: 960, //화면 사이즈 1360px
            settings: {
              slidesToShow: 2
            } 
          },
          { 
            breakpoint: 768, //화면 사이즈 768px
            settings: {    
              slidesToShow: 1
            } 
          }
        ]
	});
</script>
</body>
</html>