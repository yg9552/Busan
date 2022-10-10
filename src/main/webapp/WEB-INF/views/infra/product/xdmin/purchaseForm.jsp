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
	<link rel="stylesheet" href="../../../../../resources/assets/css/usercommon.css">
</head>
<body>
	  <!-- userHeader s -->
			<%@include file="../../../common/xdmin/userHeader.jsp"%>
	  <!-- userHeader e -->
<form name="purchaseform" method="post">
<!-- *Vo.jsp s -->
<%@include file="productVo.jsp"%>		<!-- #-> -->
<!-- *Vo.jsp e -->
<div class="container mb-5">
<input type="hidden" name="memberSeq" value="<c:out value="${sessSeq}"/>"/>
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
			<input class="form-control text-center border border-white" type="number" value="">
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
						<div class="col-4">
							<button class="btn btn-sm btn-outline-dark" type="button">주소찾기</button>
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
						<div class="col-4">
							<button class="btn btn-sm btn-outline-dark bg-white" type="button">주소찾기</button>
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
						<div class="col-4">
							<button class="btn btn-sm btn-outline-dark bg-white" type="button">주소찾기</button>
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
				<div class="col-3 offset-4 mb-3">
					<input class="form-control form-control-sm bg-white" type="text" name="zip" aria-label="우편번호">
				</div>
				<div class="col-4">
					<button class="btn btn-sm btn-outline-dark bg-white" type="button">주소찾기</button>
				</div>
				<div class="col-4 offset-4 mb-3">
					<input class="form-control form-control-sm bg-white" type="text" name="addr" aria-label="주소">
				</div>
				<div class="col-4 mb-3">
					<input class="form-control form-control-sm bg-white" type="text" name="addr_detail" aria-label="상세주소">
				</div>
			</div>
			
			
			<h4 class="mb-3">결제수단</h4>
			<div class="row">
				<div class="col-4 mb-3">
					<div class="form-check mb-5">
					  <input class="form-check-input" type="radio" name="payOptions" id="payOptions1" value="카드결제" checked>
					  <label class="form-check-label" for="payOptions1">
					    카드결제
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
				<div class="col-8" id="pay2"></div>
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
				  <a class="btn btn-primary" href="./ordercomplete.html" type="button">주문하기</a>
				</div>
			  </div>
			</div>
		</div>
	</div>
</div>
</form>


<script type="text/javascript">
const myModal = document.getElementById('myModal')
const myInput = document.getElementById('myInput')

myModal.addEventListener('shown.bs.modal', () => {
  myInput.focus()
})

var seq = $("input:hidden[name=productSeq]");
var form = $("form[name=purchaseform]");

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
		// 카드결제 선택 시.
		if($("input[name='payOptions']:checked").val() == '카드결제'){
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
</body>
</html>