<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Language" content="ko" >
<title>데이터 가져오기~</title>
</head>
<body>
<table border="1">
	<thead>
		<tr>
			<td>TEMP_ID</td>
			<td>TEMP_VAL</td>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="item" items="${list}">
			<tr>
				<td>${item.tempId}</td>
				<td>${item.tempVal}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</body>
</html>