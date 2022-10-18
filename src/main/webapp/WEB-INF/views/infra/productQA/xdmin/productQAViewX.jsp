<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Q&A답변</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="../../../../../resources/assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../../../../../resources/assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="../../../../../resources/assets/vendors/select2/select2.min.css">
    <link rel="stylesheet" href="../../../../../resources/assets/vendors/select2-bootstrap-theme/select2-bootstrap.min.css">
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="../../../../../resources/assets/css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="../../../../../resources/assets/images/favicon.png" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://kit.fontawesome.com/144448c071.js" crossorigin="anonymous"></script>
  </head>
  <body>
    <div class="container-scroller">
      <!-- adminHeader s -->
			<%@include file="../../../common/xdmin/adminHeader.jsp"%>
	  <!-- adminHeader e -->
	  <div class="main-panel">
          <div class="content-wrapper">
            <div class="page-header">
              <h3 class="page-title"> Q&A관리 </h3>
            </div>
            <div class="row">
              <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Q&A답변</h4>
                    <form class="forms-sample" name="formView">
                    <!-- *Vo.jsp s -->
					<%@include file="productQAVo.jsp"%>		<!-- #-> -->
					<!-- *Vo.jsp e -->
                      <div class="form-group">
                        <label for="title"> 질문 </label>
                        <input type="text" class="form-control text-primary" id="title" name="title" value="<c:out value="${item.title }"></c:out>">
                      </div>
                      <div class="form-group">
                        <label for="title"> 질문 내용 </label>
                        <input type="text" class="form-control text-primary" id="question" name="question" value="<c:out value="${item.question }"></c:out>">
                      </div>
                      <div class="form-group">
                        <label for="qaAnswer">답변</label>
                        <textarea class="form-control text-primary" id="qaAnswer" name="qaAnswer" rows="4"><c:out value="${item.qaAnswer }"></c:out></textarea>
                      </div>
                      <!-- <div class="form-group">
                        <label>File upload</label>
                        <input type="file" name="img[]" class="file-upload-default">
                        <div class="input-group col-xs-12">
                          <input type="text" class="form-control file-upload-info" disabled placeholder="Upload Image">
                          <span class="input-group-append">
                            <button class="file-upload-browse btn btn-primary" type="button">Upload</button>
                          </span>
                        </div>
                      </div> -->
                      <div class="form-group">
                        <label for="answerNy">답변여부</label>
                        <select class="form-control" id="answerNy" name="answerNy" >
		                        <option value="0" <c:if test="${item.answerNy eq 0}">selected</c:if>>N</option>
		                        <option value="1" <c:if test="${item.answerNy eq 1}">selected</c:if>>Y</option>
	                    </select>
                      </div>
                      <div class="form-group">
                        <label for="DelNy">삭제여부</label>
                        <select class="form-control" id="DelNy" name="DelNy" >
		                        <option value="0" <c:if test="${item.delNy eq 0}">selected</c:if>>N</option>
		                        <option value="1" <c:if test="${item.delNy eq 1}">selected</c:if>>Y</option>
	                    </select>
                      </div>
                      <div class="form-group">
                        <label for="qaRegtime"> 작성시간 </label>
                        <input type="text" class="form-control text-primary" id="qaRegtime" name="" value="<fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${item.qaRegtime}"/>">
                      </div>
                      <div class="row justify-content-between">
	                  	<div class="col-auto me-auto">
	                  		<button type="button" class="btn btn-inverse-primary btn-fw" id="btnAns">답변하기</button>
	                  	</div>
	                  	<div class="col-auto">
	                  		<button type="button" class="btn btn-inverse-warning btn-fw">수정하기</button>
	                  		<button type="button" class="btn btn-inverse-danger btn-fw" id="btnDelete">삭제하기</button>
	                  	</div>
                  	  </div>
                    </form>
                    <form name="formVo" id="formVo" method="post">
					<!-- *Vo.jsp s -->
					<%@include file="productQAVo.jsp"%>		<!-- #-> -->
					<!-- *Vo.jsp e -->
					</form>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- content-wrapper ends -->
          <script type="text/javascript">
         	 var goUrlList = "/product/productQAListX"; 		/* #-> */
	 		 var goUrlView = "/product/productQAViewX";			/* #-> */
	 		 var goUrlAns = "/product/productQAAns";			/* #-> */
	 		 
	 		 var seq = $("input:hidden[name=qaSeq]");
	 		 
	 		 var form = $("form[name=formView]");
	 		 
	 		$("#btnAns").on("click", function(){
	      	   	form.attr("action", goUrlAns).submit();
	      	});
	 		 
	 		$("#btnList").on("click", function(){
	    		formVo.attr("action", goUrlList).submit();
	    	});
	 		
	 		$("#btnDelete").on("click", function(){
	      		if(!confirm("삭제 하시겠습니까?")){
        			return false;
        		}else{
        			form.attr("action", goUrlDele).submit();
        		}
	      		
	      	});
          </script>
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
    <!-- Custom js for this page -->
    <script src="../../../../../resources/assets/js/file-upload.js"></script>
    <!-- End custom js for this page -->
  </body>
</html>