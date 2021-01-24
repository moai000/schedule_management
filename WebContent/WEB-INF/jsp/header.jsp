<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>スケジュール管理</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<header>
<p class="header">スケジュール管理</p>
<div>
	<ul class="header">
		<li class="header">タスク</li>
		<li class="header" id="member">メンバー</li>
	</ul>
</div>
</header>

<%-- メンバー追加画面 --%>
<div class="popup_mem">
	<span class="close">✖</span>
	<p class="title">メンバー追加</p>
	<c:if test="${errors != null}">
		<div id="flush_error">入力内容にエラーがあります。<br />
			<c:forEach var="error" items="${errors}">
	        	<c:out value="${error}" /><br />
	        </c:forEach>
		</div>
	</c:if>
	<div class="waku">
		<form class="form2" name="add_member" action="member" method="post">
			<table class="add_member">
			<tr>
				<th><label>名前：</label></th><td><input type="text" name="namae"></td>
			</tr>
			<tr>
				<th><label>色：</label></th><td><input type="color" name="color"></td>
			</tr>
			</table>
			<button type="submit" class="add_member">登録</button>
			<input type="hidden" name="showFlg" value="${showFlg}">
		</form>
	</div>
</div>
<div class="grayout"></div>
</body>
</html>