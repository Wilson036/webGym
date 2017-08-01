<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Member Centre</title>
</head>
<body>

	<!-- Member Spring 測試 -->
	<form action="<c:url value="/member.controller"/>" method="get">
		<table>
			<tr>
				<td>讀取會員資料</td>
				<td>${errors.name}</td>
			</tr>
			<tr>
				<td><button type="submit">Submit</button></td>
				<td></td>
			</tr>
		</table>
	</form>

</body>
</html>