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
	<title>주문내역</title>
	<script src="https://kit.fontawesome.com/144448c071.js" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link rel="stylesheet" href="../../../../../resources/assets/css/usercommon.css">

</head>
<body>
<!-- userHeader s -->
			<%@include file="../../../common/xdmin/userHeader.jsp"%>
 <!-- userHeader e -->

<div class="container mb-5">
	<h3 class="mb-5 mt-4 text-center">주문내역</h3>
	<div class="row align-items-center mb-3">
		<div class="col-3">
			<div class="card">
			  <div class="card-body p-4 text-center">
			    <h5 class="card-title"><c:out value="${sessName }"/>님은</h5>
			    <h5 class="card-title text-danger">VIP</h5>
			    <p class="card-text">입니다</p>
			  </div>
			  <ul class="list-group list-group-flush text-center">
			    <li class="list-group-item"><a href="javascript:goView(<c:out value="${sessSeq }"/>)">개인정보수정</a></li>
			    <li class="list-group-item"><a href="./mypageOrderedList.html">주문내역</a></li>
			    <li class="list-group-item"><a href="./mypageCart.html">장바구니</a></li>
			  </ul>
			</div>
		</div>
		<div class="col-9">
			<div class="row text-center border rounded p-2">
				<div class="col-4"><a href="#"><i class="fa-solid fa-truck fa-2x"></i><br>배송중</a></div>
				<div class="col-4"><a href="#"><i class="fa-solid fa-box-open fa-2x"></i><br>배송완료</a></div>
				<div class="col-4"><a href="#"><i class="fa-solid fa-repeat fa-2x"></i><br>교환/취소/반품</a></div>
				<div class="col-4 p-4 fs-3">0건</div>
				<div class="col-4 p-4 fs-3">1건</div>
				<div class="col-4 p-4 fs-3">0건</div>
			</div>
		</div>
	</div>
	
	<div class="text-center mb-3">
		<div class="row">
			<div class="col">
				<div class="btn-group" role="group" aria-label="Basic outlined example">
				  <button type="button" class="btn btn-outline-primary">1월</button>
				  <button type="button" class="btn btn-outline-primary">2월</button>
				  <button type="button" class="btn btn-outline-primary">3월</button>
				  <button type="button" class="btn btn-outline-primary">4월</button>
				  <button type="button" class="btn btn-outline-primary">5월</button>
				  <button type="button" class="btn btn-outline-primary">6월</button>
				  <button type="button" class="btn btn-outline-primary">7월</button>
				  <button type="button" class="btn btn-outline-primary">8월</button>
				</div>
			</div>
			<div class="col-3">
				<input class="form-control" type="date">
			</div>
			<div class="col-3">
				<input class="form-control" type="date">
			</div>
			<div class="col-1">
				<button type="button" class="btn btn-success">조회</button>
			</div>
		</div>
	</div>
	<div class="row text-center w-75 m-auto">
		<c:forEach items="${list}" var="list" varStatus="status">
			<div class="col-12">
				<div class="row border rounded mb-3">
					<div class="col-3">
						<img alt=".." src="../image/basict.png" style="width: 150px; height: 150px;">
					</div>
						<div class="col my-auto">
							<h4><c:out value="${list.product_name }"/></h4>
							<span><c:out value="${list.price }"/>원</span>
							 | <span>2022.07.21</span>
						</div>
					<div class="col-3 my-auto">
						<span>배송완료</span>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
	
	
</div>

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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script type="text/javascript">
const myModal = document.getElementById('myModal')
const myInput = document.getElementById('myInput')

myModal.addEventListener('shown.bs.modal', () => {
  myInput.focus()
})
</script>
<script type="text/javascript">
	var goUrlList = "/member/memberList"; 			/* #-> */
  	var goUrlInst = "/member/memberInst"; 			/* #-> */
  	var goUrlUpdt = "/member/memberUpdt";			/* #-> */
  	var goUrlUele = "/member/memberUele";			/* #-> */
  	var goUrlDele = "/member/memberDele";			/* #-> */
  	var goUrlForm = "/member/memberForm";			/* #-> */
  	var goUrlView = "/member/memberMod";			/* #-> */
  	
  	var seq = $("input:hidden[name=seq]");
  	var form = $("form[name=formList]");
  	
  	goView = function(keyValue) {
		seq.val(keyValue);
		form.attr("action", goUrlView).submit();
	}
</script>
</body>
</html>