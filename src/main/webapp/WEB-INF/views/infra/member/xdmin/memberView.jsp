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
    <title><c:out value="${item.nm }"></c:out></title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="../../../../../resources/assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../../../../../resources/assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    
    <!-- Plugin css for this page -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://kit.fontawesome.com/144448c071.js" crossorigin="anonymous"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
              <h3 class="page-title"> 회원관리 </h3>
            </div>
            <div class="row">
              <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                  	<form name="viewform" id="viewform" method="post" autocomplete="off">
<!-- *Vo.jsp s -->
<%@include file="memberVo.jsp"%>		<!-- #-> -->
<!-- *Vo.jsp e -->
                    <h4 class="card-title"><c:out value="${item.nm }"></c:out></h4>
                      <div class="form-group">
                        <label for="nm">이름</label>
                        <input type="text" class="form-control text-warning" id="nm" name="nm" placeholder="숫자" value="<c:out value="${item.nm }"></c:out>" >
                      </div>
                      <div class="form-group">
                        <label for="id">아이디</label>
                        <input type="text" class="form-control text-warning" id="id" name="id" placeholder="한글" value="<c:out value="${item.id }"></c:out>" >
                      </div>
                      <div class="form-group">
                        <label for="email">이메일</label>
                        <input type="email" class="form-control text-warning" id="email" name="email" placeholder="영문" value="<c:out value="${item.email }"></c:out>" >
                      </div>
                      <div class="form-group">
                        <label for="gender_code">성별</label>
                        <select class="form-control" id="gender_code" name="gender_code" >
		                        <option value="201" <c:if test="${item.gender_code eq 201}">selected</c:if>>남성</option>
		                        <option value="202" <c:if test="${item.gender_code eq 202}">selected</c:if>>여성</option>
		                        <option value="203" <c:if test="${item.gender_code eq 203}">selected</c:if>>기타</option>
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
	                        <label for="dob">생년월일</label>
	                        <input type="date" class="form-control" id="dob" name="dob" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${item.dob}"/>">
	                  </div>
	                  <div class="row">
	                    	<div class="col">
           			        	<div class="form-group">
			                        <label for="sample4_postcode">우편번호</label>
			                        <input type="text" class="form-control" id="sample4_postcode" name="sample4_postcode">
		                    	</div>
	                    	</div>
	                    	<div class="col">
	                    		<button type="button" class="btn btn-success my-4 mr-2" onclick="sample4_execDaumPostcode()">주소찾기</button>
	                    		<button type="button" class="btn btn-warning my-4" id="btnAddressReset"><i class="fa-solid fa-rotate"></i></button>
	                    	</div>
	                    </div>
	                    <div class="row">
	                    	<div class="col-6">
           			        	<div class="form-group">
			                        <label for="sample4_roadAddress">도로명주소</label>
			                        <input type="text" class="form-control" id="sample4_roadAddress" name="sample4_roadAddress">
		                    	</div>
	                    	</div>
	                    	<div class="col-6">
	                    		<div class="form-group">
			                        <label for="sample4_jibunAddress">지번주소</label>
			                        <input type="text" class="form-control" id="sample4_jibunAddress" name="sample4_jibunAddress">
			                        <input type="hidden" class="form-control" id="guide" name="guide">
		                    	</div>
	                    	</div>
	                    	<div class="col-6">
	                    		<div class="form-group">
			                        <label for="sample4_detailAddress">상세주소</label>
			                        <input type="text" class="form-control" id="sample4_detailAddress" name="sample4_detailAddress">
		                    	</div>
	                    	</div>
	                    	<div class="col-6">
	                    		<div class="form-group">
			                        <label for="sample4_extraAddress">참고항목</label>
			                        <input type="text" class="form-control" id="sample4_extraAddress" name="sample4_extraAddress">
		                    	</div>
	                    	</div>
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
					<%@include file="memberVo.jsp"%>		<!-- #-> -->
					<!-- *Vo.jsp e -->
					</form>
                  </div>
                </div>
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
	      	
	      	
	      	var seq = $("input:hidden[name=memberSeq]");					/* #-> */
	      	
	      	var form = $("form[name=viewform]");
	      	var formVo = $("form[name=formVo]");
	      	
	      	
	      	$("#btnSave").on("click", function(){
	      		if (seq.val() == "0" || seq.val() == ""){
	      			
	      			form.attr("action", goUrlInst).submit();
	      	   		// insert
	      	   		/* if (validationInst() == false) return false; */
	      	   		
	      	   	} else {
	      	   		
	      	   		form.attr("action", goUrlUpdt).submit();
	      	   		// update
	      	   		/* keyName.val(atob(keyName.val())); */
	      	   		/* if (validationUpdt() == false) return false; */
	      	   		
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
	      	
	      	$("#btnAddressReset").on("click", function(){
	      		$("#sample4_postcode").val("");
	      		$("#sample4_roadAddress").val("");
	      		$("#sample4_jibunAddress").val("");
	      		$("#sample4_detailAddress").val("");
	      		$("#sample4_extraAddress").val("");
	      		$("#guide").val("");
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
	      	 */
          </script>
          <!-- 카카오주소 API -->
          <script>
          
			    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
			    function sample4_execDaumPostcode() {
			        new daum.Postcode({
			            oncomplete: function(data) {
			                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
			
			                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
			                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			                var roadAddr = data.roadAddress; // 도로명 주소 변수
			                var extraRoadAddr = ''; // 참고 항목 변수
			
			                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
			                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
			                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
			                    extraRoadAddr += data.bname;
			                }
			                // 건물명이 있고, 공동주택일 경우 추가한다.
			                if(data.buildingName !== '' && data.apartment === 'Y'){
			                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
			                }
			                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
			                if(extraRoadAddr !== ''){
			                    extraRoadAddr = ' (' + extraRoadAddr + ')';
			                }
			
			                // 우편번호와 주소 정보를 해당 필드에 넣는다.
			                document.getElementById('sample4_postcode').value = data.zonecode;
			                document.getElementById("sample4_roadAddress").value = roadAddr;
			                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
			                
			                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
			                if(roadAddr !== ''){
			                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
			                } else {
			                    document.getElementById("sample4_extraAddress").value = '';
			                }
			
			                var guideTextBox = document.getElementById("guide");
			                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
			                if(data.autoRoadAddress) {
			                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
			                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
			                    guideTextBox.style.display = 'block';
			
			                } else if(data.autoJibunAddress) {
			                    var expJibunAddr = data.autoJibunAddress;
			                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
			                    guideTextBox.style.display = 'block';
			                } else {
			                    guideTextBox.innerHTML = '';
			                    guideTextBox.style.display = 'none';
			                }
			                document.getElementById("sample4_detailAddress").focus();
			            }
			        }).open();
			    }
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