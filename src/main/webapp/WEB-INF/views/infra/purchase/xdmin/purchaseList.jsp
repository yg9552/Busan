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
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<script src="https://kit.fontawesome.com/144448c071.js" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link rel="stylesheet" href="../../../../../resources/assets/css/usercommon.css">

</head>
<body>
<form name="mypageForm" method="post">
<!-- userHeader s -->
			<%@include file="../../../common/xdmin/userHeader.jsp"%>
 <!-- userHeader e -->
 <!-- *Vo.jsp s -->
<%@include file="purchaseVo.jsp"%>		<!-- # -->
<!-- *Vo.jsp e -->
 

<div class="container mb-5">
	<h3 class="mb-5 mt-4 text-center">주문내역</h3>
	<div class="row align-items-center mb-3">
		<!-- side s -->
		<%@include file="../../../common/xdmin/myPageSide.jsp"%>
		<!-- side e -->
		<div class="col-9">
			<div class="row text-center border rounded p-2">
				<div class="col-4"><a href="#"><i class="fa-solid fa-truck fa-2x"></i><br>배송중</a></div>
				<div class="col-4"><a href="#"><i class="fa-solid fa-box-open fa-2x"></i><br>배송완료</a></div>
				<div class="col-4"><a href="#"><i class="fa-solid fa-repeat fa-2x"></i><br>교환/취소/반품</a></div>
				<div class="col-4 p-4 fs-3">0건</div>
				<div class="col-4 p-4 fs-3"><c:out value="${vo.totalRows }"></c:out>건</div>
				<div class="col-4 p-4 fs-3">0건</div>
			</div>
		</div>
	</div>
	<!-- 
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
				<input class="form-control" type="text" id="datepicker">
			</div>
			<div class="col-3">
				<input class="form-control" type="text" id="datepicker2">
			</div>
			<div class="col-1">
				<button type="button" class="btn btn-success">조회</button>
			</div>
		</div>
	</div>
	 -->
	<div class="row text-center w-75 m-auto">
		<c:choose>
			<c:when test="${fn:length(list) eq 0}">
				<div class="col-12 border rounded p-4">구매내역이 없습니다!</div>
			</c:when>
			<c:otherwise>
				<c:forEach items="${list }" var="list" varStatus="status">
					<div class="col-12">
						<div class="row border rounded mb-3">
							<div class="col-3">
								<img alt=".." src="../image/basict.png" style="width: 150px; height: 150px;">
							</div>
								<div class="col">
									<h4><c:out value="${list.product_name }"/></h4>
									<span><c:out value="${list.price }"/>원</span>
									 | <span>2022.07.21</span>
								</div>
							<div class="col-2">
								<span>배송완료</span>
								<button type="button" class="btn btn-sm btn-dark">리뷰작성하기</button>
							</div>
						</div>
						
					</div>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</div>
</div>
</form>
      <!-- userFooter s -->
			<%@include file="../../../common/xdmin/userFooter.jsp"%>
	  <!-- userFooter e -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script type="text/javascript">
const myModal = document.getElementById('myModal')
const myInput = document.getElementById('myInput')

myModal.addEventListener('shown.bs.modal', () => {
  myInput.focus()
})
</script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<!-- datepicker -->
<script>
   $(function() {
       //input을 datepicker로 선언
       $("#datepicker").datepicker({
           dateFormat: 'yy-mm-dd' //달력 날짜 형태
           ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
           ,showMonthAfterYear:true // 월- 년 순서가아닌 년도 - 월 순서
           ,changeYear: true //option값 년 선택 가능
           ,changeMonth: true //option값  월 선택 가능                
           ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
           ,buttonImageOnly: true //버튼 이미지만 깔끔하게 보이게함
           ,buttonText: "선택" //버튼 호버 텍스트              
           ,yearSuffix: "년" //달력의 년도 부분 뒤 텍스트
           ,monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 텍스트
           ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip
           ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 텍스트
           ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 Tooltip
           ,minDate: "-100y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
           ,maxDate: "+5y" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)
       	   ,yearRange: 'c-120:c+1'
       });
       
       $("#datepicker2").datepicker({
           dateFormat: 'yy-mm-dd' //달력 날짜 형태
           ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
           ,showMonthAfterYear:true // 월- 년 순서가아닌 년도 - 월 순서
           ,changeYear: true //option값 년 선택 가능
           ,changeMonth: true //option값  월 선택 가능                
           ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
           ,buttonImageOnly: true //버튼 이미지만 깔끔하게 보이게함
           ,buttonText: "선택" //버튼 호버 텍스트              
           ,yearSuffix: "년" //달력의 년도 부분 뒤 텍스트
           ,monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 텍스트
           ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip
           ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 텍스트
           ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 Tooltip
           ,minDate: "-100y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
           ,maxDate: "+5y" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)
       	   ,yearRange: 'c-120:c+1'
       });                    
       
       //초기값을 오늘 날짜로 설정해줘야 합니다.
       $('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)            
       $('#datepicker2').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)            
   });
</script>
</body>
</html>