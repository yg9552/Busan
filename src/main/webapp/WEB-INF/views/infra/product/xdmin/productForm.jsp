<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="CodeServiceImpl" class="com.yg.infra.modules.code.CodeServiceImpl"/>

<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>상품등록</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="../../../../../resources/assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../../../../../resources/assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://kit.fontawesome.com/144448c071.js" crossorigin="anonymous"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fff4722d1b0684553d2d53d2ea3f7fe9&libraries=services"></script>
    <link rel="stylesheet" href="../../../../../resources/assets/vendors/select2/select2.min.css">
    <link rel="stylesheet" href="../../../../../resources/assets/vendors/select2-bootstrap-theme/select2-bootstrap.min.css">
    <script src="/resources/xdmin/js/commonXdmin.js"></script>
    <!-- End Plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="../../../../../resources/assets/css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="../../../../../resources/assets/images/favicon.png" />
    <style type="text/css">
	#multipleContainer {
	    display: grid;
	    grid-template-columns: 1fr 1fr 1fr;
	}
	.image {
	    display: block;
	    width: 100%;
	}
	.image-label {
	    position: relative;
	    bottom: 22px;
	    left: 5px;
	    color: white;
	    text-shadow: 2px 2px 2px black;
	}
	
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
              <h3 class="page-title">상품관리</h3>
            </div>
            <div class="row">
              <div class="col-md-12 grid-margin stretch-card">
                <div class="card">
                <c:set var="listCodebrandMFC" value="${CodeServiceImpl.selectListCachedCode('8')}"/>
			  	<c:set var="listCodeOrigin" value="${CodeServiceImpl.selectListCachedCode('9')}"/>
                  <div class="card-body">
                    <h4 class="card-title">상품등록</h4>
                    <form autocomplete="off" id="form" name="form" method="post" enctype="multipart/form-data">
                    <!-- *Vo.jsp s -->
					<%@include file="productVo.jsp"%>		<!-- #-> -->
					<!-- *Vo.jsp e -->
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
                        	<select class="form-control" id="origin_code" name="origin_code" >
                        		<c:forEach items="${listCodeOrigin}" var="listOrigin" varStatus="statusOrigin">
	                          		<option value="<c:out value="${origin_code }"/><c:out value="${listOrigin.seq }"/>"><c:out value="${listOrigin.seq }"/> <c:out value="${listOrigin.name }"/></option>
	                          	</c:forEach>
	                    	</select>
                        </div>
	                    <div class="form-group">
                        	<label for="manufacturer_code">제조사</label>
                        	<select class="form-control" id="manufacturer_code" name="manufacturer_code" >
                        		<c:forEach items="${listCodebrandMFC}" var="listbrandMFC" varStatus="statusbrandMFC">
	                          		<option value="<c:out value="${manufacturer_code }"/><c:out value="${listbrandMFC.seq }"/>"><c:out value="${listbrandMFC.seq }"/> <c:out value="${listbrandMFC.name }"/></option>
	                          	</c:forEach>
	                    	</select>
                        </div>
	                    <div class="form-group">
                        	<label for="brand_code">브랜드</label>
                        	<select class="form-control" id="brand_code" name="brand_code" >
                        		<c:forEach items="${listCodebrandMFC}" var="listbrandMFC" varStatus="statusbrandMFC">
	                          		<option value="<c:out value="${brand_code }"/><c:out value="${listbrandMFC.seq }"/>"><c:out value="${listbrandMFC.seq }"/> <c:out value="${listbrandMFC.name }"/></option>
	                          	</c:forEach>
	                    	</select>
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
	                    <!-- 
	                    <div class="form-group">
							<label for="fileInput">사진첨부</label>
							<input id="fileInput" filestyle="" multiple type="file" data-class-button="btn btn-default" data-class-input="form-control" data-button-text="" data-icon-name="fa fa-upload" class="form-control" tabindex="-1" style="position: absolute; clip: rect(0px 0px 0px 0px);">
							<div class="bootstrap-filestyle input-group">
								<input type="text" id="userfile" class="form-control" name="userfile">
								<span class="group-span-filestyle input-group-btn" tabindex="0">
									<label for="fileInput" class="btn btn-default">
										<span class="glyphicon fa fa-upload"></span>
									</label>
								</span>
							</div>
						</div>
						
	                    //이미지 들어오는 부분
						<div id="multipleContainer"></div>
						 -->
						<div class="row mt-sm-4">
							<div class="col-sm-6 mt-3 mt-sm-0">
					        	<c:set var="type" value="2"/>		<!-- #-> -->
					        	<c:set var="name" value="uploadImg"/>		<!-- #-> -->
					        	<input type="hidden" id="uploadImgMaxNumber" name="uploadImgMaxNumber" value="0"/>
					        	<input type="hidden" id="uploadImgDeleteSeq" name="uploadImgDeleteSeq"/>
					        	<input type="hidden" id="uploadImgDeletePathFile" name="uploadImgDeletePathFile"/>
					            <label for="uploadImg" class="form-label input-file-button">이미지첨부</label>
					 			<input class="form-control form-control-sm" id="uploadImg" name="uploadImg" type="file" multiple="multiple" style="display: none;" onChange="upload('uploadImg', 2, 0, 1, 0, 0, 1);">
								<div id="uploadImgPreview" class="addScroll">
									<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
										<c:if test="${listUploaded.type eq type }">
											<div id="imgDiv_2_<c:out value="${listUploaded.sort }"/>" style="display: inline-block; height: 95px;">
												<img src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" class="rounded" width= "85px" height="85px" style="cursor:pointer;" onClick="openViewer(<c:out value="${listUploaded.type }"/>, <c:out value="${listUploaded. sort }"/>);">
												<div style="position: relative; top:-85px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv('uploadImg', 2,<c:out value="${listUploaded.sort }"/>, <c:out value="${listUploaded.seq }"/>, '<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>')">X</span></div>
											</div>
										</c:if>
									</c:forEach>
								</div>
					        </div>
						</div>
						<script type="text/javascript">
						upload = function(objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {
		            		
//		          		objName 과 seq 는 jsp 내에서 유일 하여야 함.
//		          		memberProfileImage: 1
//		          		memberImage: 2
//		          		memberFile : 3

//		          		uiType: 1 => 이미지형
//		          		uiType: 2 => 파일형
//		          		uiType: 3 => 프로필형

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
						</script>
	                    <!-- <button type="button" class="btn btn-danger" id="btnTest">테스트</button> -->
	                    
                      	<div class="row mt-3">
							<div class="col">
								<button type="button" class="btn btn-success mr-2" id="btnSave">상품등록</button>
							</div>
							<div class="col-auto">
								<button type="reset" class="btn btn-warning mr-2"><i class="fa-solid fa-rotate"></i></button>
								<button type="button" class="btn btn-dark" id="btnList">목록</button>
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
              <script type="text/javascript">
//              $("#btnTest").on("click", function(){
//	        		if (upload("fileInput", 1, 5, 1, 0, 0, 1) == false) {
//	        			alert("실패");
//	        			return false;
//	        		} else {
//	        			alert("성공");
//	        		}
//	          });
                            
          	
              </script>
              
              <!-- <script type="text/javascript">
              	validationInst = function() {
              		var obj = document.getElementById("fileInput").files;
              		
              		alert(obj);
              		alert(obj.length);
              		
              		for(var i=0; i<obj.length; i++){
              			if (obj[i].size > 1024000) {
              				alert("사이즈가 큽니다");
              				return false;
              			}
              			alert(obj[i].name + " : " + obj[i].size);
              		}
              	}
              </script> -->
              <script type="text/javascript">
              
        		var goUrlList = "/product/productListX"; 		/* #-> */
		      	var goUrlInst = "/product/productInst"; 		/* #-> */
		      	var goUrlUpdt = "/product/productUpdt";			/* #-> */
		      	var goUrlUele = "/product/productUele";			/* #-> */
		      	var goUrlDele = "/product/productDele";			/* #-> */
		      	var goUrlForm = "/product/productForm";			/* #-> */
		      	var goUrlView = "/product/productView";			/* #-> */
              	
	        	var form = $("form[name=form]");
	        	var formVo = $("form[name=formVo]");
	        	
	        	$("#btnSave").on("click", function(){
	        		/* if (validationInst() == false) return false; */
	        	   	form.attr("action", goUrlInst).submit();
	        	});
	        	
	        	$("#btnList").on("click", function(){
		    		formVo.attr("action", goUrlList).submit();
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
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="../../../../../resources/assets/js/off-canvas.js"></script>
    <script src="../../../../../resources/assets/js/hoverable-collapse.js"></script>
    <script src="../../../../../resources/assets/js/misc.js"></script>
    <script src="../../../../../resources/assets/js/settings.js"></script>
    <script src="../../../../../resources/assets/js/todolist.js"></script>
    <!-- endinject -->
    <!-- 이미지첨부 -->
    <!-- <script type="text/javascript">
    $(document).ready(function(){
		$("#fileInput").on('change', function(){  // 값이 변경되면
			if(window.FileReader){  // modern browser
				var filename = $(this)[0].files[0].name;
			} else {  // old IE
	 			var filename = $(this).val().split('/').pop().split('\\').pop();  // 파일명만 추출
			}
	
	 		// 추출한 파일명 삽입
			$("#userfile").val(filename);
		});
	});
    function readMultipleImage(input) {
	    const multipleContainer = document.getElementById('multipleContainer')
	    
	    if(input.files) {
	        console.log(input.files)
	        const fileArr = Array.from(input.files)
	        const $colDiv1 = document.createElement('div')
	        const $colDiv2 = document.createElement('div')
	        $colDiv1.classList.add('column')
	        $colDiv2.classList.add('column')
	        fileArr.forEach((file, index) => {
	            const reader = new FileReader()
	            const $imgDiv = document.createElement('div')   
	            const $img = document.createElement('img')
	            $img.classList.add('image')
	            const $label = document.createElement('label')
	            $label.classList.add('image-label')
	            $label.textContent = file.name
	            $imgDiv.appendChild($img)
	            $imgDiv.appendChild($label)
	            reader.onload = e => {
	                $img.src = e.target.result
	                
	                //$imgDiv.style.width = ($img.naturalWidth) * 0.2 + "px"
	                //$imgDiv.style.height = ($img.naturalHeight) * 0.2 + "px"
	            }
	            
	            console.log(file.name)
	            if(index % 2 == 0) {
	                $colDiv1.appendChild($imgDiv)
	            } else {
	                $colDiv2.appendChild($imgDiv)
	            }
	            
	            reader.readAsDataURL(file)
	        })
	        multipleContainer.appendChild($colDiv1)
	        multipleContainer.appendChild($colDiv2)
	    }
	}
	// 이벤트 리스너
	document.getElementById('fileInput').addEventListener('change', (e) => {
	    readMultipleImage(e.target);
	})
    </script> -->
  </body>
</html>