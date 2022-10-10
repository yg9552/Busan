<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fff4722d1b0684553d2d53d2ea3f7fe9&libraries=services"></script>
	<link rel="stylesheet" href="../../../../../resources/assets/css/usercommon.css">
</head>
<body>
<form name="purchaseform" method="post" target="_parent">
<!-- *Vo.jsp s -->
<%@include file="productVo.jsp"%>		<!-- #-> -->
<!-- *Vo.jsp e -->
	  <!-- userHeader s -->
			<%@include file="../../../common/xdmin/userHeader.jsp"%>
	  <!-- userHeader e -->


<div class="container mb-5">
	<h3>주문결제</h3>
	<div class="row text-center mb-4 border">
		<div class="col-5 border p-2">상품명/옵션</div>
		<div class="col-1 border p-2">수량</div>
		<div class="col-2 border p-2">상품금액</div>
		<div class="col-1 border p-2">할인율</div>
		<div class="col-1 border p-2">배송비</div>
		<div class="col-2 border p-2">총합계</div>
		<div class="col-5 p-2">
			<img alt="..." src="../image/26650739290.20220517095259.png" style="width: 100px; height: 100px">
			<span><c:out value="${itemp.product_name }"></c:out></span>
		</div>
		<div class="col-1 p-3 my-auto">
			<input class="form-control text-center border border-white" type="number" placeholder="1">
		</div>
		<div class="col-2 p-3 my-auto">
			<fmt:formatNumber value="${itemp.price}" pattern="#,###"/>원
		</div>
		<div class="col-1 my-auto p-3">
			<c:out value="${itemp.discount_percent }"></c:out>%
		</div>
		<div class="col-1 my-auto p-3">
			<fmt:formatNumber value="${itemp.deliverycost }" pattern="#,###"/>원
		</div>
		<div class="col-2 my-auto p-3"><fmt:formatNumber value="${itemp.totalprice }" pattern="#,###"/>원</div>
	</div>
	<div class="row">
		<div class="col border">
			<h4 class="mb-3 mt-2">배송지정보</h4>
			<div class="row">
				<div class="col-4 mb-3">수령인</div>
				<div class="col-6">
					<input class="form-control form-control-sm" type="text" placeholder="" aria-label="수령인" value="<c:if test="${itemm.memberSeq eq sessSeq}"><c:out value="${itemm.nm }"></c:out></c:if>">
				</div>
			</div>	
			<div class="row">	
				<div class="col-4 mb-3">연락처</div>
				<div class="col-8">
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="telOptions" id="tel1" value="휴대폰" checked>
					  <label class="form-check-label" for="tel1">휴대폰</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name=telOptions id="tel2" value="집">
					  <label class="form-check-label" for="tel2">집</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="telOptions" id="tel3" value="회사">
					  <label class="form-check-label" for="tel3">회사</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="telOptions" id="tel4" value="직접입력">
					  <label class="form-check-label" for="tel4">직접입력</label>
					</div>
				</div>
			</div>
			<div class="row" id="tel1list">	
				<c:forEach items="${listt }" var="listt" varStatus="status">
					<c:if test="${listt.memberSeq eq sessSeq && listt.div_tel eq 1 }">
						<div class="col-5 offset-4">
							<input class="form-control form-control-sm" type="text" aria-label="연락처" value="<c:out value="${listt.tel }"/>">
						</div>
					</c:if>
				</c:forEach>
			</div>
			<div class="row" id="tel2list">	
				<c:forEach items="${listt }" var="listt" varStatus="status">
					<c:if test="${listt.memberSeq eq sessSeq && listt.div_tel eq 2 }">
						<div class="col-5 offset-4">
							<input class="form-control form-control-sm" type="text" aria-label="연락처" value="<c:out value="${listt.tel }"/>">
						</div>
					</c:if>
				</c:forEach>
			</div>
			<div class="row" id="tel3list">	
				<c:forEach items="${listt }" var="listt" varStatus="status">
					<c:if test="${listt.memberSeq eq sessSeq && listt.div_tel eq 3 }">
						<div class="col-5 offset-4">
							<input class="form-control form-control-sm" type="text" aria-label="연락처" value="<c:out value="${listt.tel }"/>">
						</div>
					</c:if>
				</c:forEach>
			</div>
			<div class="row" id="tel4list">	
				<div class="col-5 offset-4">
					<input class="form-control form-control-sm" type="text" aria-label="연락처">
				</div>
			</div>
			
			<div class="row mt-3 mb-3">
				<div class="col-4">배송지주소</div>
				<div class="col-8">
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="addrOptions" id="addr1" value="기본배송지" checked>
					  <label class="form-check-label" for="addr1">기본배송지</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name=addrOptions id="addr2" value="회사">
					  <label class="form-check-label" for="addr2">회사</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="addrOptions" id="addr3" value="기타배송지">
					  <label class="form-check-label" for="addr3">기타배송지</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="addrOptions" id="addr4" value="직접입력">
					  <label class="form-check-label" for="addr4">직접입력</label>
					</div>
				</div>
			</div>
			<div class="row" id="addr1list">
				<c:forEach items="${listma }" var="listma" varStatus="status">
					<c:if test="${listma.memberSeq eq sessSeq && listma.addr_defaultNy eq 1 }">
						<div class="col-3 offset-4 mb-3">
							<input class="form-control form-control-sm bg-white" type="text" name="zip" aria-label="우편번호" value="<c:out value="${listma.zip }"/>" readonly>
							<input class="form-control form-control-sm" type="hidden" name="maSeq" value="<c:out value="${listma.maSeq }"/>">
						</div>
						<div class="col-4 offset-4 mb-3">
							<input class="form-control form-control-sm bg-white" type="text" name="addr" aria-label="주소" value="<c:out value="${listma.addr }"/>" readonly>
						</div>
						<div class="col-4 mb-3">
							<input class="form-control form-control-sm bg-white" type="text" name="addr_detail" aria-label="상세주소" value="<c:out value="${listma.addr_detail }"/>" readonly>
						</div>
					</c:if>
				</c:forEach>
			</div>
				
			<div class="row" id="addr2list">
				<c:forEach items="${listma }" var="listma" varStatus="status">
					<c:if test="${listma.memberSeq eq sessSeq && listma.div_addr eq 2 }">
						<div class="col-3 offset-4 mb-3">
							<input class="form-control form-control-sm bg-white" type="text" name="zip" aria-label="우편번호" value="<c:out value="${listma.zip }"/>" readonly>
							<input class="form-control form-control-sm" type="hidden" name="maSeq" value="<c:out value="${listma.maSeq }"/>">
						</div>
						<div class="col-4 offset-4 mb-3">
							<input class="form-control form-control-sm bg-white" type="text" name="addr" aria-label="주소" value="<c:out value="${listma.addr }"/>">
						</div>
						<div class="col-4 mb-3">
							<input class="form-control form-control-sm bg-white" type="text" name="addr_detail" aria-label="상세주소" value="<c:out value="${listma.addr_detail }"/>">
						</div>
					</c:if>
				</c:forEach>
			</div>
				
			<div class="row" id="addr3list">
				<c:forEach items="${listma }" var="listma" varStatus="status">
					<c:if test="${listma.memberSeq eq sessSeq && listma.div_addr eq 3 }">
						<div class="col-3 offset-4 mb-3">
							<input class="form-control form-control-sm bg-white" type="text" name="zip" aria-label="우편번호" value="<c:out value="${listma.zip }"/>" readonly>
							<input class="form-control form-control-sm" type="hidden" name="maSeq" value="<c:out value="${listma.maSeq }"/>">
						</div>
						<div class="col-4 offset-4 mb-3">
							<input class="form-control form-control-sm bg-white" type="text" name="addr" aria-label="주소" value="<c:out value="${listma.addr }"/>" readonly>
						</div>
						<div class="col-4 mb-3">
							<input class="form-control form-control-sm bg-white" type="text" name="addr_detail" aria-label="상세주소" value="<c:out value="${listma.addr_detail }"/>" readonly>
						</div>
					</c:if>
				</c:forEach>
			</div>
			
			<div class="row" id="addr4list">
				<div class="col-2 offset-4 mb-3">
					<input class="form-control form-control-sm bg-white" type="text" name="zip" id="sample4_postcode" aria-label="우편번호">
				</div>
				<div class="col-2">
					<button class="btn btn-sm btn-outline-dark" type="button" onclick="sample4_execDaumPostcode()">주소찾기</button>
				</div>
				<div class="col-4">
					<input class="form-control form-control-sm bg-white" type="text" id="sample4_extraAddress">
				</div>
				<div class="col-4 offset-4 mb-3">
					<input class="form-control form-control-sm bg-white" type="text" id="sample4_roadAddress" name="addr" aria-label="주소">
				</div>
				<div class="col-4 mb-3">
					<input class="form-control form-control-sm bg-white" type="text" id="sample4_jibunAddress" name="addr_detail" aria-label="지번주소">
					<input type="hidden" class="form-control" id="guide" name="guide">
				</div>
				<div class="col offset-4 mb-3">
					상세주소
					<input class="form-control form-control-sm bg-white" type="text" id="sample4_detailAddress" name="addr_detail" aria-label="상세주소">
				</div>
			</div>
			
			
			<h4 class="mb-3">결제수단</h4>
			<div class="row">
				<div class="col-4 mb-3">
					<div class="form-check mb-5">
					  <input class="form-check-input" type="radio" name="payOptions" id="payOptions1" value="간편결제" checked>
					  <label class="form-check-label" for="payOptions1">
					    간편결제
					  </label>
					</div>
					<div class="form-check mb-5">
					  <input class="form-check-input" type="radio" name="payOptions" id="payOptions2" value="계좌이체">
					  <label class="form-check-label" for="payOptions2">
					    계좌이체
					  </label>
					</div>
					<div class="form-check">
					  <input class="form-check-input" type="radio" name="payOptions" id="payOptions3" value="일반결제">
					  <label class="form-check-label" for="payOptions3">
					    일반결제
					  </label>
					</div>
				</div>
				<div class="col-8" id="pay1">
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="cardOptions" id="card1" value="등록카드1" checked>
					  <label class="form-check-label" for="card1">등록카드1</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name=cardOptions id="card2" value="등록카드2">
					  <label class="form-check-label" for="card2">등록카드2</label>
					</div>
					<div class="form-check form-check-inline mb-3">
					  <input class="form-check-input" type="radio" name="cardOptions" id="card3" value="등록카드3">
					  <label class="form-check-label" for="card3">등록카드3</label>
					</div>
					
					<c:forEach items="${listc }" var="listc" varStatus="status">
						<c:if test="${listc.memberSeq eq sessSeq && listc.div_memberCard eq 1}">
							<div class="col-4 mb-3" id="card1list">
								<input class="form-control form-control-sm bg-white" type="text" name="card" value="<c:out value="${listc.card }"/>" readonly style="width: 150px;">
							</div>
						</c:if>
					</c:forEach>
					<c:forEach items="${listc }" var="listc" varStatus="status">
						<c:if test="${listc.memberSeq eq sessSeq && listc.div_memberCard eq 2}">
							<div class="col-4 mb-3" id="card2list">
								<input class="form-control form-control-sm bg-white" type="text" name="card" value="<c:out value="${listc.card }"/>" readonly style="width: 150px;">
							</div>
						</c:if>
					</c:forEach>
					<c:forEach items="${listc }" var="listc" varStatus="status">
						<c:if test="${listc.memberSeq eq sessSeq && listc.div_memberCard eq 3}">
							<div class="col-4 mb-3" id="card3list">
								<input class="form-control form-control-sm bg-white" type="text" name="card" value="<c:out value="${listc.card }"/>" readonly style="width: 150px;">
							</div>
						</c:if>
					</c:forEach>
				</div>
				<div class="col-8" id="pay2">
					<div class="mb-3 row">
					    <div class="input-group mb-3">
						  <span class="input-group-text" id="inputGroup-sizing-default">입금액</span>
						  <input type="text" class="form-control" value="<fmt:formatNumber value="${itemp.totalprice }" pattern="#,###"/>원">
						</div>
					    <div class="input-group mb-3">
						  <label class="input-group-text" for="inputGroupSelect01">입금은행</label>
						  <select class="form-select" id="inputGroupSelect01">
						    <option selected>선택</option>
						    <option value="1">신한은행</option>
						    <option value="2">국민은행</option>
						    <option value="3">우리은행</option>
						  </select>
						</div>
						<div class="input-group mb-3">
						  <span class="input-group-text" id="inputGroup-sizing-default">예금주명</span>
						  <input type="text" class="form-control" value="Blue Banana">
						</div>
					</div>
				</div>
				<div class="col-8" id="pay3"></div>
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
				        	<div class="col-6"><c:out value="${itemp.totalprice }"></c:out></div>
				        	<div class="col-6">할인율</div>
				        	<div class="col-6"><c:out value="${itemp.discount_percent }"></c:out>%</div>
				        	<div class="col-6">배송비</div>
				        	<div class="col-6"><c:out value="${itemp.deliverycost }"></c:out>원</div>
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
				  <a class="btn btn-primary" target="_parent" id="btnOrder" href="javascript:goPurchaseKsnet(<c:out value="${itemp.productSeq }"/>)">주문하기</a>
				</div>
			  </div>
			</div>
		</div>
		<script type="text/javascript">
		var goUrlPurchaseKsnet = "/product/purchaseKsnet";
		var seq1 = $("input:hidden[name=productSeq]");
		var seq = $("input:hidden[name=memberSeq]");
		var form = $("form[name=purchaseform]");
	
		goPurchaseKsnet = function(keyValue) {
			seq1.val(keyValue);
			form.attr("action", goUrlPurchaseKsnet).submit();
		}
		</script>
	</div>
</div>
</form>


<script type="text/javascript">
const myModal = document.getElementById('myModal')
const myInput = document.getElementById('myInput')

myModal.addEventListener('shown.bs.modal', () => {
  myInput.focus()
})


</script>
<script type="text/javascript">

$(document).ready(function(){
	
    $('#addr2list').hide(); // 초깃값 설정
    $('#addr3list').hide();	// 초깃값 설정
    $('#addr4list').hide();	// 초깃값 설정
    $('#tel2list').hide();	// 초깃값 설정
    $('#tel3list').hide();	// 초깃값 설정
    $('#tel4list').hide();	// 초깃값 설정
    $('#card2list').hide();	// 초깃값 설정
    $('#card3list').hide();	// 초깃값 설정
    $('#pay2').hide();	// 초깃값 설정
    $('#pay3').hide();	// 초깃값 설정
	
    //전화번호
	$("input[name='telOptions']").change(function(){
		// 기본배송지 선택 시.
		if($("input[name='telOptions']:checked").val() == '휴대폰'){
			$('#tel2list').hide();
			$('#tel3list').hide();
			$('#tel4list').hide();
			$('#tel1list').show();
		}	
		// 회사 선택 시.
		else if($("input[name='telOptions']:checked").val() == '집'){
			$('#tel1list').hide();
			$('#tel3list').hide();
			$('#tel4list').hide();
			$('#tel2list').show();
		}
		// 기타배송지 선택 시.
		else if($("input[name='telOptions']:checked").val() == '회사'){
			$('#tel1list').hide();
			$('#tel2list').hide();
			$('#tel4list').hide();
			$('#tel3list').show();
		}
		// 직접입력 선택 시.
		else if($("input[name='telOptions']:checked").val() == '직접입력'){
			$('#tel1list').hide();
			$('#tel2list').hide();
			$('#tel3list').hide();
			$('#tel4list').show();
		}
	});
    
    //배송지
	$("input[name='addrOptions']").change(function(){
		// 기본배송지 선택 시.
		if($("input[name='addrOptions']:checked").val() == '기본배송지'){
			$('#addr2list').hide();
			$('#addr3list').hide();
			$('#addr4list').hide();
			$('#addr1list').show();
		}	
		// 회사 선택 시.
		else if($("input[name='addrOptions']:checked").val() == '회사'){
			$('#addr1list').hide();
			$('#addr3list').hide();
			$('#addr4list').hide();
			$('#addr2list').show();
		}
		// 기타배송지 선택 시.
		else if($("input[name='addrOptions']:checked").val() == '기타배송지'){
			$('#addr1list').hide();
			$('#addr2list').hide();
			$('#addr4list').hide();
			$('#addr3list').show();
		}
		// 직접입력 선택 시.
		else if($("input[name='addrOptions']:checked").val() == '직접입력'){
			$('#addr1list').hide();
			$('#addr2list').hide();
			$('#addr3list').hide();
			$('#addr4list').show();
		}
	});
    
    //카드
	$("input[name='cardOptions']").change(function(){
		// 등록카드1 선택 시.
		if($("input[name='cardOptions']:checked").val() == '등록카드1'){
			$('#card2list').hide();
			$('#card3list').hide();
			$('#card1list').show();
		}	
		// 등록카드2 선택 시.
		else if($("input[name='cardOptions']:checked").val() == '등록카드2'){
			$('#card1list').hide();
			$('#card3list').hide();
			$('#card2list').show();
		}
		// 등록카드3 선택 시.
		else if($("input[name='cardOptions']:checked").val() == '등록카드3'){
			$('#card1list').hide();
			$('#card2list').hide();
			$('#card3list').show();
		}
		// 직접입력 선택 시.
		/* else if($("input[name='addrOptions']:checked").val() == '직접입력'){
			$('#addr1list').hide();
			$('#addr2list').hide();
			$('#addr3list').hide();
			$('#addr4list').show();
		} */
	});
    
    //결제방법
	$("input[name='payOptions']").change(function(){
		// 간편결제 선택 시.
		if($("input[name='payOptions']:checked").val() == '간편결제'){
			$('#pay2').hide();
			$('#pay3').hide();
			$('#pay1').show();
		}	
		// 계좌이체 선택 시.
		else if($("input[name='payOptions']:checked").val() == '계좌이체'){
			$('#pay1').hide();
			$('#pay2').hide();
			$('#pay2').show();
		}
		// 일반결제 선택 시.
		else if($("input[name='payOptions']:checked").val() == '일반결제'){
			$('#pay1').hide();
			$('#pay2').hide();
			$('#pay3').show();
		}
		// 직접입력 선택 시.
		/* else if($("input[name='addrOptions']:checked").val() == '직접입력'){
			$('#addr1list').hide();
			$('#addr2list').hide();
			$('#addr3list').hide();
			$('#addr4list').show();
		} */
	});
});


</script>

<!-- 카카오주소 API -->
<script>
//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
function sample4_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
        	
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 참고 항목 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample4_postcode').value = data.zonecode;
            document.getElementById("sample4_roadAddress").value = roadAddr;
            document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
            
            // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
            if(roadAddr !== ''){
                document.getElementById("sample4_extraAddress").value = extraRoadAddr;
            } else {
                document.getElementById("sample4_extraAddress").value = '';
            }

            var guideTextBox = document.getElementById("guide");
            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
            if(data.autoRoadAddress) {
                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                guideTextBox.style.display = 'block';

            } else if(data.autoJibunAddress) {
                var expJibunAddr = data.autoJibunAddress;
                guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                guideTextBox.style.display = 'block';
            } else {
                guideTextBox.innerHTML = '';
                guideTextBox.style.display = 'none';
            }
            
            var geocoder = new kakao.maps.services.Geocoder();
            
            geocoder.addressSearch(roadAddr, function(result, status) {

                // 정상적으로 검색이 완료됐으면 
                 if (status === kakao.maps.services.Status.OK) {
                	 
                    /* var coords = new kakao.maps.LatLng(result[0].y, result[0].x); */
                    
                    document.getElementById("lat").value = result[0].y;
                    document.getElementById("lng").value = result[0].x;
                }
            });
         },
    }).open();
}
</script>
</body>
</html>