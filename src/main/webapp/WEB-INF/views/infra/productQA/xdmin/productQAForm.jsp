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
	<title>구매</title>
	<script src="https://kit.fontawesome.com/144448c071.js" crossorigin="anonymous"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fff4722d1b0684553d2d53d2ea3f7fe9&libraries=services"></script>
	<link rel="stylesheet" href="../../../../../resources/assets/css/usercommon.css">
</head>
<body>
	  <!-- userHeader s -->
			<%@include file="../../../common/xdmin/userHeader.jsp"%>
	  <!-- userHeader e -->
	  <form name="form" method="post">
	  <!-- *Vo.jsp s -->
		<%@include file="productQAVo.jsp"%>		<!-- #-> -->
	  <!-- *Vo.jsp e -->
		  <div class="container w-75">
		  	<h3 class="mb-4 mt-4 text-left">Q&A작성</h3>
		  	<div class="mb-3">
			  <label for="product_name" class="form-label">상품명</label>
			  <input type="text" class="form-control" id="product_name" name="product_name" value='<c:out value="${itemp.product_name }"></c:out>'>
			  <input type="hidden" name="answerNy" value="0">
			  <input type="hidden" name="DelNy" value="0">
			</div>
		  	<div class="mb-3">
			  <label for="title" class="form-label">질문</label>
			  <input type="text" class="form-control" id="title" name="title" value="<c:out value="${item.title }"></c:out>">
			</div>
			<div class="mb-3">
			  <label for="question" class="form-label">상세내용</label>
			  <textarea class="form-control" id="question" name="question" value="<c:out value="${item.qustion }"></c:out>" rows="3"></textarea>
			</div>
			<div class="row">
				<div class="col">
					<button type="button" class="btn btn-sm btn-dark mb-3" id="btnView">돌아가기</button>
				</div>
				<div class="col-auto">
					<button type="button" class="btn btn-sm btn-success mb-3" id="btnSave">Q&A등록</button>
				</div>
			</div>
		  </div>
	  </form>
	  <form name="formVo" id="formVo" method="post">
		<!-- *Vo.jsp s -->
		<%@include file="productQAVo.jsp"%>		<!-- #-> -->
		<!-- *Vo.jsp e -->
	  </form>
<script type="text/javascript">
	var goUrlView = "/product/productView"; 		/* #-> */
	var goUrlInst = "/product/productQAInst"; 		/* #-> */
	
	var form = $("form[name=form]");
	var formVo = $("form[name=formVo]");

	$("#btnSave").on("click", function(){
	   	form.attr("action", goUrlInst).submit();
	});
	
	$("#btnView").on("click", function(){
		formVo.attr("action", goUrlView).submit();
	});
</script>
</body>
</html>