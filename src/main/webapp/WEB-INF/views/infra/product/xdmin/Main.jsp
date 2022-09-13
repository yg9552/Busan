<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>MAIN</title>
	<script src="https://kit.fontawesome.com/144448c071.js" crossorigin="anonymous"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<style type="text/css">
	
		ul.navbar-nav li.dropdown:hover > ul.dropdown-menu {
		display: block; 
		margin: 0;
		}

		a {
			text-decoration: none;
			color: black;
		}
		.white {
			color: white;
		}
		.white:hover {
			color: #f4e638
		}
		.clearboth {
			clear: both;
		}
	</style>
</head>
<body>

<nav class="navbar navbar-expand-lg mb-4">
  <div class="container">
    <a class="navbar-brand" href="#"><img src="../../../../../resources/image/lgo.png" alt="logo" width="210" height="80" class="d-inline-block align-text-top"></a>
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
            <a class="nav-link" aria-current="page" href="#">로그아웃</a>
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
			      			<input type="search" name="">
			      		</div>
			      		<div class="col">
			      			<button type="button" class="btn btn-success">검색</button>
			      		</div>
			      	</div>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			      </div>
			    </div>
			  </div>
			</div>
          </li>
          <li class="nav-item" style="font-size: 0.5rem;">
            <a class="nav-link" href="../member/mypageCart.html">
            	<i class="fa-solid fa-cart-shopping fa-3x"></i>
            </a>
          </li>
          <li class="nav-item" style="font-size: 0.5rem;">
            <a class="nav-link" href="../member/mypage.html">
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
	          <a class="nav-link dropdown-toggle white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
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

<div class="container mb-5">
	<div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
	  <div class="carousel-inner" style="width: 1296px; height: 600px;">
	    <div class="carousel-item active">
	      <img src="../../../../../resources/image/bg1.png" class="d-block w-100" alt="...">
	    </div>
	    <div class="carousel-item">
	      <img src="../../../../../resources/image/bg2.png" class="d-block w-100" alt="...">
	    </div>
	    <div class="carousel-item">
	      <img src="../../../../../resources/image/bg3.png" class="d-block w-100" alt="...">
	    </div>
	  </div>
	</div>
</div>

<div class="container text-center">
	<h3 class="mb-4">BEST상품</h3>
	<div class="row mb-3 mx-auto">
			<div class="col-3">
				<a href="../prod/prodView.html">
					<div class="card" style="width: 18rem;">
	  					<img src="../../../../../resources/image/0220416093432.jpg" class="card-img-top" alt="...">
	  					<div class="card-body">
	    					<h5 class="card-title">피케티셔츠</h5>
	  					</div>
					  	<ul class="list-group list-group-flush">
						    <li class="list-group-item">100,000원</li>
						    <li class="list-group-item text-danger">할인가: 80,000</li>
						    <li class="list-group-item">무료배송</li>
						    <li class="list-group-item">적립금: 100원</li>
					  	</ul>
					</div>
				</a>
			</div>
			<div class="col-3">
				<a href="#">
					<div class="card" style="width: 18rem;">
	  					<img src="../../../../../resources/image/basict.png" class="card-img-top" alt="...">
	  					<div class="card-body">
	    					<h5 class="card-title">BASIC T-SHIRT</h5>
	  					</div>
					  	<ul class="list-group list-group-flush">
						    <li class="list-group-item">10,000원</li>
						    <li class="list-group-item text-danger">할인가: 8,000원</li>
						    <li class="list-group-item">무료배송</li>
						    <li class="list-group-item">적립금: 10원</li>
					  	</ul>
					</div>
				</a>
			</div>
			<div class="col-3">
				<a href="../prod/prodView2.html">
					<div class="card" style="width: 18rem;">
	  					<img src="../../../../../resources/image/26650739290.20220517095259.png" class="card-img-top" alt="...">
	  					<div class="card-body">
	    					<h5 class="card-title">더블 폭스헤드 반팔 티셔츠</h5>
	  					</div>
					  	<ul class="list-group list-group-flush">
						    <li class="list-group-item">500,000원</li>
						    <li class="list-group-item text-danger">신상품</li>
						    <li class="list-group-item">배송비 : 3000원</li>
						    <li class="list-group-item">적립금: 500원</li>
					  	</ul>
					</div>
				</a>
			</div>
			<div class="col-3">
				<a href="#">
					<div class="card" style="width: 18rem;">
	  					<img src="../../../../../resources/image/coffee-g8719fce7c_640.png" class="card-img-top" alt="...">
	  					<div class="card-body">
	    					<h5 class="card-title">상품명</h5>
	  					</div>
					  	<ul class="list-group list-group-flush">
						    <li class="list-group-item">상품가격</li>
						    <li class="list-group-item">배송정보</li>
						    <li class="list-group-item">원산지</li>
						    <li class="list-group-item">적립금</li>
					  	</ul>
					</div>
				</a>
			</div>
		</div>
</div>

<footer class="container-fluid bg-light text-center p-2" style="clear: both;">
	<div>
		<a class="navbar-brand" href="../main/main.html"><img src="../../../../../resources/image/lgo.png" alt="" width="100" height="40" class="d-inline-block mb-2"></a>
	</div>
	<span class="fs-6 fw-light">회사명 : OOO | 대표자 : OOO | 사업자등록번호 : 000 | 통신판매신고번호 : 000 | 개인정보관리책임자 : OOO | 전화번호 : 000</span><br>
	<ul class="list-inline">
		<li class="list-inline-item"><a href="https://www.navercorp.com" data-clk="intronhn">회사소개</a></li>
		<li class="list-inline-item"><a href="https://recruit.navercorp.com/" data-clk="recruit">인재채용</a></li>
		<li class="list-inline-item"><a href="https://www.navercorp.com/naver/proposalGuide" data-clk="contact">제휴제안</a></li>
		<li class="list-inline-item"><a href="/policy/service.html" data-clk="service">이용약관</a></li>
		<li class="list-inline-item"><a href="/policy/privacy.html" data-clk="privacy"><strong>개인정보처리방침</strong></a></li>
		<li class="list-inline-item"><a href="/policy/youthpolicy.html" data-clk="youth">청소년보호정책</a></li>
		<li class="list-inline-item"><a href="/policy/spamcheck.html" data-clk="policy">정책</a></li>
		<li class="list-inline-item"><a href="https://help.naver.com/" data-clk="helpcenter">고객센터</a></li>
	</ul>
	<span class="m-auto"><i class="fa-solid fa-copyright"></i> copyright</span>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script type="text/javascript">
const myModal = document.getElementById('myModal')
const myInput = document.getElementById('myInput')

myModal.addEventListener('shown.bs.modal', () => {
  myInput.focus()
})
</script>
</body>
</html>