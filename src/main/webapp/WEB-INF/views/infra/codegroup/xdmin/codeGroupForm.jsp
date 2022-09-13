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
            <a class="nav-link" href="http://localhost:8080/member/memberList">
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
                <li class="nav-item"> <a class="nav-link" href="/codeGroup/codeGroupList"> 코드그룹 관리 </a></li>
                <li class="nav-item"> <a class="nav-link" href="/code/codeList"> 코드 관리 </a></li>
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
                    <h4 class="card-title"> <c:out value="${item.name }"></c:out> </h4>
                    <form class="forms-sample" autocomplete="off" id="codegroupform" name="form">
                      <div class="form-group">
                        <label for="seq">코드그룹 코드</label>
                        <input type="text" class="form-control" id="seq" name="seq" placeholder="숫자" value="<c:out value="${item.seq }"></c:out>">
                        <input type="hidden" class="form-control" id="seq" name="seq" placeholder="숫자" value="<c:out value="${item.seq }"></c:out>">
                      </div>
                      <div class="form-group">
                        <label for="name">코드그룹 이름 (한글)</label>
                        <input type="text" class="form-control" id="name" name="name" placeholder="한글" value="<c:out value="${item.name }"></c:out>">
                      </div>
                      <div class="form-group">
                        <label for="CodeGroupNameEN">코드그룹 이름 (영문)</label>
                        <input type="text" class="form-control" id="CodeGroupNameEN" name="CodeGroupNameEN" placeholder="영문" value="<c:out value="${item.codeGroupNameEN }"></c:out>">
                      </div>
                      <div class="form-group">
                        <label for="DelNy">삭제여부</label>
                        <select class="form-control" id="DelNy" name="DelNy" >
		                        <option value="0" <c:if test="${item.delNy eq 0}">selected</c:if>> N </option>
		                        <option value="1" <c:if test="${itme.delNy eq 1}">selected</c:if>> Y </option>
	                    </select>
                      </div>
                      <div class="form-group">
                        <label for="exampleTextarea1">상세정보</label>
                        <textarea class="form-control" id="exampleTextarea1" rows="4"></textarea>
                      </div>
                      
                      <%-- <div class="form-group">
                        <label for="CodeGroupModDate">작성시간</label>
                        <input type="text" class="form-control" id="CodeGroupModDate" name="CodeGroupModDate" value="<fmt:formatDate value="${item.codeGroupModDate}" pattern="yyyy-MM-DD HH:mm:ss"/>">
                      </div> --%>
                      
                      
                      <!-- 
                      <div class="form-check form-check-info">
                        <label class="form-check-label" for="check1"><input type="checkbox" class="form-check-input" id="check1" name="check" value="체크1">체크1</label>
                      </div>
                      <div class="form-check form-check-info">
                        <label class="form-check-label" for="check3"><input type="checkbox" class="form-check-input" id="check3" name="check" value="체크2">체크2</label>
                      </div>
                      <div class="form-check form-check-info">
                        <label class="form-check-label" for="check2"><input type="checkbox" class="form-check-input" id="check2" name="check" value="체크3">체크3</label>
                      </div>
                      

                      
                      <div class="form-group">
                        <input type="radio" id="M" name="gender" value="1">남성
                        <input type="radio" id="W" name="gender" value="2">여성
                        <input type="radio" id="etc" name="gender" value="3">기타
                      </div>
                       -->
                      
                      <button type="button" class="btn btn-success mr-2" id="btnSave">코드등록</button> <!--  onclick="test();" -->
                      <button type="reset" class="btn btn-warning mr-2">초기화</button>
                      <button type="button" class="btn btn-danger mr-2" id="btnUelete">삭제</button>
                      <button type="button" class="btn btn-danger mr-2" id="btnDelete"><i class="fa-solid fa-trash-can"></i></button>
                      <a href="/codeGroup/codeGroupList" class="btn btn-dark">목록</a>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <script type="text/javascript">
          
          	function test() {
				alert("test");
				
				/* alert(document.getElementById('name').value);
				alert(document.getElementById("exampleTextarea1").value);
				alert(document.getElementById('seq').value);
				alert(document.getElementById('CodeGroupNameEN').value);
				alert(document.getElementById('DelNy').options[document.getElementById('DelNy').selectedIndex].value);
				alert(document.getElementById('DelNy').value); */
				
				
				/* if(document.getElementById("M").checked != true && document.getElementById("W").checked != true && document.getElementById("etc").checked != true){
					alert("처리상태를 체크해주십시오.");
					return;
				} */
				
				/* if($('input:radio[name=gender]').is(':checked') == false) {
					alert("성별을 선택하세요");
					return false;
				} */
				
	 			/* var obj_length = document.getElementsByName("check").length;
			 	if (document.querySelector('input[type=checkbox][name=check]:checked') == null) {
					alert("하나이상 선택해주세요");
				} else {
					for (var i=0; i<obj_length; i++) {
			            if (document.getElementsByName("check")[i].checked == true) {
			            	alert(document.getElementsByName("check")[i].value);
			            }
			        } 
				}  */
				
				if (document.querySelector('input[type=checkbox][name=check]:checked') == null) {
					alert("하나이상 선택해주세요");
				} else {
					const query = 'input[name="check"]:checked';
					  const selectedEls = 
					      document.querySelectorAll(query);
					  // 선택된 목록에서 value 찾기
					  var result = '';
					  selectedEls.forEach((el) => {
					    result += el.value + ' ';
					  });
					  // 출력
					  alert(result);
				}
		
			 	/* var obj_length = document.getElementsByName("check").length;
			 	  
		        for (var i=0; i<obj_length; i++) {
		            if (document.getElementsByName("check")[i].checked == true) {
		                alert(document.getElementsByName("check")[i].value);
		            }
		        } */
				
				if (document.querySelector('input[type=radio][name=gender]:checked') == null) {
	 				alert("성별을 선택하세요");
	 			} else {
	 				alert(document.querySelector('input[name=gender]:checked').value);
	 			}
				
				if(document.getElementById("name").value == "" || document.getElementById("name").value == null){
					alert("입력하세요");
					document.getElementById("name").value="";
					document.getElementById("name").focus();
					return false;
				}
				
				
				document.getElementById("codegroupform").submit();
				
			}
          	
        	var goUrlList = "/codeGroup/codeGroupList"; 			/* #-> */
        	var goUrlInst = "/codeGroup/codeGroupInst"; 			/* #-> */
        	var goUrlUpdt = "/codeGroup/codeGroupUpdt";				/* #-> */
        	var goUrlUele = "/codeGroup/codeGroupUele";				/* #-> */
        	var goUrlDele = "/codeGroup/codeGroupDele";				/* #-> */
        	
        	var seq = $("input:hidden[name=seq]");				/* #-> */
        	
        	var form = $("form[name=form]");
        	var formVo = $("form[name=formVo]");
        	
        	
        	$("#btnSave").on("click", function(){
        		if (seq.val() == "0" || seq.val() == ""){
        	   		// insert
        	   		/* if (validationInst() == false) return false; */
        	   		form.attr("action", goUrlInst).submit();
        	   	} else {
        	   		// update
        	   		/* keyName.val(atob(keyName.val())); */
        	   		/* if (validationUpdt() == false) return false; */
        	   		form.attr("action", goUrlUpdt).submit();
        	   	}
        	}); 
        	

        	$("#btnUelete").on("click", function(){
        		$("input:hidden[name=exDeleteType]").val(1);
        		$(".modal-title").text("확 인");
        		$(".modal-body").text("해당 데이터를 삭제하시겠습니까 ?");
        		$("#btnModalUelete").show();
        		$("#btnModalDelete").hide();
        		$("#modalConfirm").modal("show");
        	});
        	

        	$("#btnDelete").on("click", function(){
        		$("input:hidden[name=exDeleteType]").val(2);
        		$(".modal-title").text("확 인");
        		$(".modal-body").text("해당 데이터를 삭제하시겠습니까 ?");
        		$("#btnModalUelete").hide();
        		$("#btnModalDelete").show();
        		$("#modalConfirm").modal("show");
        	});
        	
        	
        	$("#btnModalUelete").on("click", function(){
        		$("#modalConfirm").modal("hide");
        		formVo.attr("action", goUrlUele).submit();
        	});
        	
        	
        	$("#btnModalDelete").on("click", function(){
        		$("#modalConfirm").modal("hide");
        		formVo.attr("action", goUrlDele).submit();
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