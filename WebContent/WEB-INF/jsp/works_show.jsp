<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>作品展示</title>
</head>
<body>
<h2>作品名称</h2>
<div>${requestScope.worksDetails.worksName}</div>
<h2>上传时间</h2>
<div>${requestScope.worksDetails.uploadTime}</div>
<h2>作品介绍</h2>
<div>${requestScope.worksDetails.detail}</div>
<h2>作品展示</h2>
<div>

<img src="${pageContext.request.contextPath}/uploaded/${requestScope.worksDetails.works}">

</div>
</body>
</html>