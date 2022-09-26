<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="CodeServiceImpl" class="com.yg.infra.modules.code.CodeServiceImpl"/>
<%@ page session="false" %>

<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>상품등록</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="../../../../../resources/assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../../../../../resources/assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://kit.fontawesome.com/144448c071.js" crossorigin="anonymous"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fff4722d1b0684553d2d53d2ea3f7fe9&libraries=services"></script>
    <link rel="stylesheet" href="../../../../../resources/assets/vendors/select2/select2.min.css">
    <link rel="stylesheet" href="../../../../../resources/assets/vendors/select2-bootstrap-theme/select2-bootstrap.min.css">
    <!-- End Plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="../../../../../resources/assets/css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="../../../../../resources/assets/images/favicon.png" />
  </head>
  <body>
    <div class="container-scroller">
      <!-- adminHeader s -->
			<%@include file="../../../common/xdmin/adminHeader.jsp"%>
	  <!-- adminHeader e -->
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
            <div class="page-header">
              <h3 class="page-title">상품관리</h3>
            </div>
            <div class="row">
              <div class="col-md-12 grid-margin stretch-card">
                <div class="card">
                <c:set var="listCodebrandMFC" value="${CodeServiceImpl.selectListCachedCode('8')}"/>
			  	<c:set var="listCodeOrigin" value="${CodeServiceImpl.selectListCachedCode('9')}"/>
                  <div class="card-body">
                    <h4 class="card-title">상품등록</h4>
                    <form autocomplete="off" id="form" name="form" method="post">
                    <!-- *Vo.jsp s -->
					<%@include file="productVo.jsp"%>		<!-- #-> -->
					<!-- *Vo.jsp e -->
						<div class="form-group">
	                        <label for="product_name">상품명</label>
	                        <input type="text" class="form-control" id="product_name" name="product_name" value="<c:out value="${item.product_name }"></c:out>">
	                    </div>
						<div class="form-group">
	                        <label for="price">가격</label>
	                        <input type="text" class="form-control" id="price" name="price" value="<c:out value="${item.price }"></c:out>">
	                    </div>
						<div class="form-group">
	                        <label for="reserve">적립금</label>
	                        <input type="text" class="form-control" id="reserve" name="reserve" value="<c:out value="${item.reserve }"></c:out>">
	                    </div>
	                    <div class="form-group">
                        	<label for="discount_percent">할인율</label>
                        	<input type="text" class="form-control" id="discount_percent" name="discount_percent" value="<c:out value="${item.discount_percent }"></c:out>">
                        </div>
	                    <div class="form-group">
                        	<label for="origin_code">원산지</label>
                        	<select class="form-control" id="origin_code" name="origin_code" >
                        		<c:forEach items="${listCodeOrigin}" var="listOrigin" varStatus="statusOrigin">
	                          		<option value="<c:out value="${origin_code }"/><c:out value="${listOrigin.seq }"/>"><c:out value="${listOrigin.seq }"/> <c:out value="${listOrigin.name }"/></option>
	                          	</c:forEach>
	                    	</select>
                        </div>
	                    <div class="form-group">
                        	<label for="manufacturer_code">제조사</label>
                        	<select class="form-control" id="manufacturer_code" name="manufacturer_code" >
                        		<c:forEach items="${listCodebrandMFC}" var="listbrandMFC" varStatus="statusbrandMFC">
	                          		<option value="<c:out value="${manufacturer_code }"/><c:out value="${listbrandMFC.seq }"/>"><c:out value="${listbrandMFC.seq }"/> <c:out value="${listbrandMFC.name }"/></option>
	                          	</c:forEach>
	                    	</select>
                        </div>
	                    <div class="form-group">
                        	<label for="brand_code">브랜드</label>
                        	<select class="form-control" id="brand_code" name="brand_code" >
                        		<c:forEach items="${listCodebrandMFC}" var="listbrandMFC" varStatus="statusbrandMFC">
	                          		<option value="<c:out value="${brand_code }"/><c:out value="${listbrandMFC.seq }"/>"><c:out value="${listbrandMFC.seq }"/> <c:out value="${listbrandMFC.name }"/></option>
	                          	</c:forEach>
	                    	</select>
                        </div>
                        <div class="form-group">
	                        <label for="deliveryinfo">배송정보</label>
	                        <select class="form-control" id="deliveryinfo" name="deliveryinfo" >
			                        <option value="1" <c:if test="${item.deliveryinfo eq 1}">selected</c:if>> 국내배송 </option>
			                        <option value="2" <c:if test="${item.deliveryinfo eq 2}">selected</c:if>> 해외배송 </option>
		                    </select>
	                    </div>
                        <div class="form-group">
	                        <label for="deliverycost">배송비</label>
	                        <select class="form-control" id="deliverycost" name="deliverycost" >
			                        <option value="0" <c:if test="${item.deliverycost eq 0}">selected</c:if>> 무료배송 </option>
			                        <option value="3000" <c:if test="${item.deliverycost eq 3000}">selected</c:if>> 3000원 </option>
			                        <option value="5000" <c:if test="${item.deliverycost eq 5000}">selected</c:if>> 5000원 </option>
		                    </select>
	                    </div>
                        <div class="form-group">
	                        <label for="bestNy">베스트상품여부</label>
	                        <select class="form-control" id="bestNy" name="bestNy" >
			                        <option value="0" <c:if test="${item.bestNy eq 0}">selected</c:if>> N </option>
			                        <option value="1" <c:if test="${item.bestNy eq 1}">selected</c:if>> Y </option>
		                    </select>
	                    </div>
                        <div class="form-group">
	                        <label for="newNy">신제품여부</label>
	                        <select class="form-control" id="newNy" name="newNy" >
			                        <option value="0" <c:if test="${item.newNy eq 0}">selected</c:if>> N </option>
			                        <option value="1" <c:if test="${item.newNy eq 1}">selected</c:if>> Y </option>
		                    </select>
	                    </div>
                        <div class="form-group">
	                        <label for="DelNy">삭제여부</label>
	                        <select class="form-control" id="DelNy" name="DelNy" >
			                        <option value="0" <c:if test="${item.delNy eq 0}">selected</c:if>> N </option>
			                        <option value="1" <c:if test="${item.delNy eq 1}">selected</c:if>> Y </option>
		                    </select>
	                    </div>
	                    
                      	<div class="row">
							<div class="col">
								<button type="button" class="btn btn-success mr-2" id="btnSave">상품등록</button>
							</div>
							<div class="col-auto">
								<button type="reset" class="btn btn-warning mr-2"><i class="fa-solid fa-rotate"></i></button>
								<button type="button" class="btn btn-dark" id="btnList">목록</button>
							</div>
					  	</div>
                    </form>
                    <form name="formVo" id="formVo" method="post">
					<!-- *Vo.jsp s -->
					<%@include file="productVo.jsp"%>		<!-- #-> -->
					<!-- *Vo.jsp e -->
					</form>
                  </div>
                </div>
              </div>
              <script type="text/javascript">
              
        		var goUrlList = "/product/productListX"; 		/* #-> */
		      	var goUrlInst = "/product/productInst"; 		/* #-> */
		      	var goUrlUpdt = "/product/productUpdt";			/* #-> */
		      	var goUrlUele = "/product/productUele";			/* #-> */
		      	var goUrlDele = "/product/productDele";			/* #-> */
		      	var goUrlForm = "/product/productForm";			/* #-> */
		      	var goUrlView = "/product/productView";			/* #-> */
              	
	        	var form = $("form[name=form]");
	        	var formVo = $("form[name=formVo]");
	        	
	        	$("#btnSave").on("click", function(){
	        	   	form.attr("action", goUrlInst).submit();
	        	}); 
	        	
	        	$("#btnList").on("click", function(){
		    		formVo.attr("action", goUrlList).submit();
		    	});
	        	
              </script>
              
              
				
          <!-- content-wrapper ends -->
          <!-- partial:../../partials/_footer.html -->
          <footer class="footer">
            <div class="d-sm-flex justify-content-center justify-content-sm-between">
              <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © bootstrapdash.com 2020</span>
              <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center"> Free <a href="https://www.bootstrapdash.com/bootstrap-admin-template/" target="_blank">Bootstrap admin templates</a> from Bootstrapdash.com</span>
            </div>
          </footer>
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="../../../../../resources/assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="../../../../../resources/assets/js/off-canvas.js"></script>
    <script src="../../../../../resources/assets/js/hoverable-collapse.js"></script>
    <script src="../../../../../resources/assets/js/misc.js"></script>
    <script src="../../../../../resources/assets/js/settings.js"></script>
    <script src="../../../../../resources/assets/js/todolist.js"></script>
    <!-- endinject -->
  </body>
</html>