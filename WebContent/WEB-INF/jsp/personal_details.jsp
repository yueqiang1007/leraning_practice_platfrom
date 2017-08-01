<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="${pageContext.request.contextPath }/user/regDo" method="post" enctype="multipart/form-data" >
	<span>账号</span><input type="text" name="uname"><br/>
	<span>昵称</span><input type="text" name="nickname"><br/>
	<span>密码</span><input type="password" name="password"><br/>
	<span>性别</span><input type="radio" name="sex" value="男" checked="checked">男<input type="radio" name="sex" value="女">女<br/>
	<span>头像</span><input type="file" name="file"><br/>
	<span>生日</span><input type="text" name="birthday"><br/>
	<span>邮箱</span><input type="text" name="email"><br/>
	<input type="submit" value="注册">
</form>
</body>
</html>