<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.2.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/amazeui.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/other.min.css" />
<script type="text/javascript">
$(function(){
	$("#doc-vld-name-2").blur(function(){
		getPhone_numberVal();
	});
});

function getPhone_numberVal(){
	var val=$("#doc-vld-name-2").val();
	$.getJSON("${pageContext.request.contextPath }/user/opinion",{phone_number:val},function(da){
	if(da.state==1){
	$("#inner").html(da.massge+"请注册").css("color","red");
	}else if(da.state==0){
		$("#inner").html("");
		$("#state").val(0);
		if(da.sta==2){
		$("#state").val(2);	
		}
	}
	});
};
</script>
</head>
<body class="login-container">
<div class="login-box">
	<div class="logo-img">
		<img src="../assets/images/logo2_03.png" alt="" />
	</div>
	<form action="${pageContext.request.contextPath }/user/loginDo"
		  method="post" class="am-form" data-am-validator>
		<input type="hidden" name="state"  id="state">
		<div class="am-form-group">
			<label for="doc-vld-name-2"><i class="am-icon-user"></i></label>
			<span id="inner"></span>
			<input type="text" name="phone_number" id="doc-vld-name-2" length="11" placeholder="输入用户名（11位电话号码）" required value="电话号码" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '电话号码';}"/>
		</div>

		<div class="am-form-group">
			<label for="doc-vld-email-2"><i class="am-icon-key"></i></label>
			<input type="password" name="password" id="doc-vld-email-2" placeholder="输入密码" required/>
		</div>
		<button class="am-btn am-btn-secondary"  type="submit">登录</button>
		<a class="am-btn am-btn-secondary" href="${pageContext.request.contextPath }/user/forgetePwd.html">找回密码</a>
	</form>
</div>
</body>
</html>