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
	<title>prodList</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<script src="https://kit.fontawesome.com/144448c071.js" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="../../../../../resources/assets/css/usercommon.css">
</head>
<body>
	  <!-- userHeader s -->
			<%@include file="../../../common/xdmin/userHeader.jsp"%>
	  <!-- userHeader e -->
	<div class="container text-center">
	<form name="formList" method="post">
	<input type="hidden" name="mainkey">
    <input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage }" default="1" />">
    <input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow }" />">
    <input type="hidden" name="checkboxSeqArray">
    <!-- *Vo.jsp s -->
	<%@include file="productVo.jsp"%>		<!-- #-> -->
	<!-- *Vo.jsp e -->
	
	<c:set var="listCodeOrigin" value="${CodeServiceImpl.selectListCachedCode('9')}"/>
	<c:set var="listCodeDeliInfo" value="${CodeServiceImpl.selectListCachedCode('10')}"/>
		<div class="row mb-3 mx-auto">
			<c:forEach items="${list}" var="list" varStatus="status">
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
							    <li class="list-group-item"> 원산지 :
							    	<c:forEach items="${listCodeOrigin}" var="listOrigin" varStatus="statusOrigin">
										<c:if test="${list.origin_code eq listOrigin.seq}"><c:out value="${listOrigin.name }"/></c:if>
									</c:forEach>
							    </li>
							    <li class="list-group-item"> 적립금 : <fmt:formatNumber value="${list.reserve}" pattern="#,###"/>원 </li>
	
						  	</ul>
						</div>
					</a>
				</div>
			</c:forEach>
		</div>
		<!-- pagination s -->
			<%@include file="../../../common/xdmin/pagination.jsp"%>
		<!-- pagination e -->
	</form>	
	</div>



	<!-- userFooter s -->
			<%@include file="../../../common/xdmin/userFooter.jsp"%>
  	<!-- userFooter e -->
<script type="text/javascript">
const myModal = document.getElementById('myModal')
const myInput = document.getElementById('myInput')

myModal.addEventListener('shown.bs.modal', () => {
  myInput.focus()
})

</script>

<script type="text/javascript">
		var goUrlList = "/product/productList"; 		/* #-> */
		var goUrlInst = "/product/productInst"; 		/* #-> */
		var goUrlUpdt = "/product/productUpdt";			/* #-> */
		var goUrlUele = "/product/productUele";			/* #-> */
		var goUrlDele = "/product/productDele";			/* #-> */
		var goUrlForm = "/product/productForm";			/* #-> */
		var goUrlView = "/product/productView";			/* #-> */
		
		
		var seq = $("input:hidden[name=productSeq]");
		var form = $("form[name=formList]");
		
		goList = function(thisPage) {
			$("input:hidden[name=thisPage]").val(thisPage);
			form.attr("action", goUrlList).submit();
		}
		
		goView = function(keyValue) {
			seq.val(keyValue);
			form.attr("action", goUrlView).submit();
		}
</script>
</script>
</body>
</html>