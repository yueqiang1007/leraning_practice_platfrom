<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath }/css/company_login.css" rel="stylesheet" type="text/css" media="all">
<title>公司注册</title>
</head>
<body>
<div class="overall_situation">
    <div class="overall">
<div class="form">
    <h2>欢迎注册</h2>
    <form action="${pageContext.request.contextPath }/company/company_regDo" method="post">
    <div class="companyMail">
    <input type="text" name="companyMail" placeholder="请输入邮箱" class="into">
    </div>
    <div class="companyPassword">
    <input type="password" name="companyPassword" placeholder="请输入密码" class="into">
    </div>
    <div class="companyfPassword">
    <input type="password" name="companyfPassword" placeholder="再次输入密码" class="into">
    </div>
    <div class="submit">
    <input type="submit" value="注册" class="sub">
        <a href="${pageContext.request.contextPath }/company/company_login.html" class="her">登陆</a>
    </div>
    </form>
</div>
    </div>
</div>
</body>
</html>