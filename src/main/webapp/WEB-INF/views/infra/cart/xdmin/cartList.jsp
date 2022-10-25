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
	<title>장바구니</title>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<script src="https://kit.fontawesome.com/144448c071.js" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link rel="stylesheet" href="../../../../../resources/assets/css/usercommon.css">

</head>
<body>
<form name="mypageForm" method="post">
<!-- userHeader s -->
	<%@include file="../../../common/xdmin/userHeader.jsp"%>
 <!-- userHeader e -->
 <%@include file="cartVo.jsp"%>		<!-- # -->
 
 <div class="container mb-5">
	<h3 class="mb-5 mt-4 text-center">장바구니</h3>
	<div class="row mb-3">
		<!-- side s -->
		<%@include file="../../../common/xdmin/myPageSide.jsp"%>
		<!-- side e -->
		<div class="col-9">
			<div class="row text-center mb-4">
				<div class="col-1 border p-2">
					<div>
					  <input class="form-check-input" type="checkbox" name="" id="Allcheck">
					</div>
				</div>
				<div class="col-5 border p-2">상품명/옵션</div>
				<div class="col-1 border p-2">수량</div>
				<div class="col-2 border p-2">상품금액</div>
				<div class="col-1 border p-2">할인율</div>
				<div class="col-2 border p-2">배송비</div>
				<c:choose>
					<c:when test="${fn:length(list) eq 0}">
						<div class="col-12 border rounded p-4">장구바구니 내역이 없습니다!</div>
					</c:when>
					<c:otherwise>
						<c:forEach items="${list }" var="list" varStatus="status">
							<div class="col-1 p-3 my-auto">
								<div>
								  <input class="form-check-input chBox" type="checkbox" name="cartSeq" value="${list.cartSeq }">
								</div>
							</div>
							<div class="col-5 p-3">
								<div class="row">
									<div class="col">
										<img alt="..." src="../image/0220416093432.jpg" style="width: 100px; height: 100px;">
									</div>
									<div class="col my-auto">
										<h5><c:out value="${list.product_name }"/></h5>
									</div>
								</div>
							</div>
							<div class="col-1 p-3 my-auto">
								<input class="form-control border border-white" type="number" name="quantity" value="1">
							</div>
							<div class="col-2 p-3 my-auto"><fmt:formatNumber value="${list.price}" pattern="#,###"/>원</div>
							<div class="col-1 p-3 my-auto"><c:out value="${list.discount_percent }"></c:out>%</div>
							<div class="col-2 p-3 my-auto">
								<c:choose>
							    	<c:when test="${list.deliverycost eq 0 }">
							    		무료배송
							    	</c:when>
							    	<c:otherwise>
							    		<fmt:formatNumber value="${list.deliverycost}" pattern="#,###"/>원
							    	</c:otherwise>
							    </c:choose>
							</div>
							<div class="border"></div>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</div>
			<div class="row">
				<div class="col">
					<a href="#" class="btn btn-primary">주문하기</a>
				</div>
				<div class="col-auto">
					<button type="button" class="btn btn-danger" id="btnDel">삭제하기</a>
				</div>
			</div>
		</div>
	</div>
 </form>
 <form name="formVo" id="formVo" method="post">
<!-- *Vo.jsp s -->
<%@include file="cartVo.jsp"%>		<!-- #-> -->
<!-- *Vo.jsp e -->
</form>
</body>
<script type="text/javascript">
var goUrlDele = "/member/cartDele";			/* #-> */

var form = $("form[name=mypageForm]");
var formVo = $("form[name=formVo]");

$("#Allcheck").click(function(){
	 var chk = $("#Allcheck").prop("checked");
	 if(chk) {
	  $(".chBox").prop("checked", true);
	 } else {
	  $(".chBox").prop("checked", false);
	 }
});
$(".chBox").click(function(){
	  $("#Allcheck").prop("checked", false);
 });
 
$("#btnDel").on("click", function(){
	if(!confirm("삭제 하시겠습니까?")){
	return false;
}else{
	form.attr("action", goUrlDele).submit();
}
	
});
</script>
</html>