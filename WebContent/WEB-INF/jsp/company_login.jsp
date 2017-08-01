<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>公司登陆</title>
<link href="${pageContext.request.contextPath }/css/company_login.css" rel="stylesheet" type="text/css" media="all">
</head>
<body>
<div class="overall_situation">
<div class="overall">
<div class="form">
    <h2>欢迎登陆</h2>
    <form action="${pageContext.request.contextPath }/company/company_loginDo" method="post">
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
    <input type="submit" value="登陆" class="sub">
        <a href="${pageContext.request.contextPath }/company/company_reg.html" class="her">注册</a>
    </div>
    </form>
</div>
</div>
</div>
</body>
</html>