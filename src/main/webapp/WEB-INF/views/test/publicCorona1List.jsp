<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
      video { max-width: 80%; display: block; margin: 20px auto; }
    </style>
</head>
<body>
publicCorona1List
aaa : <c:out value="${datacount }"/>
<br>aaa : <c:out value="${coordtype }"/>
<%-- 
<br>aaa : <c:out value="${resultCode }"/>
<br>aaa : <c:out value="${resultMsg }"/>
<br>aaa : <c:out value="${pageNo }"/>
<br>aaa : <c:out value="${totalCount }"/>
<br>aaa : <c:out value="${numOfRows }"/>
<br>aaa : <c:out value="${items }"/>
<br>aaa : <c:out value="${fn:length(items) }"/>
 --%>
 
<c:forEach items="${data}" var="item" varStatus="status">
	<c:out value="${item.roadsectionid }"/>
	<br><c:out value="${item.coordx }"/>	
	<br><c:out value="${item.coordy }"/>	
	<br><c:out value="${item.cctvresolution }"/>	
	<br><c:out value="${item.filecreatetime }"/>	
	<br><c:out value="${item.cctvtype }"/>	
	<br><c:out value="${item.cctvformat }"/>	
	<br><c:out value="${item.cctvname }"/>	
	<br><c:out value="${item.cctvurl }"/>
	<embed src="<c:out value="${item.cctvurl }"/>">
</c:forEach>

</body>
</html>