<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>カレンダー</title>
</head>
<body>
<c:if test="${flush != null}">
	<div id="flush_success">
		<c:out value="${flush}"></c:out>
	</div>
</c:if>
<c:if test="${errors != null}">
	<div id="flush_error">入力内容にエラーがあります。<br />
		<c:forEach var="error" items="${errors}">
        	<c:out value="${error}" /><br />
        </c:forEach>
	</div>
</c:if>
<jsp:include page="header.jsp" />
<%
	Calendar c = Calendar.getInstance();
	int this_year = c.get(Calendar.YEAR);
	int this_month = c.get(Calendar.MONTH) + 1;
	String p_year = request.getParameter("year");
	String p_month =  request.getParameter("month");
	int selected_year = (Integer.parseInt(p_year==null ? "0" : p_year) == 0 ? this_year : Integer.parseInt(p_year) );
	int selected_month = (Integer.parseInt(p_month==null ? "0" : p_month) == 0 ? this_month : Integer.parseInt(p_month) );
%>
<div class="calendar">
<form class="select" name="select" method="post" action="index">
<select class="year" name="year" onchange="load()">
<%
	String selected = "";
	for(int i=-5; i<=5; i++){
		int year = this_year + i;
		if(p_year == null){
			if(year == this_year){
				selected = "selected";
			}else{
				selected = "";
			}
		}else{
			if(year == selected_year){
				selected = "selected";
			}else{
				selected = "";
			}
		}

%>
	<option value="<%= year %>" <%= selected %>><%= year %>年</option>
<%
	}
%>
</select>
<select class="month" name="month" onchange="load()">
<%
	for(int i=1; i<=12; i++){
		int month = i;
		if(p_month == null){
			if(month == this_month){
				selected = "selected";
			}else{
				selected = "";
			}
		}else{
			if(month == selected_month){
				selected = "selected";
			}else{
				selected = "";
			}
		}
%>
	<option value="<%= month %>" <%= selected %>><%= month %>月</option>
<%
	}
%>
</select>
</form>
<%
	Calendar c2 = Calendar.getInstance();
	c2.set(selected_year, selected_month-1, 1);
	int max_days = c2.getActualMaximum(Calendar.DAY_OF_MONTH);
	int first_day_of_week = c2.get(Calendar.DAY_OF_WEEK);
	ArrayList<String> list = new ArrayList<>();
	for(int i=1; i<max_days+first_day_of_week; i++){
		if(i<first_day_of_week){
			list.add("");
		}else{
			list.add(String.valueOf(i-first_day_of_week+1));
		}
	}
%>
<table class="calendar">
	<thead>
		<tr>
			<th style="background-color: red;">日</th>
			<th>月</th>
			<th>火</th>
			<th>水</th>
			<th>木</th>
			<th>金</th>
			<th style="background-color: blue;">土</th>
		</tr>
	</thead>
	<tbody>
<%
	for(int i=0; i<list.size(); i++){
		String day = list.get(i);
		if(i==0 || i%7==0){
%>
		<tr>
<%
		}
		String show_class = "";
		if(i>=first_day_of_week-1){
			show_class = "show";
		}
%>
			<td class="<%= show_class %>"><%= day %></td>
<%
		if(i==list.size()-1 || (i+1)%7==0){
%>
		</tr>
<%
		}
	}
%>
	</tbody>
</table>
</div>

<%-- メンバー追加画面 --%>
<div class="popup">
	<span class="close">✖</span>
	<p class="title">メンバー追加</p>
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
			<input type="hidden" name="AddMember">
		</form>
	</div>
</div>
<div class="grayout"></div>
<script src="//code.jquery.com/jquery-3.5.0.min.js"></script>
<script>
	function load(){
		document.select.submit();
	}

	$("#member").click(function(){
		const height = $("body").height();
		$(".grayout").addClass("active");
		$(".grayout.active").css("height", height);

		$(".popup").addClass("active");
	});

	$(".close").click(function(){
		$(".grayout.active").removeClass("active");
		$(".popup.active").removeClass("active");
	});

	window.onload = function(){
		var popup = document.getElementById("flush_success") != null ? document.getElementById("flush_success") : document.getElementById("flush_error");
		popup.animate({opacity:[0,1]}, 1000);
		setTimeout(function(){
				popup.animate({opacity:[1,0]}, 1000)}
				,3000
		);
		setTimeout(function(){popup.style.display = 'none'}, 4000);
	}

</script>
</body>
</html>