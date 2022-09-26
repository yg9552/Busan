<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg mb-4">
  <div class="container">
    <a class="navbar-brand" href="/"><img src="../../../../../resources/image/lgo.png" alt="logo" width="210" height="80" class="d-inline-block align-text-top"></a>
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
            <a class="nav-link" href="./mypageCart.html">
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