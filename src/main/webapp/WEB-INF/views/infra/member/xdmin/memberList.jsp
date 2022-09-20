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
                    <h4 class="card-title">회원목록</h4>
                    <form action="/member/memberList" autocomplete="off">
                    <div class="row mb-3">
                    	<div class="col-1">
                    		<select class="form-control" id="shDelNy" name="shDelNy">
		                        <option value="" <c:if test="${empty vo.shDelNy}">selected</c:if>>삭제여부</option>
		                        <option value="1" <c:if test="${vo.shDelNy eq 1}">selected</c:if>>N</option>
		                        <option value="2" <c:if test="${vo.shDelNy eq 2}">selected</c:if>>Y</option>
		                    </select>
                    	</div>
                    	<div class="col-1">
                    		<select class="form-control" id="shOption" name="shOption">
		                        <option value="" <c:if test="${empty vo.shOption}">selected</c:if>>검색구분</option>
		                        <option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>이름</option>
		                        <option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>아이디</option>
		                        <option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>이메일</option>
		                        <option value="4" <c:if test="${vo.shOption eq 4}">selected</c:if>>생년월일</option>
		                        <%-- <option value="5" <c:if test="${vo.shOption eq 5}">selected</c:if>>연락처</option> --%>
		                    </select>
                    	</div>
                    	<div class="col">
                    		<input type="search" id="shValue" name="shValue" value="<c:out value="${vo.shValue }"/>" class="form-control" placeholder="검색어">
                    	</div>
                    	<div class="col-auto my-auto">
                    		<button type="submit" class="btn btn-inverse-success btn-fw">검색</button>
                    	</div>
                    </div>
                    </form>
                    <div class="table-responsive">
                      <table class="table table-dark text-center table-hover text-warning">
                        <thead>
                          <tr>
                            <th> # </th>
                            <th> 아이디 </th>
                            <th> 이름 </th>
                            <th> 이메일 </th>
                            <th> 연락처 </th>
                            <th> 생년월일 </th>
                            <th> 가입일 </th>
                          </tr>
                        </thead>
                        <tbody>
                         <c:choose>
                        	<c:when test="${fn:length(list) eq 0}">
                        		<tr>
                        			<td colspan="8">
                        				There is no date!
                        			</td>
                        		</tr>
							</c:when>
							<c:otherwise>
								<c:forEach items="${list}" var="list" varStatus="status">
		                          <tr>
		                            <td> <c:out value="${list.seq }"/> </td>
		                            <td><a href="#"> <c:out value="${list.id }"/> </a></td>
		                            <td> <c:out value="${list.nm }"/> </td>
		                            <td> <c:out value="${list.email }"/> </td>
		                            <td> <c:out value="${list.phonenum }"/> </td>
		                            <td> <fmt:formatDate pattern="yyyy-MM-dd" value="${list.dob}"/></td>
		                            <td> May 15, 2015 </td>
		                          </tr>
                          		</c:forEach>
                          	</c:otherwise>
                         </c:choose>
                        </tbody>
                      </table>
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