<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>회원관리</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="../../../../../resources/assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../../../../../resources/assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://kit.fontawesome.com/144448c071.js" crossorigin="anonymous"></script>
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
              <h3 class="page-title">회원관리</h3>
            </div>
            <div class="row">
              <div class="col-md-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">회원등록</h4>
                    <form autocomplete="off" id="form" name="form" method="post">
                    <!-- *Vo.jsp s -->
					<%@include file="memberVo.jsp"%>		<!-- #-> -->
					<!-- *Vo.jsp e -->
						<div class="form-group">
	                        <label for="nm">이름</label>
	                        <input type="text" class="form-control" id="nm" name="nm" value="<c:out value="${item.nm }"></c:out>">
	                    </div>
						<div class="form-group">
	                        <label for="id">아이디</label>
	                        <input type="text" class="form-control" id="id" name="id" value="<c:out value="${item.id }"></c:out>">
	                        <input type="hidden" class="form-control" id="password" name="password" value="<c:out value="${item.password }"></c:out>">
	                    </div>
	                    <div class="form-group">
                        	<label for="email">이메일</label>
                        	<input type="email" class="form-control" id="email" name="email" value="<c:out value="${item.email }"></c:out>">
                        </div>
	                    <div class="form-group">
                        	<label for="gender_code">성별</label>
                        	<select class="form-control" id="gender_code" name="gender_code" >
		                        <option value="201" <c:if test="${item.gender_code eq 201}">selected</c:if>> 남성 </option>
		                        <option value="202" <c:if test="${itme.gender_code eq 202}">selected</c:if>> 여성 </option>
		                        <option value="203" <c:if test="${itme.gender_code eq 203}">selected</c:if>> 기타 </option>
	                    	</select>
                        </div>
                        <div class="form-group">
	                        <label for="DelNy">삭제여부</label>
	                        <select class="form-control" id="DelNy" name="DelNy" >
			                        <option value="0" <c:if test="${item.delNy eq 0}">selected</c:if>> N </option>
			                        <option value="1" <c:if test="${itme.delNy eq 1}">selected</c:if>> Y </option>
		                    </select>
	                    </div>
	                    <div class="form-group">
	                        <label for="dob">생년월일</label>
	                        <input type="date" class="form-control" id="dob" name="dob" value="<c:out value="${item.dob }"></c:out>">
	                    </div>
                      	<div class="row">
						<div class="col">
							<button type="button" class="btn btn-success mr-2" id="btnSave">회원등록</button> <!--  onclick="test();" -->
						</div>
							<div class="col-auto">
								<button type="reset" class="btn btn-warning mr-2"><i class="fa-solid fa-rotate"></i></button>
								<button type="button" class="btn btn-dark" id="btnList">목록</button>
							</div>
					  	</div>
	                    
                    </form>
                    <form name="formVo" id="formVo" method="post">
					<!-- *Vo.jsp s -->
					<%@include file="memberVo.jsp"%>		<!-- #-> -->
					<!-- *Vo.jsp e -->
					</form>
                  </div>
                </div>
              </div>
              <script type="text/javascript">
              
          		var goUrlList = "/member/memberList"; 			/* #-> */
		      	var goUrlInst = "/member/memberInst"; 			/* #-> */
		      	var goUrlUpdt = "/member/memberUpdt";			/* #-> */
		      	var goUrlUele = "/member/memberUele";			/* #-> */
		      	var goUrlDele = "/member/memberDele";			/* #-> */
		      	var goUrlForm = "/member/memberForm";			/* #-> */
		      	var goUrlView = "/member/memberView";			/* #-> */
              	
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