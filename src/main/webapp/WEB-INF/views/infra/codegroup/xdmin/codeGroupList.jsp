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
    <title>코드그룹관리</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="../../../../../resources/assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../../../../../resources/assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
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
      <!-- partial:../../partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <div class="sidebar-brand-wrapper d-none d-lg-flex align-items-center justify-content-center fixed-top">
          <a class="sidebar-brand brand-logo" href="../../index.html"><img src="../../../../../resources/images/lgo.png" alt="logo"></a>
          <a class="sidebar-brand brand-logo-mini" href="../../index.html"><img src="../../../../../resources/images/smlogo.png" alt="logo"></a>
        </div>
        <ul class="nav">
          <li class="nav-item profile">
            <div class="profile-desc">
              <div class="profile-pic">
                <div class="profile-name">
                  <h5 class="mb-0 font-weight-normal">양진용</h5>
                  <span>Admin</span>
                </div>
              </div>
              <a href="#" id="profile-dropdown" data-toggle="dropdown"><i class="mdi mdi-dots-vertical"></i></a>
              <div class="dropdown-menu dropdown-menu-right sidebar-dropdown preview-list" aria-labelledby="profile-dropdown">
                <a href="#" class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <div class="preview-icon bg-dark rounded-circle">
                      <i class="mdi mdi-settings text-primary"></i>
                    </div>
                  </div>
                  <div class="preview-item-content">
                    <p class="preview-subject ellipsis mb-1 text-small">Account settings</p>
                  </div>
                </a>
                <div class="dropdown-divider"></div>
                <a href="#" class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <div class="preview-icon bg-dark rounded-circle">
                      <i class="mdi mdi-onepassword  text-info"></i>
                    </div>
                  </div>
                  <div class="preview-item-content">
                    <p class="preview-subject ellipsis mb-1 text-small">Change Password</p>
                  </div>
                </a>
                <div class="dropdown-divider"></div>
                <a href="#" class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <div class="preview-icon bg-dark rounded-circle">
                      <i class="mdi mdi-calendar-today text-success"></i>
                    </div>
                  </div>
                  <div class="preview-item-content">
                    <p class="preview-subject ellipsis mb-1 text-small">To-do list</p>
                  </div>
                </a>
              </div>
            </div>
          </li>
          <li class="nav-item nav-category">
            <span class="nav-link">Navigation</span>
          </li>
          <li class="nav-item menu-items">
            <a class="nav-link" href="../../index.html">
              <span class="menu-icon">
                <i class="mdi mdi-speedometer"></i>
              </span>
              <span class="menu-title">Dashboard</span>
            </a>
          </li>
          <li class="nav-item menu-items">
            <a class="nav-link" href="../member/memberMain.html">
              <span class="menu-icon">
                <i class="mdi mdi-account-card-details"></i>
              </span>
              <span class="menu-title">회원관리</span>
            </a>
          </li>
          <li class="nav-item menu-items">
            <a class="nav-link" href="../product/productMain.html">
              <span class="menu-icon">
                <i class="mdi mdi-format-list-bulleted"></i>
              </span>
              <span class="menu-title">상품관리</span>
            </a>
          </li>
          <li class="nav-item menu-items">
            <a class="nav-link" href="../Q&A/Q&AMain.html">
              <span class="menu-icon">
                <i class="mdi mdi-comment-question-outline"></i>
              </span>
              <span class="menu-title">Q&A관리</span>
            </a>
          </li>
          <li class="nav-item menu-items">
            <a class="nav-link" href="./reviewMain.html">
              <span class="menu-icon">
                <i class="mdi mdi-file-document-box"></i>
              </span>
              <span class="menu-title">리뷰관리</span>
            </a>
          </li>
          <li class="nav-item menu-items">
            <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
              <span class="menu-icon">
                <i class="mdi mdi-security"></i>
              </span>
              <span class="menu-title">코드 관리</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="auth">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="../../pages/samples/codegroup.html"> 코드그룹 관리 </a></li>
                <li class="nav-item"> <a class="nav-link" href="../../pages/samples/code.html"> 코드 관리 </a></li>
                <li class="nav-item"> <a class="nav-link" href="../../pages/samples/login.html"> Login </a></li>
                <li class="nav-item"> <a class="nav-link" href="../../pages/samples/register.html"> Register </a></li>
              </ul>
            </div>
          </li>
        </ul>
      </nav>
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:../../partials/_navbar.html -->
        <nav class="navbar p-0 fixed-top d-flex flex-row">
          <div class="navbar-brand-wrapper d-flex d-lg-none align-items-center justify-content-center">
            <a class="navbar-brand brand-logo-mini" href="../../index.html"><img src="../../../../../resources/assets/images/logo-mini.svg" alt="logo" /></a>
          </div>
          <div class="navbar-menu-wrapper flex-grow d-flex align-items-stretch">
            <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
              <span class="mdi mdi-menu"></span>
            </button>
            <ul class="navbar-nav w-100">
              <li class="nav-item w-100">
                <form class="nav-link mt-2 mt-md-0 d-none d-lg-flex search">
                  <input type="text" class="form-control" placeholder="Search products">
                </form>
              </li>
            </ul>
            <ul class="navbar-nav navbar-nav-right">
              <li class="nav-item dropdown d-none d-lg-block">
                <a class="nav-link btn btn-success create-new-button" id="createbuttonDropdown" data-toggle="dropdown" aria-expanded="false" href="#">+ Create New Project</a>
                <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="createbuttonDropdown">
                  <h6 class="p-3 mb-0">Projects</h6>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item preview-item">
                    <div class="preview-thumbnail">
                      <div class="preview-icon bg-dark rounded-circle">
                        <i class="mdi mdi-file-outline text-primary"></i>
                      </div>
                    </div>
                    <div class="preview-item-content">
                      <p class="preview-subject ellipsis mb-1">Software Development</p>
                    </div>
                  </a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item preview-item">
                    <div class="preview-thumbnail">
                      <div class="preview-icon bg-dark rounded-circle">
                        <i class="mdi mdi-web text-info"></i>
                      </div>
                    </div>
                    <div class="preview-item-content">
                      <p class="preview-subject ellipsis mb-1">UI Development</p>
                    </div>
                  </a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item preview-item">
                    <div class="preview-thumbnail">
                      <div class="preview-icon bg-dark rounded-circle">
                        <i class="mdi mdi-layers text-danger"></i>
                      </div>
                    </div>
                    <div class="preview-item-content">
                      <p class="preview-subject ellipsis mb-1">Software Testing</p>
                    </div>
                  </a>
                  <div class="dropdown-divider"></div>
                  <p class="p-3 mb-0 text-center">See all projects</p>
                </div>
              </li>
              <li class="nav-item nav-settings d-none d-lg-block">
                <a class="nav-link" href="#">
                  <i class="mdi mdi-view-grid"></i>
                </a>
              </li>
              <li class="nav-item dropdown border-left">
                <a class="nav-link count-indicator dropdown-toggle" id="messageDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                  <i class="mdi mdi-email"></i>
                  <span class="count bg-success"></span>
                </a>
                <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="messageDropdown">
                  <h6 class="p-3 mb-0">Messages</h6>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item preview-item">
                    <div class="preview-thumbnail">
                      <img src="../../../../../resources/assets/images/faces/face4.jpg" alt="image" class="rounded-circle profile-pic">
                    </div>
                    <div class="preview-item-content">
                      <p class="preview-subject ellipsis mb-1">Mark send you a message</p>
                      <p class="text-muted mb-0"> 1 Minutes ago </p>
                    </div>
                  </a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item preview-item">
                    <div class="preview-thumbnail">
                      <img src="../../../../../resources/assets/images/faces/face2.jpg" alt="image" class="rounded-circle profile-pic">
                    </div>
                    <div class="preview-item-content">
                      <p class="preview-subject ellipsis mb-1">Cregh send you a message</p>
                      <p class="text-muted mb-0"> 15 Minutes ago </p>
                    </div>
                  </a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item preview-item">
                    <div class="preview-thumbnail">
                      <img src="../../../../../resources/assets/images/faces/face3.jpg" alt="image" class="rounded-circle profile-pic">
                    </div>
                    <div class="preview-item-content">
                      <p class="preview-subject ellipsis mb-1">Profile picture updated</p>
                      <p class="text-muted mb-0"> 18 Minutes ago </p>
                    </div>
                  </a>
                  <div class="dropdown-divider"></div>
                  <p class="p-3 mb-0 text-center">4 new messages</p>
                </div>
              </li>
              <li class="nav-item dropdown border-left">
                <a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#" data-toggle="dropdown">
                  <i class="mdi mdi-bell"></i>
                  <span class="count bg-danger"></span>
                </a>
                <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
                  <h6 class="p-3 mb-0">Notifications</h6>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item preview-item">
                    <div class="preview-thumbnail">
                      <div class="preview-icon bg-dark rounded-circle">
                        <i class="mdi mdi-calendar text-success"></i>
                      </div>
                    </div>
                    <div class="preview-item-content">
                      <p class="preview-subject mb-1">Event today</p>
                      <p class="text-muted ellipsis mb-0"> Just a reminder that you have an event today </p>
                    </div>
                  </a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item preview-item">
                    <div class="preview-thumbnail">
                      <div class="preview-icon bg-dark rounded-circle">
                        <i class="mdi mdi-settings text-danger"></i>
                      </div>
                    </div>
                    <div class="preview-item-content">
                      <p class="preview-subject mb-1">Settings</p>
                      <p class="text-muted ellipsis mb-0"> Update dashboard </p>
                    </div>
                  </a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item preview-item">
                    <div class="preview-thumbnail">
                      <div class="preview-icon bg-dark rounded-circle">
                        <i class="mdi mdi-link-variant text-warning"></i>
                      </div>
                    </div>
                    <div class="preview-item-content">
                      <p class="preview-subject mb-1">Launch Admin</p>
                      <p class="text-muted ellipsis mb-0"> New admin wow! </p>
                    </div>
                  </a>
                  <div class="dropdown-divider"></div>
                  <p class="p-3 mb-0 text-center">See all notifications</p>
                </div>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link" id="profileDropdown" href="#" data-toggle="dropdown">
                  <div class="navbar-profile">
                    <p class="mb-0 d-none d-sm-block navbar-profile-name">양진용</p>
                    <i class="mdi mdi-menu-down d-none d-sm-block"></i>
                  </div>
                </a>
                <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="profileDropdown">
                  <h6 class="p-3 mb-0">Profile</h6>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item preview-item">
                    <div class="preview-thumbnail">
                      <div class="preview-icon bg-dark rounded-circle">
                        <i class="mdi mdi-settings text-success"></i>
                      </div>
                    </div>
                    <div class="preview-item-content">
                      <p class="preview-subject mb-1">Settings</p>
                    </div>
                  </a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item preview-item">
                    <div class="preview-thumbnail">
                      <div class="preview-icon bg-dark rounded-circle">
                        <i class="mdi mdi-logout text-danger"></i>
                      </div>
                    </div>
                    <div class="preview-item-content">
                      <p class="preview-subject mb-1">Log out</p>
                    </div>
                  </a>
                  <div class="dropdown-divider"></div>
                  <p class="p-3 mb-0 text-center">Advanced settings</p>
                </div>
              </li>
            </ul>
            <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
              <span class="mdi mdi-format-line-spacing"></span>
            </button>
          </div>
        </nav>
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
                    <h4 class="card-title">코드그룹 관리</h4>
                    <form action="/codeGroup/codeGroupList" autocomplete="off"> <!-- action="/codeGroup/codeGroupList" -->
                    <div class="row mb-3">
                    	<div class="col-1">
                    		<select class="form-control" id="shDelNy" name="shDelNy">
		                        <option value="" <c:if test="${empty vo.shDelNy}">selected</c:if>>삭제여부</option>
		                        <option value="1" <c:if test="${vo.shDelNy eq 1}">selected</c:if>>N</option>
		                        <option value="2" <c:if test="${vo.shDelNy eq 2}">selected</c:if>>Y</option>
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
		                        <option value="" <c:if test="${empty vo.shOption}">selected</c:if>>검색구분</option>
		                        <option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>코드그룹 코드</option>
		                        <option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>코드그룹 이름 (한글)</option>
		                        <option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>코드그룹 이름 (영문)</option>
		                    </select>
                    	</div>
                    	<div class="col">
                    		<input type="search" id="shValue" name="shValue" value="<c:out value="${vo.shValue }"/>" class="form-control" placeholder="검색어">
                    	</div>
                    	<div class="col-auto my-auto">
                    		<button type="submit" class="btn btn-inverse-info btn-fw">검색</button>
                    	</div>
                    </div>
                    </form>
                    <div class="row mt-3 mb-3">
				  		<div class="col">
				  			<span>total : </span>
				  		</div>
				  		<div class="col-1">
				  			<select class="form-select" aria-label="Default select example">
					  			<option selected>10</option>
					  			<option value="1">1</option>
					  			<option value="2">2</option>
							</select>
				  		</div>
				  	</div>
                    <div class="table-responsive">
                      <table class="table table-dark text-info text-center mb-3">
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
						    <th scope="col">코드그룹 이름 (영문)</th>
						    <th scope="col">코드갯수</th>
						    <th scope="col">등록일</th>
						    <th scope="col">수정일</th>
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
		                            <td>
										<div class="form-check form-check-flat form-check-info">
					                        <label class="form-check-label"><input type="checkbox" class="form-check-input"></label>
					                    </div>
									</td>
		                            <td></td>
		                            <td> <c:out value="${list.seq }"/> </td>
		                            <td><a href="#"> <c:out value="${list.name }"/> </a></td>
		                            <td> May 15, 2015 </td>
		                            <td> <c:out value="${list.seqCount }"/> </td>
		                            <td> May 15, 2015 </td>
		                            <td> May 15, 2015 </td>
		                          </tr>
	                           </c:forEach>
	                        </c:otherwise>
                        </c:choose>
                        </tbody>
                      </table>
                    </div>
                    
                   
                    <nav aria-label="Page navigation example">
					  <ul class="pagination pagination-sm justify-content-center">
					  	<li class="page-item">
					      <a class="page-link" href="#" aria-label="Previous">
					        <span aria-hidden="true"><i class="fa-solid fa-angles-left"></i></span>
					      </a>
					    </li>
					    <li class="page-item">
					      <a class="page-link" href="#"><i class="fa-solid fa-angle-left"></i></i></a>
					    </li>
					    <li class="page-item active"><a class="page-link" href="#">1</a></li>
					    <li class="page-item"><a class="page-link" href="#">2</a></li>
					    <li class="page-item"><a class="page-link" href="#">3</a></li>
					    <li class="page-item">
					      <a class="page-link" href="#"><i class="fa-solid fa-angle-right"></i></a>
					    </li>
					    <li class="page-item">
					      <a class="page-link" href="#" aria-label="Next">
					        <span aria-hidden="true"><i class="fa-solid fa-angles-right"></i></span>
					      </a>
					    </li>
					  </ul>
					</nav>
					<div class="row">
						<div class="col">
							<a class="btn btn-success" href="./codegroupReg.html" role="button">등록 <i class="fa-solid fa-pencil"></i></a>
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