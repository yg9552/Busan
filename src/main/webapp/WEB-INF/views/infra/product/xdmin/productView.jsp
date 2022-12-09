<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="CodeServiceImpl" class="com.yg.infra.modules.code.CodeServiceImpl"/>

<!doctype html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title><c:out value="${item.product_name }"></c:out></title>
	<script src="https://kit.fontawesome.com/144448c071.js" crossorigin="anonymous"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="../../../../../resources/assets/css/usercommon.css">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</head>
<body>

<!-- userHeader s -->
			<%@include file="../../../common/xdmin/userHeader.jsp"%>
<!-- userHeader e -->

<form name="viewForm" method="post" autocomplete="off" id="viewForm">
<!-- *Vo.jsp s -->
<%@include file="productVo.jsp"%>		<!-- #-> -->
<!-- *Vo.jsp e -->
	<div class="container">
		<div id="carouselExampleIndicators" class="carousel slide w-50 float-start" data-bs-ride="true">
		  <div class="carousel-indicators">
		    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
		    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
		    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
		  </div>
		  <div class="carousel-inner">
		  	<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
		  		<c:choose>
		  			<c:when test="${listUploaded.type eq 2 && listUploaded.sort eq 0}">
		  				<div class="carousel-item active">
					      <img src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" class="d-block" alt="...">
					    </div>
		  			</c:when>
		  			<c:otherwise>
		  				<c:if test="${listUploaded.type eq 2 }">
						    <div class="carousel-item">
						      <img src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" class="d-block" alt="...">
						    </div>
					    </c:if>
				    </c:otherwise>
		  		</c:choose>
		    </c:forEach>
		  </div>
		  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="visually-hidden">Previous</span>
		  </button>
		  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="visually-hidden">Next</span>
		  </button>
		</div>
		
		<c:set var="listCodebrandMFC" value="${CodeServiceImpl.selectListCachedCode('8')}"/>
	  	<c:set var="listCodeOrigin" value="${CodeServiceImpl.selectListCachedCode('9')}"/>
	  	<c:set var="listCodeDeliInfo" value="${CodeServiceImpl.selectListCachedCode('10')}"/>
		
		<div class="text-center">
			<div class="row">
				<div class="col-12 mb-5">
					<h1 class=""> <c:out value="${item.product_name }"></c:out> </h1>
				</div>
				<div class="col-6 mb-3">
					<h5 class="mt-2">상품가격</h5>
				</div>
				<div class="col-6">
					<h5 class="">
						<input class="form-control bg-white border-white my-2 p-0" type="text" name="price" value="<fmt:formatNumber value="${item.price}" pattern="#,###"/>원" disabled>
					</h5>
				</div>
				<c:choose>
					<c:when test="${item.discount_percent eq 0 }"></c:when>
					<c:otherwise>
						<div class="col-6 mb-3">
							<h5 class="mt-2">할인가격</h5>
						</div>
						<div class="col-6">
			    			<input class="form-control bg-white border-white p-0 my-2" type="text" name="price" value="<fmt:formatNumber value="${item.discountprice}" pattern="#,###"/>원" disabled>
			    		</div>
			    	</c:otherwise>
			    </c:choose>
				<div class="col-6 mb-3">
					<h5 class="mt-2">적립금</h5>
				</div>
				<div class="col-6 text-start">
					<input class="form-control bg-white border-white p-0 my-2" type="text" name="reward" value="<fmt:formatNumber value="${item.reserve}" pattern="#,###"/>원" disabled>
				</div>
				<div class="col-6 mb-3">
					<h5 class="mt-2">무이자할부</h5>
				</div>
				<div class="col-6 text-start">
					<input class="form-control bg-white border-white p-0 my-2" type="text" name="reward" value="10개월" disabled>
				</div>
				<div class="col-6 mb-3">
					<h5 class="mt-2">배송비</h5>
				</div>
				<div class="col-6 text-start">
					<c:choose>
				    	<c:when test="${item.deliverycost eq 0 }">
				    		<input class="form-control bg-white border-white" type="hidden" name="deliverycost" value="<fmt:formatNumber value="${item.deliverycost}" pattern="#,###"/>원" disabled>
				    		<input class="form-control bg-white border-white p-0 my-2" type="text" value="무료배송" disabled>
				    	</c:when>
				    	<c:otherwise>
				    		<input class="form-control bg-white border-white p-0 my-2" type="text" name="deliverycost" value="<fmt:formatNumber value="${item.deliverycost}" pattern="#,###"/>원" disabled>
				    	</c:otherwise>
				    </c:choose>
				</div>
				<div class="col-6 mb-3">
					<h5 class="mt-2">배송정보</h5>
				</div>
				<div class="col-6 text-start my-2">
					<c:forEach items="${listCodeDeliInfo}" var="listDeliInfo" varStatus="statusDeliinfo">
						<c:if test="${item.deliveryinfo eq listDeliInfo.seq}"><c:out value="${listDeliInfo.name }"/></c:if>
					</c:forEach>
				</div>
				<div class="col-6 mb-3">
					<h5 class="mt-2">원산지</h5>
				</div>
				<div class="col-6 text-start my-2">
					<c:forEach items="${listCodeOrigin}" var="listOrigin" varStatus="statusOrigin">
						<c:if test="${item.origin_code eq listOrigin.seq}"><c:out value="${listOrigin.name }"/></c:if>
					</c:forEach>
				</div>
				
				<div class="col-6 mb-3">
					<h5 class="mt-2">옵션</h5>
				</div>
				<div class="col-6 text-start">
					<select class="form-select" aria-label="Default select example">
					  <option selected>사이즈</option>
					  <option value="1">XS</option>
					  <option value="2">S</option>
					  <option value="3">M</option>
					  <option value="4">L</option>
					  <option value="5">XL</option>
					</select>
				</div>
				<div class="col-6">
					<h5 class="mb-5 mt-2">옵션2</h5>
				</div>
				<div class="col-6 text-start">
					<select class="form-select" aria-label="Default select example">
					  <option selected>색상</option>
					  <option value="1">Black</option>
					  <option value="2">White</option>
					  <option value="3">Beige</option>
					</select>
				</div>
				<div class="d-grid gap-2 col-6 mx-auto">
				  <button class="btn btn-lg btn-outline-primary" type="button" id="btnCart">장바구니</button>
				</div>
				<div class="d-grid gap-2 col-6 mx-auto">
				  <a class="btn btn-lg btn-primary" href="javascript:goPurchase(<c:out value="${item.productSeq }"/>)">주문하기</a>
				</div>
			</div>
		</div>
	</div>
</form>
		<div class="container row simple-list-example-scrollspy text-center sticky-top mb-3 mt-5 mx-auto" id="simple-list-example">
		  <div class="col-3 bg-light p-2">
		      <a class="p-1 fs-4" href="#simple-list-item-1">상세정보</a>
		  </div>
		  <div class="col-3 bg-light p-2">
		      <a class="p-1 fs-4" href="#simple-list-item-2">상품리뷰</a>
		  </div>
		  <div class="col-3 bg-light p-2">
		      <a class="p-1 fs-4" href="#simple-list-item-3">Q&A</a>
		  </div>
		  <div class="col-3 bg-light p-2">
		      <a class="p-1 fs-4" href="#simple-list-item-4">교환/반품정보</a>
		  </div>
		</div>
	
	<div class="container mt-5 mb-5" data-spy="scroll" data-target="#simple-list-example">
		  <div>
		      <div id="simple-list-item-1"></div>
		      <br>
		      <br>
		      <br>
		      <h4>상품정보</h4>
		      <div class="">
		      	<div class="row">
		      		<div class="col-2 bg-light p-2">상품번호</div>
		      		<div class="col-4 p-2"><c:out value="${item.productSeq }"></c:out></div>
		      		<div class="col-2 bg-light p-2">상품상태</div>
		      		<div class="col-4 p-2">신상품</div>
		      		<div class="col-2 bg-light p-2">제조사</div>
		      		<div class="col-4 p-2">
		      			<c:forEach items="${listCodebrandMFC}" var="listbrandMFC" varStatus="statusbrandMFC">
							<c:if test="${item.manufacturer_code eq listbrandMFC.seq}"><c:out value="${listbrandMFC.name }"/></c:if>
						</c:forEach>
					</div>
		      		<div class="col-2 bg-light p-2">브랜드</div>
		      		<div class="col-4 p-2">
		      			<c:forEach items="${listCodebrandMFC}" var="listbrandMFC" varStatus="statusbrandMFC">
							<c:if test="${item.brand_code eq listbrandMFC.seq}"><c:out value="${listbrandMFC.name }"/></c:if>
						</c:forEach>
					</div>
		      		<div class="col-2 bg-light p-2">원산지</div>
		      		<div class="col-4 p-2">
		      			<c:forEach items="${listCodeOrigin}" var="listOrigin" varStatus="statusOrigin">
							<c:if test="${item.origin_code eq listOrigin.seq}"><c:out value="${listOrigin.name }"/></c:if>
						</c:forEach>
					</div>
		      	</div>
		      	<span><a href="#simple-list-item-3"><i class="fa-solid fa-circle-exclamation"></i> 상품정보 관련 문의사항은 Q&A에 남겨주세요</a></span>
		      </div>
		      <c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
		      	<c:if test="${listUploaded.type eq 3 }">
			      <div class="text-center">
				  	<img src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" class="rounded" alt="...">
				  </div>
			  	</c:if>
			  </c:forEach>
		    <div id="simple-list-item-2"></div>
		    
	      	<h4 class="mt-5">상품리뷰</h4>
	      	<div class="border border-dark border-2 mb-3"></div>
	      	<%-- 
	      	<div class="row bg-light text-center">
	      		<div class="col-6">사용자총평점</div>
	      		<div class="col-6">전체리뷰수</div>
	      		<div class="col-6 p-5">
	      			<i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-regular fa-star"></i>
      				<br><span class="fs-4">4/5</span>
      			</div>
	      		<div class="col-6 p-5">
	      			<i class="fa-solid fa-comment-dots fa-2x"></i>
	      			<br><span class="fs-4"><c:out value="${vorv.totalRows }"></c:out>건</span>
	      		</div>
	      	</div>
	      	 --%>
		      <h6 class="mt-3 mb-3">리뷰 <c:out value="${vorv.totalRows }" />건</h6>
		      <div class="border border-dark border-1 opacity-50 mb-3"></div>
		      	<c:choose>
					<c:when test="${fn:length(listrv) eq 0}">
						<div class="col-12 p-4">리뷰가 없습니다!</div>
					</c:when>
					<c:otherwise>
						<c:forEach items="${listrv }" var="listrv" varStatus="status">
							<a href="#">
								<div class="row justify-content-between mb-3">
								    <div class="col-4">
								      <span class="text-secondary"><c:out value="${listrv.id }"></c:out> | <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${listrv.rvRegtime}"/></span>
								      <div>
					      				<c:out value="${listrv.title }"></c:out>
					      			  </div>
					      			  <div>
					      				<c:out value="${listrv.contents }"></c:out>
					      			  </div>
								    </div>
								    <c:forEach items="${listReviewUploaded}" var="listReviewUploaded" varStatus="statusUploaded">
									    <c:if test="${listReviewUploaded.type eq 2 && listReviewUploaded.pseq eq listrv.rvSeq && listReviewUploaded.sort eq 0}">
										    <div class="col-4" style="width: 150px; height: 150px;">
										      <img style="width: 150px; height: 150px;" alt="<c:out value="${listReviewUploaded.path }"/><c:out value="${listReviewUploaded.uuidName }"/>" src="<c:out value="${listReviewUploaded.path }"/><c:out value="${listReviewUploaded.uuidName }"/>">
										    </div>
									    </c:if>
								    </c:forEach>
								</div>
							</a>
						</c:forEach>
					</c:otherwise>
				</c:choose>
		      <br>
		      <br>
		      <br>
		      <br>
		      <br>
		      <br>
		      <br>
		      <br>
		      <br>
		      <br>
		      <br>
		      <br>
		      <br>
		      <br>
		      <br>
		      <br>
		      <br>
		      <br>
		      <br>
		      <br>
		      <br>
		      
	      <div id="simple-list-item-3"></div>
	      
	      <h4 class="mt-5 mb-3">Q&A</h4>
	      <button type="button" class="btn btn-dark mb-3" id="btnQAForm">상품Q&A작성하기</button>
	      <table class="table text-center table-hover">
	      	<thead>
			    <tr>
			      <th scope="col" style="width: 100px;">답변상태</th>
			      <th scope="col" >제목</th>
			      <th scope="col" style="width: 100px;">작성자</th>
			      <th scope="col" style="width: 300px;">작성시간</th>
			    </tr>
			  </thead>
			  <tbody class="table-group-divider">
			      	<c:choose>
						<c:when test="${fn:length(listqa) eq 0}">
							<tr>
								<td colspan="4">Q&A가 없습니다!</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach items="${listqa}" var="listqa" varStatus="status">
								<c:if test="${listqa.delNy eq 0 }">
							    <tr>
							      <td>
							      	<c:choose>
							      		<c:when test="${listqa.answerNy eq 0 }">답변대기</c:when>
							      		<c:otherwise>답변완료</c:otherwise>
							      	</c:choose>
							      </td>
							      <td><a href="#"><c:out value="${listqa.title }"></c:out></a></td>
							      <td><c:out value="${listqa.id }"></c:out></td>
							      <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${listqa.qaRegtime}"/></td>
							    </tr>
							    </c:if>
						    </c:forEach>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
		      <br>
		      <br>
		      <br>
		      <br>
		      <br>
		      <br>
		      <br>
		      <br>
		      <br>
		      <br>
		      <br>
		      <br>
		      <br>
		      <br>
		      <br>
		      <br>
		      <br>
		      <br>
		      <br>
		      <br>
		      <div id="simple-list-item-4"></div>
		      	<h4 class="mt-5 mb-4">교환/반품정보</h4>
		      	<div class="border border-dark"></div>
		      	<ul class="list-group mt-4">
		      		<li class="list-group-item">반품배송비(편도) : 3,000원 (최초 배송비 미결제시 6,000원 부과)</li>
		      		<li class="list-group-item">교환배송비(왕복) : 6,000원</li>
		      		<li class="list-group-item">보내실곳 : </li>
		      		<li class="list-group-item">단, 교환/반품 비용은 상품 및 교환/반품 사유에 따라 변경될 수 있으므로 교환/반품 신청 화면 확인 부탁드립니다.</li>
		      	</ul>
		      	
		      	<h4 class="mt-5 mb-4">교환/반품 사유에 따른 요청 가능 기간</h4>
		      	<div class="border border-dark"></div>
		      	<ul class="list-group mt-4">
		      		<li class="list-group-item">구매자 단순 변심 : 상품 수령 후 7일 이내(구매자 반품 배송비 부담)</li>
		      		<li class="list-group-item">표시/광고와 상이, 계약 내용과 다르게 이행된 경우 : 상품 수령 후 3개월 이내 혹은 표시/광고와 다른 사실을 안 날로부터 30일 이내(판매자 반품 배송비 부담)</li>
		      	</ul>
		      	
		      	<h4 class="mt-5 mb-4">교환/반품 불가한 경우</h4>
		      	<div class="border border-dark"></div>
		      	<ol class="list-group list-group-numbered mt-4">
		      		<li class="list-group-item">교환/반품 요청이 기간이 지난 경우</li>
		      		<li class="list-group-item">소비자의 책임 있는 사유로 상품 등이 분실/파손/훼손된 경우 (단, 확인을 위한 포장 훼손 제외)</li>
		      		<li class="list-group-item">소비자의 사용/소비에 의해 상품 등의 가치가 현저히 감소한 경우 (예 : 식품, 화장품, 향수, 음반)</li>
		      		<li class="list-group-item">제품을 설치 또는 장착하였거나 개통한 경우 (예 : 전자제품, 컴퓨터, 휴대폰 등)</li>
		      		<li class="list-group-item">시간의 경과에 의해 재판매가 곤란할 정도로 상품 등의 가치가 현저히 감소한 경우 (신선식품과 같이 유통기한이 정해져 있는 상품)</li>
		      		<li class="list-group-item">복제가 가능한 상품 등의 포장을 훼손한 경우 (CD/DVD/GAME/BOOK의 경우 포장 개봉 시)</li>
		      		<li class="list-group-item">주문제작 상품 중 상품제작에 들어간 경우 (주문접수 후 개별생산, 맞춤 제작 등)</li>
		      	</ol>
		      	
		      	<h4 class="mt-5 mb-4">거래 조건에 대한 정보</h4>
		      	<div class="border border-dark"></div>
		      	<ul class="list-group list-group-numbered mt-4">
		      		<li class="list-group-item">소화물 택배의 배송은 발송일로부터 1~2 영업일이 소요되나, 지역/대형 화물/설치/예약/발송지체 등의 특이사항에 따라 배송기간은 달라질 수 있습니다.</li>
		      		<li class="list-group-item">‘전자상거래등에서의소비자보호에관한법률’이 정하는 바에 따라 소비자의 청약철회 후 판매자가 재화 등을 반환 받은 날로부터 3영업일 이내에 지급받은 대금의 환급을 정당한 사유없이 지연하는 때에는 소비자는 지연기간에 대해서 전상법 시행령으로 정하는 이율을 곱하여 산정한 지연이자(지연배상금)을 신청할 수 있습니다.</li>
		      	</ul>
	  </div>
	</div>
      <!-- userFooter s -->
			<%@include file="../../../common/xdmin/userFooter.jsp"%>
	  <!-- userFooter e -->
<script type="text/javascript">

</script>
<script type="text/javascript">
const myModal = document.getElementById('myModal')
const myInput = document.getElementById('myInput')

myModal.addEventListener('shown.bs.modal', () => {
  myInput.focus()
})

</script>
<script type="text/javascript">

	var goUrlPurchaseForm = "/product/purchaseForm";
	var goUrlQAForm = "/product/productQAForm";
	var goUrlCartInst = "/member/cartInst";
	
	var seq2 = $("input:hidden[name=productSeq]");
	//var memberseq = $("input:hidden[name=memberSeq]");
	var form = $("form[name=viewForm]");
	
	goPurchase = function(keyValue) {
		seq2.val(keyValue);
		form.attr("action", goUrlPurchaseForm).submit();
	}
	
	$("#btnQAForm").on("click", function(){
	   	form.attr("action", goUrlQAForm).submit();
	});
	
	$("#btnCart").on("click", function(){
	   	form.attr("action", goUrlCartInst).submit();
	});
</script>
</body>
</html>