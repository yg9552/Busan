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
                    <h4 class="card-title"> 코드그룹 등록 </h4>
                    <form class="forms-sample" autocomplete="off" id="form" name="form" method="post">
                    <!-- *Vo.jsp s -->
					<%@include file="codeGroupVo.jsp"%>		<!-- #-> -->
					<!-- *Vo.jsp e -->
                      <div class="form-group">
                        <label for="CodeGroupCode">코드그룹 코드</label>
                        <input type="text" class="form-control" id="CodeGroupCode" name="CodeGroupCode" placeholder="숫자" value="<c:out value="${item.codeGroupCode }"></c:out>">
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
                      
                      <button type="submit" class="btn btn-success mr-2" id="btnSave">코드등록</button> <!--  onclick="test();" -->
                      <button type="reset" class="btn btn-warning mr-2">초기화</button>
                      <button type="button" class="btn btn-dark" id="btnList">목록</button>
                    </form>
                    
                    <form name="formVo" id="formVo" method="post">
					<!-- *Vo.jsp s -->
					<%@include file="codeGroupVo.jsp"%>		<!-- #-> -->
					<!-- *Vo.jsp e -->
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
        	   	form.attr("action", goUrlInst).submit();
        	}); 
        	
        	$("#btnList").on("click", function(){
	    		formVo.attr("action", goUrlList).submit();
	    	});
        	
/*         	

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
        	
        	*/ 
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