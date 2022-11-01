<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>구매</title>
	<script src="https://kit.fontawesome.com/144448c071.js" crossorigin="anonymous"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="../../../../../resources/assets/css/usercommon.css">
	<script src="/resources/xdmin/js/commonXdmin.js"></script>
</head>
<body>
	  <!-- userHeader s -->
			<%@include file="../../../common/xdmin/userHeader.jsp"%>
	  <!-- userHeader e -->
	  <form name="form" method="post" enctype="multipart/form-data">
	  <!-- *Vo.jsp s -->
		<%@include file="productReviewVo.jsp"%>		<!-- #-> -->
	  <!-- *Vo.jsp e -->
		  <div class="container w-75">
		  	<h3 class="mb-4 mt-4 text-left">리뷰작성</h3>
		  	<div class="mb-3">
			  <label for="product_name" class="form-label">상품명</label>
			  <input type="text" class="form-control" id="product_name" name="product_name" value='<c:out value="${itemp.product_name }"></c:out>'>
			  <input type="hidden" name="DelNy" value="0">
			</div>
		  	<div class="mb-3">
			  <label for="title" class="form-label">제목</label>
			  <input type="text" class="form-control" id="title" name="title" value="<c:out value="${item.title }"></c:out>">
			</div>
			<div class="mb-3">
			  <label for="question" class="form-label">상세내용</label>
			  <textarea class="form-control" id="contents" name="question" value="<c:out value="${item.contents }"></c:out>" rows="3"></textarea>
			</div>
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
			<div class="row">
				<div class="col">
					<button type="button" class="btn btn-sm btn-dark mb-3" id="btnView">돌아가기</button>
				</div>
				<div class="col-auto">
					<button type="button" class="btn btn-sm btn-success mb-3" id="btnSave">리뷰등록</button>
				</div>
			</div>
		  </div>
	  </form>
	  <form name="formVo" id="formVo" method="post">
		<!-- *Vo.jsp s -->
		<%@include file="productReviewVo.jsp"%>		<!-- #-> -->
		<!-- *Vo.jsp e -->
	  </form>
<script type="text/javascript">
	var goUrlView = "/product/productView"; 		/* #-> */
	var goUrlInst = "/product/productReviewInst"; 		/* #-> */
	
	var form = $("form[name=form]");
	var formVo = $("form[name=formVo]");

	$("#btnSave").on("click", function(){
	   	form.attr("action", goUrlInst).submit();
	});
	
	$("#btnView").on("click", function(){
		formVo.attr("action", goUrlView).submit();
	});
	
	upload = function(objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {
		
//  		objName 과 seq 는 jsp 내에서 유일 하여야 함.
//  		memberProfileImage: 1
//  		memberImage: 2
//  		memberFile : 3

//  		uiType: 1 => 이미지형
//  		uiType: 2 => 파일형
//  		uiType: 3 => 프로필형

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
</script>
</body>
</html>