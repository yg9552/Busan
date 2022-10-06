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
    <!-- End Plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="../../../../../resources/assets/css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="../../../../../resources/assets/images/favicon.png" />
    <!-- <style type="text/css">
    	.fileRegiBtn label {

	display: inline-block; 

	padding: .5em .75em; 

	color: #ffffff; 

	font-size: inherit; 

	line-height: normal; 

	vertical-align: middle; 

	background-color: #FC7D01; 

	cursor: pointer; 

	border: 1px solid #ebebeb; 

	border-bottom-color: #e2e2e2; 

	border-radius: .25em;

}

/*파일선택시 선택된 파일명이 붙는것을 가려준다*/

.fileRegiBtn input[type="file"]{

	position: absolute; 

	width: 1px; 

	height: 1px; 

	padding: 0; 

	margin: -1px; 

	overflow: hidden; 

	clip:rect(0,0,0,0); 

	border: 0;

}
    </style>
    <style>
        ul.cvf_uploaded_files {list-style-type: none; margin: 20px 0 0 0; padding: 0;}
        ul.cvf_uploaded_files li {background-color: #fff; border: 1px solid #ccc; border-radius: 5px; float: left; margin: 20px 20px 0 0; padding: 2px; width: 150px; height: 150px; line-height: 150px; position: relative;}
        ul.cvf_uploaded_files li img.img-thumb {width: 150px; height: 150px;}
        ul.cvf_uploaded_files .ui-selected {background: red;}
        ul.cvf_uploaded_files .highlight {border: 1px dashed #000; width: 150px; background-color: #ccc; border-radius: 5px;}
        ul.cvf_uploaded_files .delete-btn {width: 24px; border: 0; position: absolute; top: -12px; right: -14px;}
        .bg-success {padding: 7px;}
    </style> -->
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
</style>
   <!--  <script type="text/javascript">
        jQuery(document).ready(function() {        
           
            var storedFiles = [];      
            //$('.cvf_order').hide();
           
            // Apply sort function 
            function cvf_reload_order() {
                var order = $('.cvf_uploaded_files').sortable('toArray', {attribute: 'item'});
                $('.cvf_hidden_field').val(order);
            }
           
            function cvf_add_order() {
                $('.cvf_uploaded_files li').each(function(n) {
                    $(this).attr('item', n);
                });
                console.log('test');
            }
           
           
            $(function() {
                $('.cvf_uploaded_files').sortable({
                    cursor: 'move',
                    placeholder: 'highlight',
                    start: function (event, ui) {
                        ui.item.toggleClass('highlight');
                    },
                    stop: function (event, ui) {
                        ui.item.toggleClass('highlight');
                    },
                    update: function () {
                        //cvf_reload_order();
                    },
                    create:function(){
                        var list = this;
                        resize = function(){
                            $(list).css('height','auto');
                            $(list).height($(list).height());
                        };
                        $(list).height($(list).height());
                        $(list).find('img').load(resize).error(resize);
                    }
                });
                $('.cvf_uploaded_files').disableSelection();
            });
                   
            $('body').on('change', '.user_picked_files', function() {
               
                var files = this.files;
                var i = 0;
                           
                for (i = 0; i < files.length; i++) {
                    var readImg = new FileReader();
                    var file = files[i];
                   
                    if (file.type.match('image.*')){
                        storedFiles.push(file);
                        readImg.onload = (function(file) {
                            return function(e) {
                                $('.cvf_uploaded_files').append(
                                "<li file = '" + file.name + "'>" +                                
                                    "<img class = 'img-thumb' src = '" + e.target.result + "' />" +
                                    "<a href = '#' class = 'cvf_delete_image' title = 'Cancel'><img class = 'delete-btn' src = 'delete-btn.png' /></a>" +
                                "</li>"
                                );     
                            };
                        })(file);
                        readImg.readAsDataURL(file);
                       
                    } else {
                        alert('the file '+ file.name + ' is not an image<br/>');
                    }
                   
                    if(files.length === (i+1)){
                        setTimeout(function(){
                            cvf_add_order();
                        }, 1000);
                    }
                }
            });
           
            // Delete Image from Queue
            $('body').on('click','a.cvf_delete_image',function(e){
                e.preventDefault();
                $(this).parent().remove('');       
               
                var file = $(this).parent().attr('file');
                for(var i = 0; i < storedFiles.length; i++) {
                    if(storedFiles[i].name == file) {
                        storedFiles.splice(i, 1);
                        break;
                    }
                }
               
                //cvf_reload_order();
               
            });
                   
            // AJAX Upload
            $('body').on('click', '.cvf_upload_btn', function(e){
               
                e.preventDefault();
                cvf_reload_order();
               
                //$(".cvf_uploaded_files").html('<p><img src = "loading.gif" class = "loader" /></p>');
                var data = new FormData();
               
                var items_array = $('.cvf_hidden_field').val();
                var items = items_array.split(',');

                for (var i in items){
                    var item_number = items[i];
                    data.append('files' + i, storedFiles[item_number]);
                }
                   
                $.ajax({
                    url: 'upload.php',
                    type: 'POST',
                    contentType: false,
                    data: data,
                    processData: false,
                    cache: false,
                    success: function(response, textStatus, jqXHR) {
                        //$(".cvf_uploaded_files").html('');                                               
                        //bootbox.alert('<br /><p class = "bg-success">File(s) uploaded successfully.</p>');
                        alert(jqXHR.responseText);
                    }
                });
               
            });        

        });
    </script> -->
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
                    <form autocomplete="off" id="form" name="form" method="post">
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
	                    
	                    <div class="form-group">
							<label for="fileInput">사진첨부</label>
							<input id="fileInput" filestyle="" multiple="multiple" type="file" data-class-button="btn btn-default" data-class-input="form-control" data-button-text="" data-icon-name="fa fa-upload" class="form-control" tabindex="-1" style="position: absolute; clip: rect(0px 0px 0px 0px);">
							<div class="bootstrap-filestyle input-group">
								<input type="text" id="userfile" class="form-control" name="userfile">
								<span class="group-span-filestyle input-group-btn" tabindex="0">
									<label for="fileInput" class="btn btn-default">
										<span class="glyphicon fa fa-upload"></span>
									</label>
								</span>
							</div>
						</div>
						<!-- 
						파일등록

						<div class="form-group" style="margin: 8px 0 8px;">
						
						<input id="fileName" class="form-control" value="파일선택" disabled="disabled">
						
								<div class="fileRegiBtn">
						
								<label for="myFileUp">파일등록하기</label>
						
								<input type="file" id="myFileUp">
						
						</div>
						
						</div>
						
						커버이미지 들어오는 부분 (임시로 이미지를 넣어줬다)
						
						<div class="selectCover" style="padding-left: 0;">
						
						 	<img id="cover" style="width: 182px; height: 268px;"/>
						
						 </div>
						 
						 <div class = "container">
					            <div class = "form-group">
					                <label>이미지첨부</label>
					                
					                <input type = "file" name = "upload" multiple = "multiple" class = "form-control user_picked_files" />                 
					            </div>                     
					            <div class = "form-group cvf_order">                           
					                <label>미리보기</label>                               
					                <input type = "text" class = "form-control cvf_hidden_field" value = "" />   
					            </div>                     
					            <ul class = "cvf_uploaded_files"></ul>
					    </div>
	                     -->
	                    <!-- <input style="display: block;" type="file" id="inputMultipleImage" multiple> -->
	                    
	                    <!-- 이미지 들어오는 부분 -->
						<div id="multipleContainer"></div>

<script type="text/javascript">
/**
 * 멀티파일 업로드
 */
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
</script>
	                    
                      	<div class="row">
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
	        	   	form.attr("action", goUrlInst).submit();
	        	}); 
	        	
	        	$("#btnList").on("click", function(){
		    		formVo.attr("action", goUrlList).submit();
		    	});
	        	
              </script>
              <script type="text/javascript">
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
				</script>
              
				<script type="text/javascript">
				function readURL(input) {

			    	console.log("버튼클릭함1");

			        if (input.files && input.files[0]) {

			        var reader = new FileReader();

			        reader.onload = function (e) {

			                $('#cover').attr('src', e.target.result);        //cover src로 붙여지고

			                $('#fileName').val(input.files[0].name);    //파일선택 form으로 파일명이 들어온다

			            }

			          reader.readAsDataURL(input.files[0]);

			        }

			    }

			    

		$("#myFileUp").change(function(){

			        readURL(this);

			        console.log("이미지 바뀜?");

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
  </body>
</html>