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
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link rel="stylesheet" href="../../../../../resources/assets/css/usercommon.css">
</head>
<body>
	  <!-- userHeader s -->
			<%@include file="../../../common/xdmin/userHeader.jsp"%>
	  <!-- userHeader e -->
	  <form>
<!-- *Vo.jsp s -->
<%@include file="productVo.jsp"%>		<!-- #-> -->
<!-- *Vo.jsp e -->
<div class="container mb-5">
	<h3>주문결제</h3>
	<div class="row text-center mb-4 border">
		<div class="col-6 border p-2">상품명/옵션</div>
		<div class="col-1 border p-2">수량</div>
		<div class="col-1 border p-2">상품금액</div>
		<div class="col-1 border p-2">할인금액</div>
		<div class="col-1 border p-2">배송비</div>
		<div class="col-2 border p-2">총합계</div>
		<div class="col-6 p-2">
			<img alt="..." src="../image/26650739290.20220517095259.png" style="width: 100px; height: 100px">
			<span><c:out value="${item.product_name }"></c:out></span>
		</div>
		<div class="col-1 p-3 my-auto">1</div>
		<div class="col-1 p-3 my-auto"><c:out value="${item.price }"></c:out>원</div>
		<div class="col-1 my-auto p-3">0원</div>
		<div class="col-1 my-auto p-3">3000원</div>
		<div class="col-2 my-auto p-3">503,000</div>
	</div>
	<div class="row">
		<div class="col border">
			<h4 class="mb-3 mt-2">배송지정보</h4>
			<div class="row">
				<div class="col-4 mb-3">수령인</div>
				<div class="col-6">
					<input class="form-control form-control-sm" type="text" placeholder="" aria-label="수령인" value="홍길동">
				</div>
				<div class="col-4 mb-3">연락처</div>
				<div class="col-6">
					<input class="form-control form-control-sm" type="text" placeholder="" aria-label="연락처" value="01011112222">
				</div>
				<div class="col-4 mb-3">연락처2</div>
				<div class="col-6">
					<input class="form-control form-control-sm" type="text" placeholder="" aria-label="연락처2">
				</div>
				<div class="col-4 mb-3">배송지주소</div>
				<div class="col-6">
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1" checked>
					  <label class="form-check-label" for="inlineRadio1">1</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
					  <label class="form-check-label" for="inlineRadio2">2</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">
					  <label class="form-check-label" for="inlineRadio3">3</label>
					</div>
				</div>
				<div class="col-3 offset-4 mb-3">
					<input class="form-control form-control-sm" type="text" placeholder="" aria-label="우편번호">
				</div>
				<div class="col-4">
					<button class="btn btn-sm btn-outline-dark" type="button">주소찾기</button>
				</div>
				<div class="col-4 offset-4 mb-3">
					<input class="form-control form-control-sm" type="text" placeholder="" aria-label="주소">
				</div>
				<div class="col-4 mb-3">
					<input class="form-control form-control-sm" type="text" placeholder="" aria-label="상세주소">
				</div>
			</div>
			
			<h4 class="mb-3">결제수단</h4>
			<div class="row">
				<div class="col mb-3">
					<div class="form-check mb-5">
					  <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
					  <label class="form-check-label" for="exampleRadios1">
					    카드결제
					  </label>
					</div>
					<div class="form-check mb-5">
					  <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="option2">
					  <label class="form-check-label" for="exampleRadios2">
					    계좌이체
					  </label>
					</div>
					<div class="form-check">
					  <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios3" value="option3">
					  <label class="form-check-label" for="exampleRadios3">
					    일반결제
					  </label>
					</div>
				</div>
				<div class="col">
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlinecard" id="card1" value="option1" checked>
					  <label class="form-check-label" for="card1">1</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlinecard" id="card2" value="option2">
					  <label class="form-check-label" for="card2">2</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlinecard" id="card3" value="option3">
					  <label class="form-check-label" for="card3">3</label>
					</div>
				</div>
			</div>
		</div>
		<div class="col-4">
			<div class="card" style="width: 18rem;">
			  <div class="accordion" id="accordionExample">
				  <div class="accordion-item">
				    <h2 class="accordion-header" id="headingOne">
				      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
				        최종결제금액
				      </button>
				    </h2>
				    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
				      <div class="accordion-body">
				        <div class="row g-1">
				        	<div class="col-6">총금액</div>
				        	<div class="col-6">503,000원</div>
				        	<div class="col-6">할인금액</div>
				        	<div class="col-6">0원</div>
				        	<div class="col-6">배송비</div>
				        	<div class="col-6">3,000원</div>
				        </div>
				      </div>
				    </div>
				  </div>
	  		  </div>
			  <!-- <ul class="list-group list-group-flush">
			    <li class="list-group-item">An item</li>
			    <li class="list-group-item">A second item</li>
			    <li class="list-group-item">A third item</li>
			  </ul> -->
			  <div class="card-body">
			  	<div class="d-grid gap-2 mx-auto">
				  <a class="btn btn-primary" href="./ordercomplete.html" type="button">주문하기</a>
				</div>
			  </div>
			</div>
		</div>
	</div>
</div>
</form>



<!-- 
<footer class="container-fluid bg-light text-center p-2" style="clear: both;">
	<div>
		<a class="navbar-brand" href="../main/main.html"><img src="../image/lgo.png" alt="" width="100" height="40" class="d-inline-block mb-2"></a>
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
 -->
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