<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>スケジュール</title>
</head>
<body>
<jsp:include page="header.jsp" />
<div class="waku_schedule">
	<p>${year}年 ${month}月 ${day}日</p>
</div>
</body>
</html>