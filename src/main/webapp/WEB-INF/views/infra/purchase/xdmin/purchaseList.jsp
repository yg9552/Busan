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
	<title>주문내역</title>
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
 <!-- *Vo.jsp s -->
<%@include file="purchaseVo.jsp"%>		<!-- #-> -->
<!-- *Vo.jsp e -->
 

<div class="container mb-5">
	<h3 class="mb-5 mt-4 text-center">주문내역</h3>
	<div class="row align-items-center mb-3">
		<!-- side s -->
		<%@include file="../../../common/xdmin/myPageSide.jsp"%>
		<!-- side e -->
		<div class="col-9">
			<div class="row text-center border rounded p-2">
				<div class="col-4"><a href="#"><i class="fa-solid fa-truck fa-2x"></i><br>배송중</a></div>
				<div class="col-4"><a href="#"><i class="fa-solid fa-box-open fa-2x"></i><br>배송완료</a></div>
				<div class="col-4"><a href="#"><i class="fa-solid fa-repeat fa-2x"></i><br>교환/취소/반품</a></div>
				<div class="col-4 p-4 fs-3">0건</div>
				<div class="col-4 p-4 fs-3">1건</div>
				<div class="col-4 p-4 fs-3">0건</div>
			</div>
		</div>
	</div>
	
	<div class="text-center mb-3">
		<div class="row">
			<div class="col">
				<div class="btn-group" role="group" aria-label="Basic outlined example">
				  <button type="button" class="btn btn-outline-primary">1월</button>
				  <button type="button" class="btn btn-outline-primary">2월</button>
				  <button type="button" class="btn btn-outline-primary">3월</button>
				  <button type="button" class="btn btn-outline-primary">4월</button>
				  <button type="button" class="btn btn-outline-primary">5월</button>
				  <button type="button" class="btn btn-outline-primary">6월</button>
				  <button type="button" class="btn btn-outline-primary">7월</button>
				  <button type="button" class="btn btn-outline-primary">8월</button>
				</div>
			</div>
			<div class="col-3">
				<input class="form-control" type="date">
			</div>
			<div class="col-3">
				<input class="form-control" type="date">
			</div>
			<div class="col-1">
				<button type="button" class="btn btn-success">조회</button>
			</div>
		</div>
	</div>
	<div class="row text-center w-75 m-auto">
		<c:forEach items="${list }" var="list" varStatus="status">
			<c:if test="${list.memberSeq eq sessSeq }">
				<div class="col-12">
					<div class="row border rounded mb-3">
						<div class="col-3">
							<img alt=".." src="../image/basict.png" style="width: 150px; height: 150px;">
						</div>
							<div class="col my-auto">
								<h4><c:out value="${list.product_name }"/></h4>
								<span><c:out value="${list.price }"/>원</span>
								 | <span>2022.07.21</span>
							</div>
						<div class="col-3 my-auto">
							<span>배송완료</span>
						</div>
					</div>
				</div>
			</c:if>	
		</c:forEach>
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