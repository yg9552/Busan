<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

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
              <h3 class="page-title"> 코드관리 </h3>
            </div>
            <div class="row">
              <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">코드 관리</h4>
                    <form autocomplete="off" name="formList" id="formList" method="post">
                    <input type="hidden" name="mainkey">
                    <input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage }" default="1" />">
                    <input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow }" />">
                    <input type="hidden" name="checkboxSeqArray">
                    <input type="hidden" name="codeSeq" value="<c:out value="${vo.codeSeq }"/>">
                    <div class="row mb-3">
                    	<div class="col-1">
                    		<select class="form-control" id="shDelNy" name="shDelNy">
		                        <option value="" <c:if test="${empty vo.shDelNy}">selected</c:if>>삭제여부</option>
		                        <option value="0" <c:if test="${vo.shDelNy eq 0}">selected</c:if>>N</option>
		                        <option value="1" <c:if test="${vo.shDelNy eq 1}">selected</c:if>>Y</option>
		                    </select>
                    	</div>
                    	<div class="col-1">
                    		<select class="form-control">
		                        <option>수정일</option>
		                        <option>N</option>
		                        <option>Y</option>
		                    </select>
                    	</div>
                    	<div class="col">
                    		<input type="text" class="form-control" placeholder="시작일">
                    	</div>
                    	<div class="col">
                    		<input type="text" class="form-control" placeholder="종료일">
                    	</div>
                    	<div class="col-1">
                    		<select class="form-control" id="shOption" name="shOption">
		                        <option value="" <c:if test="${empty vo.shOption}">selected</c:if>> 검색구분 </option>
		                        <option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>> 대체코드 </option>
		                        <option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>> 코드 이름 (한글) </option>
		                        <option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>> 코드 </option>
		                        <option value="4" <c:if test="${vo.shOption eq 4}">selected</c:if>> 코드그룹 코드 </option>
		                    </select>
                    	</div>
                    	<div class="col">
                    		<input type="search" id="shValue" name="shValue" value="<c:out value="${vo.shValue }"/>" class="form-control" placeholder="검색어">
                    	</div>
                    	<div class="col-auto my-auto">
                    		<button type="submit" class="btn btn-inverse-info btn-fw">검색</button>
                    		<a role="button" class="btn btn-inverse-warning" id="btnReset"><i class="fa-solid fa-rotate"></i></a>
                    	</div>
                    </div>
                    </form>
                    <div class="row mt-3 mb-3">
				  		<div class="col my-auto">
				  			Total : <c:out value="${vo.totalRows }"></c:out>
				  		</div>
				  		<div class="col-1">
				  			<select class="form-control" aria-label="Default select example">
					  			<option selected>10</option>
					  			<option value="1">1</option>
					  			<option value="2">2</option>
							</select>
				  		</div>
				  	</div>
                    <div class="table-responsive">
                      <table class="table table-dark text-info text-center table-hover mb-3">
                        <thead>
                          <tr>
                            <th>
                            	<div class="form-check form-check-flat form-check-info">
			                        <label class="form-check-label"><input type="checkbox" class="form-check-input"></label>
			                    </div>
                            </th>
                            <th scope="col">#</th>
						    <th scope="col">코드그룹 코드</th>
						    <th scope="col">코드그룹 이름 (한글)</th>
						    <th scope="col">코드</th>
						    <th scope="col">대체코드</th>
						    <th scope="col">코드 이름 (한글)</th>
						    <th scope="col">코드 이름 (영문)</th>
						    <th scope="col">사용</th>
							<th scope="col">삭제여부</th>
				      		<th scope="col">등록일</th>
						    <th scope="col">수정일</th>
                          </tr>
                        </thead>
                        <tbody>
	                        <c:choose>
	                        	<c:when test="${fn:length(list) eq 0}">
                        		<tr>
                        			<td colspan="13">
                        				There is no date!
                        			</td>
                        		</tr>
								</c:when>
								<c:otherwise>
			                        <c:forEach items="${list}" var="list" varStatus="status">
			                          <tr>
			                            <td>
											<div class="form-check form-check-flat form-check-info">
						                        <label class="form-check-label"><input type="checkbox" class="form-check-input"></label>
						                    </div>
										</td>
										<td> <c:out value="${vo.totalRows - ((vo.thisPage - 1) * vo.rowNumToShow + status.index) }"/> </td>
									    <td> <c:out value="${list.codegroupcode }"/> </td>
									    <td> <c:out value="${list.codegroupname }"/> </td>
									    <td> <c:out value="${list.codeSeq }"/> </td>
									    <td> <c:out value="${list.seq }"/> </td>
									    <td><a href="javascript:goView(<c:out value="${list.codeSeq }"/>)"> <c:out value="${list.name }"/> </a></td>
									    <td></td>
									    <td></td>
									    <td> <c:out value="${list.delNy }"/> </td>
									    <td></td>
									    <td></td>
			                          </tr>
			                        </c:forEach>
		                        </c:otherwise>
	                        </c:choose>
                        </tbody>
                      </table>
                    </div>
                    
                    <!-- pagination s -->
						<%@include file="../../../common/xdmin/pagination.jsp"%>
					<!-- pagination e -->
                   
					<div class="row">
						<div class="col">
							<button type="button" class="btn btn-success" id="btnForm">등록 <i class="fa-solid fa-pencil"></i></button>
						</div>
						<div class="col-auto">
							<a class="btn btn-warning" href="#" role="button"><i class="fa-solid fa-power-off"></i></a>
							<a class="btn btn-danger mx-auto" href="#exampleModalToggle" role="button">삭제 <i class="fa-solid fa-trash-can"></i></a>
						</div>
					</div>
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
	      	var goUrlView = "/code/codeView";			/* #-> */
	      	
	      	var seq = $("input:hidden[name=codeSeq]");
	      	var form = $("form[name=formList]");
	      	
	      	goList = function(thisPage) {
	      		$("input:hidden[name=thisPage]").val(thisPage);
	      		form.attr("action", goUrlList).submit();
	      	}
	      	
	      	$('#btnForm').on("click", function() {
	    		goForm(0);                
	    	});

	    	goForm = function(keyValue) {
	        	/* if(keyValue != 0) seq.val(btoa(keyValue)); */
	        	seq.val(keyValue);
	    		form.attr("action", goUrlForm).submit();
	    	}
	    	
	    	goView = function(keyValue) {
	    		seq.val(keyValue);
	    		form.attr("action", goUrlView).submit();
	    	}
	    	
	    	$("#btnReset").on("click", function() {
	    		$(location).attr("href", goUrlList);
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