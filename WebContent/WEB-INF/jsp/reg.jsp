<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>reig</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.2.js"></script>
<script type="text/javascript">

$(function(){
	$("#doc-vld-name-2").blur(function(){
		getPhone_numberVal();
	});
});

function getPhone_numberVal(){
	var val=$("#doc-vld-name-2").val();
	
	$.getJSON("${pageContext.request.contextPath }/user/opinion",
			{phone_number:val},
			function(da){
	if(da.state==0){
	$("#inner").html(da.massge+"直接登陆").css("color","red");
	}else if(da.state==1){
		$("#inner").html("");
	}
	});
}
</script>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/amazeui.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/common.min.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/other.min.css" />
</head>
<body class="register-container">
<div class="layout">
	<!--===========layout-header================-->
	<div class="layout-header am-hide-sm-only">
		<!--topbar start-->
		<div class="topbar">
			<div class="container">
				<div class="am-g">
					<div class="am-u-md-3">
						<div class="topbar-left">
							<i class="am-icon-globe"></i>
							<div class="am-dropdown" data-am-dropdown>
								<button class="am-btn am-btn-primary am-dropdown-toggle" data-am-dropdown-toggle>Language <span class="am-icon-caret-down"></span></button>
								<ul class="am-dropdown-content">
									<li><a href="#">English</a></li>
									<li class="am-divider"></li>
									<li><a href="#">Chinese</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="am-u-md-9">
						<div class="topbar-right am-text-right am-fr">
							Follow us
							<i class="am-icon-facebook"></i>
							<i class="am-icon-twitter"></i>
							<i class="am-icon-google-plus"></i>
							<i class="am-icon-pinterest"></i>
							<i class="am-icon-instagram"></i>
							<i class="am-icon-linkedin"></i>
							<i class="am-icon-youtube-play"></i>
							<i class="am-icon-rss"></i>
							<c:if test="${sessionScope.uid==null}">
								<a href="${pageContext.request.contextPath}/user/login.html">登录</a>
								<a href="${pageContext.request.contextPath}/user/reg.html">注册</a>
							</c:if>
							<c:if test="${sessionScope.uid !=null}">
								${sessionScope.unumber}您好
							</c:if>

						</div>
					</div>
				</div>
			</div>
		</div>
		<!--topbar end-->


		<div class="header-box" data-am-sticky>
			<!--header start-->
			<div class="container">
				<div class="header">
					<div class="am-g">
						<div class="am-u-lg-2 am-u-sm-12">
							<div class="logo">
								<a href=""><img src="${pageContext.request.contextPath}/assets/images/logo.png" alt="" /></a>
							</div>
						</div>
						<div class="am-u-md-10">
							<div class="header-right am-fr">
								<div class="header-contact">
									<div class="header_contacts--item">
										<div class="contact_mini">

											<i style="color:#7c6aa6" class="contact-icon am-icon-phone"></i>
											<strong>0 (855) 233-6915</strong>
											<span>周一~周五, 8:00 - 20:00</span>
										</div>
									</div>
									<div class="header_contacts--item">
										<div class="contact_mini">
											<i style="color:#7c6aa6" class="contact-icon am-icon-envelope-o"></i>
											<strong>yueqiang@163.com</strong>
											<span>随时欢迎您的来信！</span>
										</div>
									</div>
									<div class="header_contacts--item">
										<div class="contact_mini">
											<i style="color:#7c6aa6" class="contact-icon am-icon-map-marker"></i>
											<strong>成都市,</strong>
											<span>成都东软学院</span>
										</div>
									</div>
								</div>
								<c:if test="${sessionScope.uid==null}">
									<a href="${pageContext.request.contextPath}/company/company_login.html" class="contact-btn">
										<button type="button" class="am-btn am-btn-secondary am-radius">企业入口</button>
									</a>
								</c:if>
								<c:if test="${sessionScope.uid !=null}">
									<a href="${pageContext.request.contextPath}/user/practiceMain.html" class="contact-btn">
										<button type="button" class="am-btn am-btn-secondary am-radius">实践入口</button>
									</a>
								</c:if>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--header end-->
			<!--nav start-->
			<div class="nav-contain">
				<div class="nav-inner">
					<ul class="am-nav am-nav-pills am-nav-justify">
						<li class=""><a href="${pageContext.request.contextPath}/user/main.html">首页</a></li>
						<li>
							<a href="${pageContext.request.contextPath}/worksDetails/leraning_works.html">优秀作品</a>
							<!-- sub-menu start-->

							<!-- sub-menu end-->
						</li>
						<li><a href="${pageContext.request.contextPath}/course/myCourse.html">我的课程</a>
							<%--<ul class="sub-menu">
								<li class="menu-item"><a href="#">正在进行</a></li>
								<li class="menu-item"><a href="#">已经开始</a></li>
								<li class="menu-item"><a href="#">已&nbsp;结&nbsp;束</a></li>
							</ul>--%>
						</li>
						<li><a href="#">作品中心</a>
							<ul class="sub-menu">
								<li class="menu-item"><a href="${pageContext.request.contextPath}/worksDetails/student_works.html">上传作品</a></li>
								<li class="menu-item"><a href="${pageContext.request.contextPath}/worksDetails/myWorks-1.html">我的作品</a></li>
							</ul>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/item/myItemDo">我的项目</a>

							<!-- sub-menu end-->
						</li>
						<li><a href="#">关于我们</a></li>
						<li><a href="#">加入我们</a></li>
						<li><a href="#">个人中心</a>
							<ul class="sub-menu">
								<li class="menu-item"><a href="${pageContext.request.contextPath}/user/personalData.html">个人详情</a></li>
								<li class="menu-item"><a href="${pageContext.request.contextPath}/user/updatePassword.html">修改密码</a></li>
								<li class="menu-item"><a href="${pageContext.request.contextPath}/user/exit.html">注&nbsp;&nbsp;&nbsp;&nbsp;销</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
			<!--nav end-->
		</div>
	</div>
	<!--mobile header start-->
	<div class="m-header">
		<div class="am-g am-show-sm-only">
			<div class="am-u-sm-2">
				<div class="menu-bars">
					<a href="#doc-oc-demo1" data-am-offcanvas="{effect: 'push'}"><i class="am-menu-toggle-icon am-icon-bars"></i></a>
					<!-- 侧边栏内容 -->
					<nav data-am-widget="menu" class="am-menu  am-menu-offcanvas1" data-am-menu-offcanvas >
						<a href="javascript: void(0)" class="am-menu-toggle"></a>

						<div class="am-offcanvas" >
							<div class="am-offcanvas-bar">
								<ul class="am-menu-nav am-avg-sm-1">
									<li><a href="../index.html" class="" >首页</a></li>
									<li class="am-parent">
										<a href="#" class="" >产品中心</a>
										<ul class="am-menu-sub am-collapse ">
											<li class="">
												<a href="./product1.html" class="" >产品展示1</a>
											</li>
											<li class="">
												<a href="./product2.html" class="" >产品展示2</a>
											</li>
											<li class="">
												<a href="./product3.html" class="" >产品展示3</a>
											</li>
										</ul>
									</li>
									<li class=""><a href="./example.html" class="" >客户案例</a></li>
									<li class=""><a href="./solution.html" class="" >解决方案</a></li>
									<li class="am-parent">
										<a href="./news.html" class="" >新闻中心</a>
										<ul class="am-menu-sub am-collapse  ">
											<li class="">
												<a href="./news-content.html" class="" >公司动态</a>
											</li>
											<li class="">
												<a href="./404-dark.html" class="" >行业动态</a>
											</li>
											<li class="">
												<a href="./404-light.html" class="" >精彩专题</a>
											</li>
										</ul>
									</li>
									<li class=""><a href="./about.html" class="" >关于我们</a></li>
									<li class=""><a href="./join.html" class="" >加入我们</a></li>
									<li class=""><a href="./contact.html" class="" >联系我们</a></li>
									<li class="am-parent">
										<a href="./news.html" class="nav-icon nav-icon-globe" >Language</a>
										<ul class="am-menu-sub am-collapse  ">
											<li>
												<a href="#" >English</a>
											</li>
											<li class="">
												<a href="#" >Chinese</a>
											</li>
										</ul>
									</li>
									<li class="nav-share-contain">
										<div class="nav-share-links">
											<i class="am-icon-facebook"></i>
											<i class="am-icon-twitter"></i>
											<i class="am-icon-google-plus"></i>
											<i class="am-icon-pinterest"></i>
											<i class="am-icon-instagram"></i>
											<i class="am-icon-linkedin"></i>
											<i class="am-icon-youtube-play"></i>
											<i class="am-icon-rss"></i>
										</div>
									</li>
									<li class=""><a href="./login.html" class="" >登录</a></li>
									<li class=""><a href="./register.html" class="" >注册</a></li>
								</ul>

							</div>
						</div>
					</nav>

				</div>
			</div>
			<div class="am-u-sm-5 am-u-end">
				<div class="m-logo">
					<a href=""><img src="../assets/images/logo.png" alt=""></a>
				</div>
			</div>
		</div>
		<!--mobile header end-->
	</div>



	<!--===========layout-container================-->
	<div class="register-box">
		<form action="${pageContext.request.contextPath }/user/regDo" method="post" class="am-form" data-am-validator>
			<input type="hidden" name="state" value="0">
			<fieldset>
				<legend>注册用户<p class="register-info">账号可以使用手机或者邮箱注册，但是仔细核对后，填入正确信息。</p></legend>

				<div class="am-form-group">
					<div class="am-g">
						<div class="am-u-md-2 am-padding-0 am-text-right">
							<label for="doc-vld-name-2" class="register-name">账号</label>
						</div>
						<div class="am-u-md-10">
							<input type="text" name="phone_number" id="doc-vld-name-2" minlength="11"
								   placeholder="输入电话号码（11位电话号码）" required/>
							<span id="inner"></span>
						</div>
					</div>
				</div>

				<div class="am-form-group">
					<div class="am-g">
						<div class="am-u-md-2 am-padding-0 am-text-right">
							<label for="doc-vld-pwd-1" class="register-pwd">姓名</label>
						</div>
						<div class="am-u-md-10">
							<input type="text" name="username"  placeholder="真实姓名"  required/>
						</div>
					</div>
				</div>

				<div class="am-form-group">
					<div class="am-g">
						<div class="am-u-md-2 am-padding-0 am-text-right">
							<label for="doc-vld-pwd-0" class="register-pwd">密码</label>
						</div>
						<div class="am-u-md-10">
							<input type="password" name="password"  placeholder="6 位数字的银行卡密码"  required/>
						</div>
					</div>
				</div>


				<div class="am-form-group">
					<div class="am-g">
						<div class="am-u-md-2 am-padding-0 am-text-right">
							<label >确认密码</label>
						</div>
						<div class="am-u-md-10">
							<input type="password" name="fpwd"  placeholder="请与上面输入的值一致"  required/>
						</div>
					</div>
				</div>

				<div class="am-g">
					<div class="am-u-md-10">
						<button class="am-btn am-btn-secondary" type="submit">注册</button>
					</div>
				</div>
			</fieldset>
		</form>
	</div>
</div>




<script src="../assets/js/jquery-2.1.0.js" charset="utf-8"></script>
<script src="../assets/js/amazeui.js" charset="utf-8"></script>
</body>

</html>