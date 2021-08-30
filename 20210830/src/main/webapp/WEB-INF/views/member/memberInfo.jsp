<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page = "../home/header.jsp" />
<body>
<div align = "center">
	<div><h1>회원정보 수정</h1></div>
	<div>
		<form id="frm" name="frm" action="myInfoUpdate.do" method="post">
			<div>
				<table border="1">
					<tr>
						<th width="100">아 이 디</th>
						<td width="250">${member.id }</td>
					</tr>	
					<tr>
						<th width="100">패스워드</th>
						<td width="250"><input type="password" id="password" name="password" value="${member.password }"></td>
					</tr>	
					<tr>
						<th width="100">이 름</th>
						<td width="250"><input type="text" id="name" name="name" value="${member.name }"></td>
					</tr>	
					<tr>
						<th width="100">주 소</th>
						<td width="250"><input type="text" id="address" name="address" size = "50" value="${member.address }"></td>
					</tr>
					<tr>
						<th width="100">관리자 권한</th>
						<td width="250"><input type="text" id="auth" name="auth" value="${member.auth }"></td>
					</tr>									
				</table><br/>
				<div>
					<input type="hidden" id="id" name="id" value="${member.id }">  <!-- id값을 변수로 담아주기 위해 -->
					<input type="submit" value="수정하기">&nbsp;&nbsp;&nbsp;
					<input type="button" onclick="location.href='main.do'" value="취소">
				</div>
			</div>
		</form>
	</div>
</div>
</body>
</html>