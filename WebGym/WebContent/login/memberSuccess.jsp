<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>${memberBean.m_name}的資料新增成功</h1>
<img height="500" width="300" src="${pageContext.servletContext.contextPath}/login.Controller/ReadPicFromDB?id=${memberBean.memberID}">
</body>
</html>