<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>코드관리</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="../../../../../resources/assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../../../../../resources/assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <script src="https://kit.fontawesome.com/144448c071.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
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
              <h3 class="page-title"> 코드관리 </h3>
            </div>
            <div class="row">
              <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                  	<form class="forms-sample" autocomplete="off" id="viewform" name="viewform" method="post">
<!-- *Vo.jsp s -->
<%@include file="codeVo.jsp"%>		<!-- #-> -->
<!-- *Vo.jsp e -->
                    <h4 class="card-title"> <c:out value="${item.name }"></c:out> </h4>
                      <div class="form-group">
                        <label for="seq">대체코드</label>
                        <input type="text" class="form-control" id="seq" name="seq" placeholder="숫자" value="<c:out value="${item.seq }"></c:out>">
                      </div>
                      <div class="row">
                      	<div class="col">
                      		<div class="form-group">
		                        <label for="codegroupcode">코드그룹 코드</label>
		                        <input type="text" class="form-control" id="codegroupcode" name="codegroupcode" value="<c:out value="${item.codegroupcode }"/>">
		                    </div>
                      	</div>
                      	<div class="col">
                      		<div class="form-group">
		                        <label for="codegroupname">코드그룹 이름 (한글)</label>
		                        <input type="text" class="form-control" id="codegroupname" name="codegroupname" value="<c:out value="${item.codegroupname }"/>">
		                    </div>
                      	</div>
                      </div>
                      <div class="form-group">
                        <label for="name">코드 이름 (한글)</label>
                        <input type="text" class="form-control" id="name" name="name" placeholder="한글" value="<c:out value="${item.name }"></c:out>">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputNameEN">코드이름 (영문)</label>
                        <input type="email" class="form-control" id="exampleInputNameEN" placeholder="영문">
                      </div>
                      <div class="form-group">
                        <label for="DelNy">삭제여부</label>
                        <select class="form-control" id="DelNy" name="DelNy" >
		                        <option value="0" <c:if test="${item.delNy eq 0}">selected</c:if>>N</option>
		                        <option value="1" <c:if test="${item.delNy eq 1}">selected</c:if>>Y</option>
	                    </select>
                      </div>
                      <div class="form-group">
                        <label for="exampleTextarea1">상세정보</label>
                        <textarea class="form-control" id="exampleTextarea1" rows="4"></textarea>
                      </div>
                      
                      <div class="row">
						<div class="col">
							<button type="button" class="btn btn-dark" id="btnList">목록 <i class="fa-solid fa-list"></i></button>
						</div>
						<div class="col-auto">
							<button type="button" class="btn btn-success" id="btnSave">수정<i class="fa-solid fa-upload"></i></button>
							<button type="button" class="btn btn-danger mx-auto" id="btnUelete">삭제 <i class="fa-solid fa-trash-can"></i></button>
	                        <button type="reset" class="btn btn-warning mr-2">초기화</button>
	                        <button type="button" class="btn btn-danger mr-2" id="btnDelete"><i class="fa-solid fa-trash-can"></i></button>
						</div>
					  </div>
                    </form>
                    <form name="formVo" id="formVo" method="post">
					<!-- *Vo.jsp s -->
					<%@include file="codeVo.jsp"%>		<!-- #-> -->
					<!-- *Vo.jsp e -->
					</form>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <script type="text/javascript">
          	var goUrlList = "/code/codeList"; 			/* #-> */
	      	var goUrlInst = "/code/codeInst"; 			/* #-> */
	      	var goUrlUpdt = "/code/codeUpdt";			/* #-> */
	      	var goUrlUele = "/code/codeUele";			/* #-> */
	      	var goUrlDele = "/code/codeDele";			/* #-> */
	      	var goUrlForm = "/code/codeForm";			/* #-> */
          	
			var seq = $("input:hidden[name=codeSeq]");		/* #-> */
	      	
	      	var form = $("form[name=viewform]");
	      	var formVo = $("form[name=formVo]");
	      	
	      	$("#btnSave").on("click", function(){
	      		if (seq.val() == "0" || seq.val() == ""){
	      			// insert
	      			form.attr("action", goUrlInst).submit();
	      	   	} else {
	      	   		form.attr("action", goUrlUpdt).submit();
	      	   		// update
	      	   	}
	      	});
	      	
	      	$('#btnForm').on("click", function() {
	    		goForm(0);                
	    	});
	      	
	      	goForm = function(keyValue) {
	        	/* if(keyValue != 0) seq.val(btoa(keyValue)); */
	        	seq.val(keyValue);
	    		form.attr("action", goUrlForm).submit();
	    	}
	      	
	    	$("#btnList").on("click", function(){
	    		formVo.attr("action", goUrlList).submit();
	    	});
	    	
	    	$("#btnUelete").on("click", function(){
	      		if(!confirm("삭제 하시겠습니까?")){
        			return false;
        		}else{
        			form.attr("action", goUrlUele).submit();
        		}
	      		
	      	});
	      	
	      	$("#btnDelete").on("click", function(){
	      		if(!confirm("삭제 하시겠습니까?")){
        			return false;
        		}else{
        			form.attr("action", goUrlDele).submit();
        		}
	      		
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
    <script src="../../../../../resources/assets/vendors/chart.js/Chart.min.js"></script>
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="../../../../../resources/assets/js/off-canvas.js"></script>
    <script src="../../../../../resources/assets/js/hoverable-collapse.js"></script>
    <script src="../../../../../resources/assets/js/misc.js"></script>
    <script src="../../../../../resources/assets/js/settings.js"></script>
    <script src="../../../../../resources/assets/js/todolist.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page -->
    <script src="../../../../../resources/assets/js/file-upload.js"></script>
    <script src="../../../../../resources/assets/js/typeahead.js"></script>
    <script src="../../../../../resources/assets/js/select2.js"></script>
    <!-- End custom js for this page -->
  </body>
</html>