<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Language" content="ko" >
<title>데이터 등록하기</title>
</head>
<body>
* 등록폼
<form action="/temp/insert.do" method="post" name="frm">
	<label for="tempVal">값 정보: </label>
	<input type="text" id="tempVal" name="tempVal">
	<br/>
	<button type="submit">등록</button>
</form>
</body>
</html>