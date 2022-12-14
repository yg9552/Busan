<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
		<form name="formList" method="post">
      	<c:choose>
      		<c:when test="${sessSeq eq null}">
				<nav class="navbar navbar-expand-lg mb-4">
				  <div class="container">
				    <a class="navbar-brand" href="/Main"><img src="../../../../../resources/image/lgo.png" alt="logo" width="210" height="80" class="d-inline-block align-text-top"></a>
				    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
				      <span class="navbar-toggler-icon"></span>
				    </button>
				    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
				      <div class="offcanvas-header">
				        <h5 class="offcanvas-title" id="offcanvasNavbarLabel">
				        	<a href="#"><i class="fa-solid fa-user-large"></i> 비회원</a>
				        </h5>
				        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
				      </div>
				      <div class="offcanvas-body">
				        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
				          <li class="nav-item">
				            <a class="nav-link" aria-current="page" href="/member/memberLogin">로그인</a>
				          </li>
				          <li class="nav-item">
				            <a class="nav-link" href="/member/memberReg">회원가입</a>
				          </li>
				          <li class="nav-item" style="font-size: 0.5rem;">
				            <a class="nav-link" href="#" data-bs-toggle="modal" data-bs-target="#exampleModal" role="button">
				            	<i class="fa-solid fa-magnifying-glass fa-3x"></i>
				            </a>
				            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
							  <div class="modal-dialog">
							    <div class="modal-content">
							      <div class="modal-header fs-4">
							      	<div class="row justify-content-center">
							      		<div class="col">
							      			<input type="hidden" value="2" name="shOption">
							      			<input type="search" id="shValue" name="shValue" value="<c:out value="${vo.shValue }"/>">
							      		</div>
							      		<div class="col">
							      			<button type="button" class="btn btn-success" id="btnSearch">검색</button>
							      		</div>
							      	</div>
							        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							      </div>
							    </div>
							  </div>
							</div>
				          </li>
				          <li class="nav-item" style="font-size: 0.5rem;">
				            <a class="nav-link" href="/member/memberLogin">
				            	<i class="fa-solid fa-cart-shopping fa-3x"></i>
				            </a>
				          </li>
				          <!-- 
				          <li class="nav-item" style="font-size: 0.5rem;">
				            <a class="nav-link" href="#">
				            	<i class="fa-solid fa-user fa-3x"></i></i>
				            </a>
				          </li>
				           -->
				        </ul>
				      </div>
				    </div>
				  </div>
				</nav>
				
				<div class="container mb-5">
					<nav class="navbar navbar-expand" style="background-color: #4595d6">
					    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDarkDropdown" aria-controls="navbarNavDarkDropdown" aria-expanded="false" aria-label="Toggle navigation">
					      <span class="navbar-toggler-icon"></span>
					    </button>
					    <div class="collapse navbar-collapse" id="navbarNavDarkDropdown">
					      <ul class="navbar-nav mx-auto">
					        <li class="nav-item dropdown me-4">
					          <a class="nav-link dropdown-toggle white" role="button" data-bs-toggle="dropdown" aria-expanded="false" id="goList">
					            신상품
					          </a>
					          <ul class="dropdown-menu dropdown-menu-dark">
					            <li><a class="dropdown-item" href="#">여성</a></li>
					            <li><a class="dropdown-item" href="#">남성</a></li>
					            <li><a class="dropdown-item" href="#">아동</a></li>
					            <li><a class="dropdown-item" href="#">신발</a></li>
					            <li><a class="dropdown-item" href="#">가방</a></li>
					            <li><a class="dropdown-item" href="#">ACC</a></li>
					          </ul>
					        </li>
					        <li class="nav-item dropdown me-4">
					          <a class="nav-link dropdown-toggle white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					            여성
					          </a>
					          <ul class="dropdown-menu">
					            <li><a class="dropdown-item" href="#">상의</a></li>
					            <li><a class="dropdown-item" href="#">티셔츠</a></li>
					            <li><a class="dropdown-item" href="#">하의</a></li>
					            <li><a class="dropdown-item" href="#">스커트</a></li>
					            <li><a class="dropdown-item" href="#">청바지</a></li>
					            <li><a class="dropdown-item" href="#">아우터</a></li>
					          </ul>
					        </li>
					        <li class="nav-item dropdown me-4">
					          <a class="nav-link dropdown-toggle white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					            남성
					          </a>
					          <ul class="dropdown-menu dropdown-menu-dark">
					            <li><a class="dropdown-item" href="#">상의</a></li>
					            <li><a class="dropdown-item" href="#">티셔츠</a></li>
					            <li><a class="dropdown-item" href="#">맨투맨</a></li>
					            <li><a class="dropdown-item" href="#">와이셔츠</a></li>
					            <li><a class="dropdown-item" href="#">피케셔츠</a></li>
					            <li><a class="dropdown-item" href="#">하의</a></li>
					            <li><a class="dropdown-item" href="#">슬랙스</a></li>
					            <li><a class="dropdown-item" href="#">청바지</a></li>
					            <li><a class="dropdown-item" href="#">아우터</a></li>
					          </ul>
					        </li>
					        <li class="nav-item dropdown me-4">
					          <a class="nav-link dropdown-toggle white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					            아동
					          </a>
					          <ul class="dropdown-menu">
					            <li><a class="dropdown-item" href="#">상의</a></li>
					            <li><a class="dropdown-item" href="#">하의</a></li>
					            <li><a class="dropdown-item" href="#">아우터</a></li>
					          </ul>
					        </li>
					        <li class="nav-item dropdown me-4">
					          <a class="nav-link dropdown-toggle white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					            신발
					          </a>
					          <ul class="dropdown-menu dropdown-menu-dark">
					            <li><a class="dropdown-item" href="#">구두</a></li>
					            <li><a class="dropdown-item" href="#">스니커즈</a></li>
					            <li><a class="dropdown-item" href="#">운동화</a></li>
					          </ul>
					        </li>
					        <li class="nav-item dropdown me-4">
					          <a class="nav-link dropdown-toggle white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					            가방
					          </a>
					          <ul class="dropdown-menu">
					            <li><a class="dropdown-item" href="#">백팩</a></li>
					            <li><a class="dropdown-item" href="#">숄더백</a></li>
					            <li><a class="dropdown-item" href="#">크로스백</a></li>
					            <li><a class="dropdown-item" href="#">클러치백</a></li>
					          </ul>
					        </li>
					        <li class="nav-item dropdown me-4">
					          <a class="nav-link dropdown-toggle white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					            ACC
					          </a>
					          <ul class="dropdown-menu dropdown-menu-dark">
					            <li><a class="dropdown-item" href="#">모자</a></li>
					            <li><a class="dropdown-item" href="#">반지</a></li>
					            <li><a class="dropdown-item" href="#">팔찌</a></li>
					            <li><a class="dropdown-item" href="#">목걸이</a></li>
					            <li><a class="dropdown-item" href="#">귀걸이</a></li>
					          </ul>
					        </li>
					      </ul>
					    </div>
					</nav>
				</div>
      		</c:when>
      		
      		<c:otherwise>
      			<nav class="navbar navbar-expand-lg mb-4">
				  <div class="container">
				    <a class="navbar-brand" href="/Main"><img src="../../../../../resources/image/lgo.png" alt="logo" width="210" height="80" class="d-inline-block align-text-top"></a>
				    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
				      <span class="navbar-toggler-icon"></span>
				    </button>
				    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
				      <div class="offcanvas-header">
				        <h5 class="offcanvas-title" id="offcanvasNavbarLabel">
				        	<a href="#"><i class="fa-solid fa-user-large"></i> <c:out value="${sessName }"/></a>
				        </h5>
				        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
				      </div>
				      <div class="offcanvas-body">
				        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
				          <li class="nav-item">
				            <a class="nav-link" aria-current="page" id="btnLogout">로그아웃</a>
				          </li>
				          <li class="nav-item" style="font-size: 0.5rem;">
				            <a class="nav-link" href="#" data-bs-toggle="modal" data-bs-target="#exampleModal" role="button">
				            	<i class="fa-solid fa-magnifying-glass fa-3x"></i>
				            </a>
				            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
							  <div class="modal-dialog">
							    <div class="modal-content">
							      <div class="modal-header fs-4">
							      	<div class="row justify-content-center">
							      		<div class="col">
							      			<input type="hidden" value="2" name="shOption">
							      			<input type="search" id="shValue" name="shValue" value="<c:out value="${vo.shValue }"/>">
							      		</div>
							      		<div class="col">
							      			<button type="button" class="btn btn-success" id="btnSearch">검색</button>
							      		</div>
							      	</div>
							        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							      </div>
							    </div>
							  </div>
							</div>
				          </li>
				          <li class="nav-item" style="font-size: 0.5rem;">
				            <a class="nav-link" href="javascript:goCartList(<c:out value="${sessSeq }"/>)">
				            	<i class="fa-solid fa-cart-shopping fa-3x"></i>
				            </a>
				          </li>
				          <li class="nav-item" style="font-size: 0.5rem;">
	            			<a class="nav-link" href="javascript:goMyPage(<c:out value="${sessSeq }"/>)">
				            	<i class="fa-solid fa-user fa-3x"></i></i>
			            	</a>
				          </li>
				        </ul>
				      </div>
				    </div>
				  </div>
				</nav>
				
				<div class="container mb-5">
					<nav class="navbar navbar-expand" style="background-color: #4595d6">
					    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDarkDropdown" aria-controls="navbarNavDarkDropdown" aria-expanded="false" aria-label="Toggle navigation">
					      <span class="navbar-toggler-icon"></span>
					    </button>
					    <div class="collapse navbar-collapse" id="navbarNavDarkDropdown">
					      <ul class="navbar-nav mx-auto">
					        <li class="nav-item dropdown me-4">
					          <a class="nav-link dropdown-toggle white" role="button" data-bs-toggle="dropdown" aria-expanded="false" id="goList">
					            신상품
					          </a>
					          <ul class="dropdown-menu dropdown-menu-dark">
					            <li><a class="dropdown-item" href="#">여성</a></li>
					            <li><a class="dropdown-item" href="#">남성</a></li>
					            <li><a class="dropdown-item" href="#">아동</a></li>
					            <li><a class="dropdown-item" href="#">신발</a></li>
					            <li><a class="dropdown-item" href="#">가방</a></li>
					            <li><a class="dropdown-item" href="#">ACC</a></li>
					          </ul>
					        </li>
					        <li class="nav-item dropdown me-4">
					          <a class="nav-link dropdown-toggle white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					            여성
					          </a>
					          <ul class="dropdown-menu">
					            <li><a class="dropdown-item" href="#">상의</a></li>
					            <li><a class="dropdown-item" href="#">티셔츠</a></li>
					            <li><a class="dropdown-item" href="#">하의</a></li>
					            <li><a class="dropdown-item" href="#">스커트</a></li>
					            <li><a class="dropdown-item" href="#">청바지</a></li>
					            <li><a class="dropdown-item" href="#">아우터</a></li>
					          </ul>
					        </li>
					        <li class="nav-item dropdown me-4">
					          <a class="nav-link dropdown-toggle white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					            남성
					          </a>
					          <ul class="dropdown-menu dropdown-menu-dark">
					            <li><a class="dropdown-item" href="#">상의</a></li>
					            <li><a class="dropdown-item" href="#">티셔츠</a></li>
					            <li><a class="dropdown-item" href="#">맨투맨</a></li>
					            <li><a class="dropdown-item" href="#">와이셔츠</a></li>
					            <li><a class="dropdown-item" href="#">피케셔츠</a></li>
					            <li><a class="dropdown-item" href="#">하의</a></li>
					            <li><a class="dropdown-item" href="#">슬랙스</a></li>
					            <li><a class="dropdown-item" href="#">청바지</a></li>
					            <li><a class="dropdown-item" href="#">아우터</a></li>
					          </ul>
					        </li>
					        <li class="nav-item dropdown me-4">
					          <a class="nav-link dropdown-toggle white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					            아동
					          </a>
					          <ul class="dropdown-menu">
					            <li><a class="dropdown-item" href="#">상의</a></li>
					            <li><a class="dropdown-item" href="#">하의</a></li>
					            <li><a class="dropdown-item" href="#">아우터</a></li>
					          </ul>
					        </li>
					        <li class="nav-item dropdown me-4">
					          <a class="nav-link dropdown-toggle white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					            신발
					          </a>
					          <ul class="dropdown-menu dropdown-menu-dark">
					            <li><a class="dropdown-item" href="#">구두</a></li>
					            <li><a class="dropdown-item" href="#">스니커즈</a></li>
					            <li><a class="dropdown-item" href="#">운동화</a></li>
					          </ul>
					        </li>
					        <li class="nav-item dropdown me-4">
					          <a class="nav-link dropdown-toggle white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					            가방
					          </a>
					          <ul class="dropdown-menu">
					            <li><a class="dropdown-item" href="#">백팩</a></li>
					            <li><a class="dropdown-item" href="#">숄더백</a></li>
					            <li><a class="dropdown-item" href="#">크로스백</a></li>
					            <li><a class="dropdown-item" href="#">클러치백</a></li>
					          </ul>
					        </li>
					        <li class="nav-item dropdown me-4">
					          <a class="nav-link dropdown-toggle white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					            ACC
					          </a>
					          <ul class="dropdown-menu dropdown-menu-dark">
					            <li><a class="dropdown-item" href="#">모자</a></li>
					            <li><a class="dropdown-item" href="#">반지</a></li>
					            <li><a class="dropdown-item" href="#">팔찌</a></li>
					            <li><a class="dropdown-item" href="#">목걸이</a></li>
					            <li><a class="dropdown-item" href="#">귀걸이</a></li>
					          </ul>
					        </li>
					      </ul>
					    </div>
					</nav>
				</div>
      		</c:otherwise>
      	</c:choose>
      	</form>
      	<a id="back-to-top" href="#" class="btn btn-primary back-to-top-css" role="button" data-toggle="tooltip" data-placement="left">
			<i class="fa-solid fa-arrow-up"></i>
		</a>
<script>
var goUrlMyPage = "/member/memberMyPage";
var goUrlMain = "/Main";
var goUrlProductList = "/product/productList";
var goUrlCartList = "/member/cartList";
var goUrlList = "/product/productList"; 		/* #-> */

var seq = $("input:hidden[name=memberSeq]");
var form2 = $("form[name=formList]");

/* $("#btnLogout").on("click", function(){
	$.ajax({
		async: true 
		,cache: false
		,type: "post" */
		/* ,dataType:"json" */
//		,url: "/member/logoutProc"
		/* ,data : $("#formLogout").serialize() */
/* 		,data: {}
		,success: function(response) {
			if(response.rt == "success") {
				location.href = goUrlMain;
			} else {
				localStorage.clear();
				location.href = goUrlMain;
				// by pass
			}
		}
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
	});
}); */

$("#btnLogout").on("click", function() {
	$.ajax({
		type: "post"
		,url: "/member/logoutProc"
		,data: {}
		,success : function(response) {
			if (response.rt == "success") {
				window.location.href = "/";
			} else {
				localStorage.clear();
				window.location.href = "/";
			}
		}
	});
});

$("#btnSearch").on("click", function(){
	form2.attr("action", goUrlList).submit();
});

$("#goList").on("click", function(){
	location.href = goUrlProductList;
});

$(".dropdown-item").on("click", function(){
	location.href = goUrlProductList;
});

goMyPage = function(keyValue) {
	seq.val(keyValue);
	form.attr("action", goUrlMyPage).submit();
}

goCartList = function() {
	form.attr("action", goUrlCartList).submit();
}

$(document).ready(function () {
    $(window).scroll(function () {
        if ($(this).scrollTop() > 50) {
            $('#back-to-top').fadeIn();
        } else {
            $('#back-to-top').fadeOut();
        }
    });
    // scroll body to 0px on click
    $('#back-to-top').click(function () {
        $('#back-to-top').tooltip('hide');
        $('body,html').animate({
            scrollTop: 0
        }, 800);
        return false;
    });

    $('#back-to-top').tooltip('show');

});

</script>
