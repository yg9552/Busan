<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

					<div class="row mt-3 mb-3">
				  		<div class="col my-auto">
				  			 Total : <c:out value="${vo.totalRows }"></c:out> 
				  		</div>
				  		<div class="col-1">
				  			<select class="form-control">
					  			<option selected>10</option>
					  			<option value="1">1</option>
					  			<option value="2">2</option>
							</select>
				  		</div>
				  	</div>
                    <div class="table-responsive">
                      <table class="table table-dark text-info text-center table-hover mb-3">
                        <thead>
                          <tr>
                            <th>
                            	<div class="form-check form-check-flat form-check-info">
			                        <label class="form-check-label"><input type="checkbox" class="form-check-input"></label>
			                    </div>
                            </th>
						    <th scope="col"> #</th>
						    <th scope="col">코드그룹 코드</th>
						    <th scope="col">코드그룹 이름 (한글)</th>
						    <th scope="col">코드그룹 이름 (영문)</th>
						    <th scope="col">코드갯수</th>
						    <th scope="col">삭제여부</th>
						    <th scope="col">등록일</th>
						    <th scope="col">수정일</th>
                          </tr>
                        </thead>
                        <tbody>
                        <c:choose>
                        	<c:when test="${fn:length(list) eq 0}">
                        		<tr>
                        			<td colspan="7">
                        				There is no date!
                        			</td>
                        		</tr>
							</c:when>
							<c:otherwise>
	                        	<c:forEach items="${list}" var="list" varStatus="status">
		                          <tr>
		                            <td>
										<div class="form-check form-check-flat form-check-info">
					                        <label class="form-check-label"><input type="checkbox" class="form-check-input"></label>
					                    </div>
									</td>
		                            <td> <c:out value="${vo.totalRows - ((vo.thisPage - 1) * vo.rowNumToShow + status.index) }"/> </td>
		                            <td> <c:out value="${list.codeGroupCode }"/> </td>
		                            <td> <a href="javascript:goView(<c:out value="${list.seq }"/>)"> <c:out value="${list.name }"/></a> </td>
		                            <td> <c:out value="${list.codeGroupNameEN }"></c:out> </td>
		                            <td> <c:out value="${list.seqCount }"/> </td>
		                            <td> <c:out value="${list.delNy }"></c:out> </td>
		                            <td> <c:out value="${list.codeGroupRegDate }"></c:out> </td>
		                            <td> <c:out value="${list.codeGroupModDate }"></c:out> </td>
		                          </tr>
	                           </c:forEach>
	                        </c:otherwise>
                        </c:choose>
                        </tbody>
                      </table>
                    </div>
                    
                    <!-- pagination s -->
						<%@include file="../../../common/xdmin/pagination.jsp"%>
					<!-- pagination e -->
					
					<script>
					goView = function(keyValue) {
			    		seq.val(keyValue);
			    		form.attr("action", goUrlView).submit();
			    	}
					
					goList = function(thisPage) {
			      		$("input:hidden[name=thisPage]").val(thisPage);
			      		form.attr("action", goUrlList).submit();
			      	}
					
					</script>