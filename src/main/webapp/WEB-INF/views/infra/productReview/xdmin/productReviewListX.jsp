<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>리뷰관리</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="../../../../../resources/assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../../../../../resources/assets/vendors/css/vendor.bundle.base.css">
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
              <h3 class="page-title"> 리뷰관리 </h3>
            </div>
            <div class="row">
              <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">리뷰목록</h4>
                    <div class="table-responsive">
                      <table class="table table-dark text-success text-center mb-3">
                        <thead>
                          <tr>
                            <th></th>
                            <th> 아이디 </th>
                            <th> 내용 </th>
                            <th> 상품명 </th>
                            <th> 작성일 </th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>
								<div class="form-check form-check-flat form-check-success">
			                        <label class="form-check-label"><input type="checkbox" class="form-check-input"></label>
			                    </div>
							</td>
                            <td> N </td>
                            <td><a href="#"> $ 77.99 </a></td>
                            <td> May 15, 2015 </td>
                            <td> May 15, 2015 </td>
                          </tr>
                          <tr>
                            <td>
								<div class="form-check form-check-flat form-check-success">
			                        <label class="form-check-label"><input type="checkbox" class="form-check-input"></label>
			                    </div>
							</td>
                            <td> Y </td>
                            <td><a href="#"> $245.30 </a></td>
                            <td> July 1, 2015 </td>
                            <td> July 1, 2015 </td>
                          </tr>
                          <tr>
                            <td>
								<div class="form-check form-check-flat form-check-success">
			                        <label class="form-check-label"><input type="checkbox" class="form-check-input"></label>
			                    </div>
							</td>
                            <td> N </td>
                            <td><a href="#"> $138.00 </a></td>
                            <td> Apr 12, 2015 </td>
                            <td> Apr 12, 2015 </td>
                          </tr>
                          <tr>
                            <td>
								<div class="form-check form-check-flat form-check-success">
			                        <label class="form-check-label"><input type="checkbox" class="form-check-input"></label>
			                    </div>
							</td>
                            <td> N </td>
                            <td><a href="#"> $ 77.99 </a></td>
                            <td> May 15, 2015 </td>
                            <td> May 15, 2015 </td>
                          </tr>
                          <tr>
                            <td>
								<div class="form-check form-check-flat form-check-success">
			                        <label class="form-check-label"><input type="checkbox" class="form-check-input"></label>
			                    </div>
							</td>
                            <td> N </td>
                            <td><a href="#"> $ 160.25 </a></td>
                            <td> May 03, 2015 </td>
                            <td> May 03, 2015 </td>
                          </tr>
                          <tr>
                            <td>
								<div class="form-check form-check-flat form-check-success">
			                        <label class="form-check-label"><input type="checkbox" class="form-check-input"></label>
			                    </div>
							</td>
                            <td> N </td>
                            <td><a href="#"> $ 123.21 </a></td>
                            <td> April 05, 2015 </td>
                            <td> April 05, 2015 </td>
                          </tr>
                          <tr>
                            <td>
								<div class="form-check form-check-flat form-check-success">
			                        <label class="form-check-label"><input type="checkbox" class="form-check-input"></label>
			                    </div>
							</td>
                            <td> N </td>
                            <td><a href="#"> $ 150.00 </a></td>
                            <td> June 16, 2015 </td>
                            <td> June 16, 2015 </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                    <div class="row justify-content-between">
	                  	<div class="col-auto me-auto">
	                  		<a href="#" class="btn btn-inverse-primary btn-fw">검색</a>
	                  	</div>
	                  	<div class="col-auto">
	                  		<a href="./reviewComment.html" class="btn btn-inverse-success btn-fw">답글쓰기</a>
	                  		<button type="button" class="btn btn-inverse-danger btn-fw">삭제</button>
	                  	</div>
                  	</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
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
    <!-- End custom js for this page -->
  </body>
</html>