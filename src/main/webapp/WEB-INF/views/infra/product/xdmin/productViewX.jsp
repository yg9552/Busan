<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="CodeServiceImpl" class="com.yg.infra.modules.code.CodeServiceImpl"/>
<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title><c:out value="${item.product_name }"></c:out></title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="../../../../../resources/assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../../../../../resources/assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    
    <!-- Plugin css for this page -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://kit.fontawesome.com/144448c071.js" crossorigin="anonymous"></script>
    <script src="/resources/xdmin/js/commonXdmin.js"></script>
    <link rel="stylesheet" href="../../../../../resources/assets/vendors/select2/select2.min.css">
    <link rel="stylesheet" href="../../../../../resources/assets/vendors/select2-bootstrap-theme/select2-bootstrap.min.css">
    <!-- End Plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="../../../../../resources/assets/css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="../../../../../resources/assets/images/favicon.png" />
    <style type="text/css">
    .addScroll{
		overflow-y:auto;
		height: 200px;
		background-color:#2A3038;
		padding-top:5px; 
		padding-left:5px;
	}
 	
	.input-file-button{
		padding: 4px 25px;
		background-color:#FF6600;
		border-radius: 4px;
		color: white;
		cursor: pointer;
	}
    </style>
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
              <h3 class="page-title"> 상품관리 </h3>
            </div>
            <div class="row">
              <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                  	<form name="viewform" id="viewform" method="post" autocomplete="off" enctype="multipart/form-data">
			<!-- *Vo.jsp s -->
			<%@include file="productVo.jsp"%>		<!-- #-> -->
			<!-- *Vo.jsp e -->
					<c:set var="listCodebrandMFC" value="${CodeServiceImpl.selectListCachedCode('8')}"/>
					<c:set var="listCodeOrigin" value="${CodeServiceImpl.selectListCachedCode('9')}"/>
                    <h4 class="card-title"><c:out value="${item.product_name }"></c:out></h4>
                        <div class="form-group">
	                        <label for="product_name">상품명</label>
	                        <input type="text" class="form-control" id="product_name" name="product_name" value="<c:out value="${item.product_name }"></c:out>">
	                    </div>
						<div class="form-group">
	                        <label for="price">가격</label>
	                        <input type="text" class="form-control" id="price" name="price" value="<c:out value="${item.price }"></c:out>">
	                    </div>
						<div class="form-group">
	                        <label for="reserve">적립금</label>
	                        <input type="text" class="form-control" id="reserve" name="reserve" value="<c:out value="${item.reserve }"></c:out>">
	                    </div>
	                    <div class="form-group">
	                       	<label for="discount_percent">할인율</label>
	                       	<input type="text" class="form-control" id="discount_percent" name="discount_percent" value="<c:out value="${item.discount_percent }"></c:out>">
	                       </div>
	                    <div class="form-group">
	                       	<label for="origin_code">원산지</label>
	                       	<input type="text" class="form-control" id="origin_code" name="origin_code" value="<c:out value="${item.origin_code }"></c:out>">
                        </div>
                        
	                    <div class="form-group">
	                       	<label for="manufacturer_code">제조사</label>
	                       	<input type="text" class="form-control" id="manufacturer_code" name="manufacturer_code" value="<c:out value="${item.manufacturer_code }"></c:out>">
                        </div>
	                    <div class="form-group">
	                       	<label for="brand_code">브랜드</label>
	                       	<input type="text" class="form-control" id="brand_code" name="brand_code" value="<c:out value="${item.brand_code }"></c:out>">
                        </div>
                        <div class="form-group">
	                        <label for="deliveryinfo">배송정보</label>
	                        <select class="form-control" id="deliveryinfo" name="deliveryinfo" >
			                        <option value="1" <c:if test="${item.deliveryinfo eq 1}">selected</c:if>> 국내배송 </option>
			                        <option value="2" <c:if test="${item.deliveryinfo eq 2}">selected</c:if>> 해외배송 </option>
		                    </select>
	                    </div>
                        <div class="form-group">
	                        <label for="deliverycost">배송비</label>
	                        <select class="form-control" id="deliverycost" name="deliverycost" >
			                        <option value="0" <c:if test="${item.deliverycost eq 0}">selected</c:if>> 무료배송 </option>
			                        <option value="3000" <c:if test="${item.deliverycost eq 3000}">selected</c:if>> 3000원 </option>
			                        <option value="5000" <c:if test="${item.deliverycost eq 5000}">selected</c:if>> 5000원 </option>
		                    </select>
	                    </div>
                        <div class="form-group">
	                        <label for="bestNy">베스트상품여부</label>
	                        <select class="form-control" id="bestNy" name="bestNy" >
			                        <option value="0" <c:if test="${item.bestNy eq 0}">selected</c:if>> N </option>
			                        <option value="1" <c:if test="${item.bestNy eq 1}">selected</c:if>> Y </option>
		                    </select>
	                    </div>
                        <div class="form-group">
	                        <label for="newNy">신제품여부</label>
	                        <select class="form-control" id="newNy" name="newNy" >
			                        <option value="0" <c:if test="${item.newNy eq 0}">selected</c:if>> N </option>
			                        <option value="1" <c:if test="${item.newNy eq 1}">selected</c:if>> Y </option>
		                    </select>
	                    </div>
                        <div class="form-group">
	                        <label for="DelNy">삭제여부</label>
	                        <select class="form-control" id="DelNy" name="DelNy" >
			                        <option value="0" <c:if test="${item.delNy eq 0}">selected</c:if>> N </option>
			                        <option value="1" <c:if test="${item.delNy eq 1}">selected</c:if>> Y </option>
		                    </select>
	                    </div>
	                  <div class="row mt-sm-4">
							<div class="col-sm-6 mt-3 mt-sm-0">
					        	<c:set var="type" value="2"/>		<!-- #-> -->
					        	<c:set var="name" value="uploadImg"/>		<!-- #-> -->
					        	<input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0"/>
					        	<input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq"/>
					        	<input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile"/>
					            <label for="uploadImg" class="form-label input-file-button">이미지첨부</label>
					 			<input class="form-control form-control-sm" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 0, 1, 0, 0, 1);">
								<div id="<c:out value="${name }"/>Preview" class="addScroll">
									<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
										<c:if test="${listUploaded.type eq type }">
											<div id="imgDiv_<c:out value="${type }"/>_<c:out value="${listUploaded.sort }"/>" style="display: inline-block; height: 95px;">
												<img src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" class="rounded" width= "85px" height="85px" style="cursor:pointer;" onClick="openViewer(<c:out value="${listUploaded.type }"/>, <c:out value="${listUploaded. sort }"/>);">
												<div style="position: relative; top:-85px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv('<c:out value="${name }"/>', <c:out value="${type }"/>,<c:out value="${listUploaded.sort }"/>, <c:out value="${listUploaded.seq }"/>, '<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>')">X</span></div>
											</div>
										</c:if>
									</c:forEach>
								</div>
					        </div>
						</div>  
                      <div class="row">
						<div class="col">
							<button type="button" class="btn btn-dark" id="btnList">목록 <i class="fa-solid fa-list"></i></button>
						</div>
						<div class="col-auto">
							<button type="button" class="btn btn-success" id="btnSave">수정<i class="fa-solid fa-upload"></i></button>
							<button type="button" class="btn btn-success" id="btnUp">이미지업로드<i class="fa-solid fa-upload"></i></button>
							<button type="button" class="btn btn-danger mx-auto" id="btnUelete">삭제 <i class="fa-solid fa-trash-can"></i></button>
	                        <button type="reset" class="btn btn-warning mr-2">초기화</button>
	                        <button type="button" class="btn btn-danger mr-2" id="btnDelete"><i class="fa-solid fa-trash-can"></i></button>
						</div>
					  </div>
					  </form>
					<form name="formVo" id="formVo" method="post">
					<!-- *Vo.jsp s -->
					<%@include file="productVo.jsp"%>		<!-- #-> -->
					<!-- *Vo.jsp e -->
					</form>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
          <script type="text/javascript">
          upload = function(objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {
      		
//        		objName 과 seq 는 jsp 내에서 유일 하여야 함.
//        		memberProfileImage: 1
//        		memberImage: 2
//        		memberFile : 3

//        		uiType: 1 => 이미지형
//        		uiType: 2 => 파일형
//        		uiType: 3 => 프로필형

        		var files = $("#" + objName +"")[0].files;
        		var filePreview = $("#" + objName +"Preview");
        		var numbering = [];
        		var maxNumber = 0;
        		
        		if(uiType == 1) {
        			var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > div > img").length;
        			var tagIds = document.querySelectorAll("#" + objName + "Preview > div");
        			
        			for(var i=0; i<tagIds.length; i++){
        				var tagId = tagIds[i].getAttribute("id").split("_");
        				numbering.push(tagId[2]);
        			}
        			
        			if(uploadedFilesCount > 0){
        				numbering.sort();
        				maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
        			}
        		} else if(uiType == 2){
        			var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > li").length;
        			var tagIds = document.querySelectorAll("#" + objName + "Preview > li");

        			for(var i=0; i<tagIds.length; i++){
        				var tagId = tagIds[i].getAttribute("id").split("_");
        				numbering.push(tagId[2]);
        			}
        			
        			if(uploadedFilesCount > 0){
        				numbering.sort();
        				maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
        			}
        		} else {
        			// by pass
        		}
        		
        		$("#" + objName + "MaxNumber").val(maxNumber);

        		var totalFileSize = 0;
        		var filesCount = files.length;
        		var filesArray = [];
        		
        		allowedMaxTotalFileNumber = allowedMaxTotalFileNumber == 0 ? MAX_TOTAL_FILE_NUMBER : allowedMaxTotalFileNumber;
        		allowedEachFileSize = allowedEachFileSize == 0 ? MAX_EACH_FILE_SIZE : allowedEachFileSize;
        		allowedTotalFileSize = allowedTotalFileSize == 0 ? MAX_TOTAL_FILE_SIZE : allowedTotalFileSize;
        		
        		if(checkUploadedTotalFileNumber(files, allowedMaxTotalFileNumber, filesCount, uploadedFilesCount) == false) { return false; }
        		
        		for (var i=0; i<filesCount; i++) {
        			if(checkUploadedExt(files[i].name, seq, allowedExtdiv) == false) { return false; }
        			if(checkUploadedEachFileSize(files[i], seq, allowedEachFileSize) == false) { return false; }

        			totalFileSize += files[i].size;
        			
        			filesArray.push(files[i]);
        		}

        		if(checkUploadedTotalFileSize(seq, totalFileSize, allowedTotalFileSize) == false) { return false; }
        		
        		if (uiType == 1) {
        			for (var i=0; i<filesArray.length; i++) {
        				var file = filesArray[i];

        				var picReader = new FileReader();
        			    picReader.addEventListener("load", addEventListenerCustom (objName, seq, i, file, filePreview, maxNumber));
        			    picReader.readAsDataURL(file);
        			}			
        		} else if(uiType == 2) {
        			for (var i = 0 ; i < filesCount ; i++) {
        				addUploadLi(objName, seq, i, $("#" + objName +"")[0].files[i].name, filePreview, maxNumber);
        			}
        		} else if (uiType == 3) {
        			var fileReader = new FileReader();
        			 fileReader.onload = function () {
        				 $("#uploadImgProfilePreview").attr("src", fileReader.result);		/* #-> */
        			 }	
        			 fileReader.readAsDataURL($("#" + objName +"")[0].files[0]);
        		} else {
        			return false;
        		}
        		return false;
        	}

	              var extArray1 = new Array();
	              extArray1 = ["jpg","gif","png","jpeg","bmp","tif"];              
	              
	              addEventListenerCustom = function (objName, type, i, file, filePreview, maxNumber) { 
	            		return function(event) {
	            			var imageFile = event.target;
	            			var sort = parseInt(maxNumber) + i;

	            			var divImage = "";
	            			divImage += '<div id="imgDiv_'+type+'_'+ sort +'" style="display: inline-block; height: 95px;">';
	            			divImage += '	<img src="'+ imageFile.result +'" class="rounded" width= "85px" height="85px">';
	            			divImage += '	<div style="position: relative; top:-85px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv(0,' + type +','+ sort +')">X</span></div>';
	            			divImage += '</div> ';
	            			
	            			filePreview.append(divImage);
	            	    };
	            	}
	              
	              delImgDiv = function(objName, type, sort, deleteSeq, pathFile) {
	          		
		          		$("#imgDiv_"+type+"_"+sort).remove();
		          		
		          		var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
		          		var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');
		          		
		          		if(objDeleteSeq.val() == "") {
		          			objDeleteSeq.val(deleteSeq);
		          		} else {
		          			objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
		          		}
		          		
		          		if(objDeletePathFile.val() == "") {
		          			objDeletePathFile.val(pathFile);
		          		} else {
		          			objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
		          		}
	          		}
	            	
	            	
	            	addUploadLi = function (objName, type, i, name, filePreview, maxNumber){

		          		var sort = parseInt(maxNumber) + i;
		          		
		          		var li ="";
		          		li += '<input type="hidden" id="'+ objName +'Process_'+type+'_'+ sort +'" name="'+ objName +'Process" value="1">';
		          		li += '<input type="hidden" id="'+ objName +'Sort_'+type+'_'+ sort +'" name="'+ objName +'Sort" value="'+ sort +'">';
		          		li += '<li id="li_'+type+'_'+sort+'" class="list-group-item d-flex justify-content-between align-items-center">';
		          		li += name;
		          		li +='<span class="badge bg-danger rounded-pill" onClick="delLi(0,'+ type +','+ sort +')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>';
		          		li +='</li>';
		          		
		          		filePreview.append(li);
		          	}
	          	
	            	
	          	/* delLi = function(objName, type, sort, deleteSeq, pathFile) {
	          		
	          		$("#li_"+type+"_"+sort).remove();

	          		var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
	          		var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');

	          		if(objDeleteSeq.val() == "") {
	          			objDeleteSeq.val(deleteSeq);
	          		} else {
	          			objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
	          		}
	          		
	          		if(objDeletePathFile.val() == "") {
	          			objDeletePathFile.val(pathFile);
	          		} else {
	          			objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
	          	} */
	            	
	            	openViewer = function (type, sort) {
	          		var str = '<c:set var="tmp" value="'+ type +'"/>';
	          		$("#modalImgViewer").append(str);
	          		$("#modalImgViewer").modal("show");
	          	}
          
          
	  		var goUrlList = "/product/productListX"; 		/* #-> */
	      	var goUrlInst = "/product/productInst"; 		/* #-> */
	      	var goUrlUpdt = "/product/productUpdt";			/* #-> */
	      	var goUrlUele = "/product/productUele";			/* #-> */
	      	var goUrlDele = "/product/productDele";			/* #-> */
	      	var goUrlForm = "/product/productForm";			/* #-> */
	      	var goUrlView = "/product/productViewX";			/* #-> */
	      	
	      	
	      	var seq = $("input:hidden[name=productSeq]");					/* #-> */
	      	
	      	var form = $("form[name=viewform]");
	      	var formVo = $("form[name=formVo]");
	      	
	      	
	      	$("#btnUp").on("click", function(){
	      		
	      			
	      			form.attr("action", goUrlInst).submit();
	      	   		// insert
	      	   		/* if (validationInst() == false) return false; */
	      	   		
	      	   	
	      	});
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