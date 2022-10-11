<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<div class="col-3">
	<div class="card">
	  <div class="card-body p-4 text-center">
	    <h5 class="card-title text-warning"><c:out value="${sessName }"/>님</h5>
	    <h5 class="card-title">환영합니다!</h5>
	  </div>
	  <ul class="list-group list-group-flush text-center">
	    <li class="list-group-item"><a href="javascript:goView(<c:out value="${sessSeq }"/>)">개인정보수정</a></li>
	    <%-- <li class="list-group-item"><a href="javascript:goPurchaseList(<c:out value="${sessSeq }"/>)"">주문내역</a></li> --%>
	    <li class="list-group-item"><a href="javascript:goPurchaseList(<c:out value="${sessSeq }"/>)"">주문내역</a></li>
	    <li class="list-group-item"><a href="./mypageCart.html">장바구니</a></li>
	  </ul>
	</div>
</div>

<script>
	var goUrlList = "/member/memberList"; 			/* #-> */
	var goUrlInst = "/member/memberInst"; 			/* #-> */
	var goUrlUpdt = "/member/memberUpdt";			/* #-> */
	var goUrlUele = "/member/memberUele";			/* #-> */
	var goUrlDele = "/member/memberDele";			/* #-> */
	var goUrlForm = "/member/memberForm";			/* #-> */
	var goUrlView = "/member/memberMod";			/* #-> */
	var goUrlPurchaseList = "/product/purchaseList";			/* #-> */
	
	var seq = $("input:hidden[name=memberSeq]");
	var form = $("form[name=mypageForm]");

goView = function(keyValue) {
	seq.val(keyValue);
	form.attr("action", goUrlView).submit();
}
	
	goPurchaseList = function(keyValue) {
	seq.val(keyValue);
	form.attr("action", goUrlPurchaseList).submit();
}
</script>