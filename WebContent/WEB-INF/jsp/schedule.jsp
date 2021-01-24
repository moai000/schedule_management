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
<table class="schedule">
	<tr>
		<th></th>
		<th>6:00</th>
		<th></th>
		<th></th>
		<th>9:00</th>
		<th></th>
		<th></th>
		<th>12:00</th>
		<th></th>
		<th></th>
		<th>15:00</th>
		<th></th>
		<th></th>
		<th>18:00</th>
		<th></th>
		<th></th>
		<th>21:00</th>
		<th></th>
		<th></th>
		<th></th>
		<th>0:00</th>
	</tr>
	<tr>
		<td>名前</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
</table>
	<button type="button" id="schedule" class="add_schedule">追加</button>
</div>

<!-- スケジュール登録画面 -->
<div class="popup_sche">
	<span class="close">✖</span>
	<p class="title">スケジュール登録</p>
	<c:if test="${errors != null}">
		<div id="flush_error">入力内容にエラーがあります。<br />
			<c:forEach var="error" items="${errors}">
	        	<c:out value="${error}" /><br />
	        </c:forEach>
		</div>
	</c:if>
	<div class="waku">
		<form name="schedule" class="form2" method="post" action="schedule">
			<table class="add_schedule">
			<tr><th><label>メンバー：</label></th></tr>
			<tr><td><input type="text" name="mem"></td></tr>
			<tr><th><label>時間：</label></th></tr>
			<tr><td><input type="time" name="time_from">~<input type="time" name="time_to"></td></tr>
			<tr><th><label>タイトル：</label></th></tr>
			<tr><td><input type="text" name="title"></td></tr>
			<tr><th><label>メモ：</label></th>	</tr>
			<tr><td><input type="text" name="memo" ></td></tr>
			</table>
			<br><br>
			<button type="submit" class="add_schedule">登録</button>
			<input type="hidden" name="showFlg" value="${showFlg}">
		</form>
	</div>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>