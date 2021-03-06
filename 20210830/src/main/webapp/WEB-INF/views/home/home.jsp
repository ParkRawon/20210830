<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈</title>
<style>
	.table {
		border-collapse: collapse;
      	border-top: 3px solid #73d453;
	}
	.table th{
		text-align: center;
		color: #0ec70e;
		background: #e5f4e5;
	}
	.table td{
		text-align: center;
	}
</style>
<script type="text/javascript">
	function NoticeSelect(id) {
		frm.id.value = id;
		frm.submit();
	}
</script>
</head>
<jsp:include page= "header.jsp" />  <!-- 바깥에 있는 파일을 포함시키겠다 -->
<body>
<div align="center">
	<div><h1>Welcome to my home</h1></div>
	<div><h3>공지사항</h3></div>
	<table class="table">
		<tr>
			<th width="50">No</th>
			<th width="150">작성자</th>
			<th width="200">제목</th>
			<th width="200">작성 날짜</th>
			<th width="50">조회수</th>
		</tr>		
	<c:forEach var ="notice" items="${notices }">
		<tr onclick="NoticeSelect('${notice.id}')">
			<td width="50">${notice.id }</td>
			<td width="100">${notice.name }</td>
			<td width="200">${notice.title }</td>
			<td width="200">${notice.writeDate }</td>				
			<td width="50">${notice.hit }</td>
		</tr>
	</c:forEach>
	</table>
</div>
<div>
	<form id="frm" name="frm" action="noticeSelect.do" method="post">
		<input type="hidden" id="id" name="id">
	</form>
</div>
</body>
</html>