<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主页</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/amazeui.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/common.min.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/index.min.css" />
	<script src="${pageContext.request.contextPath}/assets/js/jquery-2.1.0.js" charset="utf-8"></script>
</head>
<body>
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
									<li><a href="./index.html" class="" >首页</a></li>
									<li class="am-parent">
										<a href="#" class="" >产品中心</a>
										<ul class="am-menu-sub am-collapse ">
											<li class="">
												<a href="html/product1.html" class="" >产品展示1</a>
											</li>
											<li class="">
												<a href="html/product2.html" class="" >产品展示2</a>
											</li>
											<li class="">
												<a href="html/product3.html" class="" >产品展示3</a>
											</li>
										</ul>
									</li>
									<li class=""><a href="html/example.html" class="" >客户案例</a></li>
									<li class=""><a href="html/solution.html" class="" >解决方案</a></li>
									<li class="am-parent">
										<a href="html/news.html" class="" >新闻中心</a>
										<ul class="am-menu-sub am-collapse  ">
											<li class="">
												<a href="html/news-content.html" class="" >公司动态</a>
											</li>
											<li class="">
												<a href="html/404-dark.html" class="" >行业动态</a>
											</li>
											<li class="">
												<a href="html/404-light.html" class="" >精彩专题</a>
											</li>
										</ul>
									</li>
									<li class=""><a href="html/about.html" class="" >关于我们</a></li>
									<li class=""><a href="html/join.html" class="" >加入我们</a></li>
									<li class=""><a href="#" class="" >个人中心</a>
										<ul class="am-menu-sub am-collapse  ">
											<li class="">
												<a href="${pageContext.request.contextPath}/user/personalData.html" class="" >个人详情</a>
											</li>
											<li class="">
												<a href="${pageContext.request.contextPath}/user/updatePassword.html" class="" >修改密码</a>
											</li>
											<li class="">
												<a href="html/404-light.html" class="" >注销</a>
											</li>
										</ul>
									</li>
									<li class="am-parent">
										<a href="" class="nav-icon nav-icon-globe" >Language</a>
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
									<li class=""><a href="html/login.html" class="" >登录</a></li>
									<li class=""><a href="html/register.html" class="" >注册</a></li>
								</ul>

							</div>
						</div>
					</nav>

				</div>
			</div>
			<div class="am-u-sm-5 am-u-end">
				<div class="m-logo">
					<a href=""><img src="assets/images/logo.png" alt=""></a>
				</div>
			</div>
		</div>
		<!--mobile header end-->
	</div>




	<!--===========layout-container================-->
	<div class="layout-container">
		<div class="index-page">
			<div data-am-widget="tabs" class="am-tabs am-tabs-default">
				<div class="am-tabs-bd">
					<div data-tab-panel-0 class="am-tab-panel am-active">
						<div class="index-banner">
							<div class="index-mask">
								<div class="container">
									<div class="am-g">
										<script>
											$(document).ready(function() {
												$.getJSON(
														"${pageContext.request.contextPath}/completeItem/acceptItemDo",
														function(da) {
															$("#slide_simple").html("恭喜"+da.user.phone_number+"的作品被采纳");
															$("#am-text").html("作品名:"+da.itemName);

														});
											});
										</script>
										<div class="am-u-md-10 am-u-sm-centered" id="am">
											<h1 class="slide_simple--title" id="slide_simple"></h1>
											<p class="slide_simple--text am-text-left" id="am-text">
											</p>
											<div class="slide_simple--buttons">
												<button type="button" class="am-btn am-btn-danger">了解更多</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div data-tab-panel-1 class="am-tab-panel ">
						<div class="index-banner">
							<img src="${pageContext.request.contextPath}/assets/images/index/shuimo.jpg" style="width: 1800px;height: 693px; ">
							<div class="index-mask">
								<div class="container">
									<div class="am-g">

										<div class="am-u-md-10 am-u-sm-centered">
											<h1 class="slide_simple--title">企业移动化，首选云适配</h1>
											<p class="slide_simple--text am-text-left">
												全球领先的HTML5企业移动化解决方案供应商，安全高效的帮助您的企业移动化。云适配企业浏览器Enterploer,让企业安全迈进移动办公时代！
											</p>
											<div class="slide_simple--buttons">
												<button type="button" class="am-btn am-btn-danger">了解更多</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div data-tab-panel-2 class="am-tab-panel ">
						<div class="index-banner">
							<div class="index-mask">
								<div class="container">
									<div class="am-g">
										<div class="am-u-md-10 am-u-sm-centered">
											<h1 class="slide_simple--title">企业移动化，首选云适配</h1>
											<p class="slide_simple--text am-text-left">
												全球领先的HTML5企业移动化解决方案供应商，安全高效的帮助您的企业移动化。云适配企业浏览器Enterploer,让企业安全迈进移动办公时代！
											</p>
											<div class="slide_simple--buttons">
												<button type="button" class="am-btn am-btn-danger">了解更多</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div data-tab-panel-3 class="am-tab-panel ">
						<div class="index-banner">
							<div class="index-mask">
								<div class="container">
									<div class="am-g">
										<div class="am-u-md-10 am-u-sm-centered">
											<h1 class="slide_simple--title">企业移动化，首选云适配</h1>
											<p class="slide_simple--text am-text-left">
												全球领先的HTML5企业移动化解决方案供应商，安全高效的帮助您的企业移动化。云适配企业浏览器Enterploer,让企业安全迈进移动办公时代！
											</p>
											<div class="slide_simple--buttons">
												<button type="button" class="am-btn am-btn-danger">了解更多</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<ul class="am-tabs-nav am-cf index-tab">
					<li class="am-active">
						<a href="[data-tab-panel-0] am-g">
							<div class="am-u-md-3 am-u-sm-3 am-padding-right-0">
								<i class="am-icon-cog"></i>
							</div>
							<div class="school-item-right am-u-md-9 am-u-sm-9 am-text-left">
								<strong class="promo_slider_nav--item_title">采纳作品</strong>
								<p class="promo_slider_nav--item_description">Enterplorer </p>
							</div>
						</a>
					</li>
					<li class="a">
						<a href="[data-tab-panel-1] am-g">
							<div class="am-u-md-3 am-u-sm-3 am-padding-right-0">
								<i class="am-icon-lightbulb-o"></i>
							</div>
							<div class="school-item-right am-u-md-9 am-u-sm-9 am-text-left">
								<strong class="promo_slider_nav--item_title">UI作品</strong>
								<p class="promo_slider_nav--item_description">Xcloud </p>
							</div>
						</a>
					</li>
					<li class="">
						<a href="[data-tab-panel-2] am-g">
							<div class="am-u-md-3 am-u-sm-3 am-padding-right-0">
								<i class="am-icon-line-chart"></i>
							</div>
							<div class="school-item-right am-u-md-9 am-u-sm-9 am-text-left">
								<strong class="promo_slider_nav--item_title">优秀海报</strong>
								<p class="promo_slider_nav--item_description">Amaze UI </p>
							</div>
						</a>
					</li>
					<li class="">
						<a href="[data-tab-panel-3] am-g">
							<div class="am-u-md-3 am-u-sm-3 am-padding-right-0">
								<i class="am-icon-hourglass-end"></i>
							</div>
							<div class="school-item-right am-u-md-9 am-u-sm-9 am-text-left">
								<strong class="promo_slider_nav--item_title">团队作品</strong>
								<p class="promo_slider_nav--item_description">Lorem ipsum asmo dolor</p>
							</div>
						</a>
					</li>
				</ul>
			</div>

		</div>
	</div>




	<div class="section">
		<div class="container">
			<div class="section--header">
				<h2 class="section--title">推荐课程</h2>
				<p class="section--description">
					全球领先HTML5企业移动化解决方案供应商，由前微软美国总部IE浏览器核心研发团队成员及移动互联网行业专家在美国西雅图创立
					<br>获得了微软创投的扶持以及晨兴资本、IDG资本、天创资本等国际顶级风投机构的投资。
				</p>
			</div>
			<script>
				$(document).ready(function() {
					$.getJSON(
							"${pageContext.request.contextPath}/course/recommendCourse-1",
							function(da) {
								var str = "";
								for (var i = 0; i < da.length; i++) {

									str +="<div class='am-u-md-3'><div class='features_item'><a href='${pageContext.request.contextPath}/course/courseContent-"+da[i].cid+"'><img src='${pageContext.request.contextPath}/upload/"+da[i].logo+"' alt=''/></a><h3 class='features_item--title'>"+da[i].schoolName+"</h3><p class='features_item--text'>"+da[i].courseName+"</p></div></div>";
								}
								$("#recommander").html(str)

							});
				});
			</script>
			<!--index-container start-->
			<div class="index-container">
				<div class="am-g" id="recommander">
				</div>

				<div class="index-more">
					<button type="button" class="am-btn am-btn-secondary">更多&nbsp;&nbsp;>></button>
				</div>
			</div>
			<!--index-container end-->
		</div>
	</div>

</div>

<!--promo_detailed start-->
<div class="promo_detailed">
	<div class="promo_detailed-container" >
		<div class="container">
			<div class="am-g">
				<div class="am-u-md-6">
					<ul class="promo_detailed--list">
						<li class="promo_detailed--list_item">
                <span class="promo_detailed--list_item_icon">
                  <i class="am-icon-diamond"></i>
                </span>
							<dl>
								<dt>明确职场目标</dt>
								<dd>
									支持用户的添加和导入，与AD可以进行紧密的整合，实时同步最新的用户信息，从而方便对用户进行管理。
								</dd>
							</dl>
						</li>
						<li class="promo_detailed--list_item">
                <span class="promo_detailed--list_item_icon">
                  <i class="am-icon-dollar" style="margin-left: 15px;"></i>
                </span>
							<dl>
								<dt>同企业接轨</dt>
								<dd>
									提供实时监控平台，日志和报告系统，帮助管理员对系统的整体情况有全面的了解。
								</dd>
							</dl>
						</li>
						<li class="promo_detailed--list_item">
                <span class="promo_detailed--list_item_icon">
                  <i class="am-icon-bank" style="margin-left: 10px;"></i>
                </span>
							<dl>
								<dt>丰富经验</dt>
								<dd>
									支持在线应用、适配应用、本地应用等多种应用类型。使用户可以最便捷的获取企业的各种应用。
								</dd>
							</dl>
						</li>
					</ul>
				</div>

				<div class="am-u-md-6">
					<div class="promo_detailed--cta">
						<div class="promo_detailed--cta_wrap">
							<div class="promo_detailed--cta_text">
								企业培训资料，企业课程，近距离接触企业，取其长，补其短。
							</div>
							<div class="promo_detailed--cta_footer">
								<a href="${pageContext.request.contextPath}/course/companyCurriculumsTableDo.html"><button type="button" class="am-btn am-btn-danger">MORE&nbsp;&nbsp;>></button></a>
							</div>
						</div>
						<div class="promo_detailed-img am-show-sm-only" style="background-image: url('${pageContext.request.contextPath}/assets/images/index/promo_detailed_bg.jpg');"></div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<div class="promo_detailed-img am-hide-sm-only" style="background-image: url('${pageContext.request.contextPath}/assets/images/index/promo_detailed_bg.jpg');"></div>
</div>
<!--promo_detailed end-->

<div class="section"  style="border-bottom: 1px solid #e9e9e9;">
	<div class="container">
		<div class="section--header">
			<h2 class="section--title">计算机课程</h2>
			<p class="section--description">
				全球领先HTML5企业移动化解决方案供应商，由前微软美国总部IE浏览器核心研发团队成员及移动互联网行业专家在美国西雅图创立
				<br>获得了微软创投的扶持以及晨兴资本、IDG资本、天创资本等国际顶级风投机构的投资。
			</p>
		</div>

		<script>
			$(document).ready(function() {
				$.getJSON(
						"${pageContext.request.contextPath}/course/selectCourse-计算机",
						function(da) {
							var str = "";
							for (var i = 0; i < da.length; i++) {
								str +="<div class='am-u-md-3'><div class='service_item'><img src='${pageContext.request.contextPath}/upload/"+da[i].logo+"'/><h3 class='service_item--title'>"+da[i].schoolName+"</h3><div class='service_item--text'><p>"+da[i].courseName+"</p></div><footer class='service_item--footer'><a href='${pageContext.request.contextPath}/course/courseContent-"+da[i].cid+"' class='link -blue_light'>Learn More>></a></footer></div></div>";

							}
							$("#calculaterce").html(str)

						});
			});
		</script>

		<!--index-container start-->
		<div class="index-container">
			<div class="am-g" id="calculaterce">
			</div>
		</div>
		<!--index-container end-->
	</div>
</div>


<%--<div class="section" >
	<div class="container">
		<div class="section--header">
			<h2 class="section--title">产品价格</h2>
			<p class="section--description">
				全球领先HTML5企业移动化解决方案供应商，由前微软美国总部IE浏览器核心研发团队成员及移动互联网行业专家在美国西雅图创立
				<br>获得了微软创投的扶持以及晨兴资本、IDG资本、天创资本等国际顶级风投机构的投资。
			</p>
		</div>

		<div class="pricing_compare">
			<ul class="pricing_compare--options">
				<li class="pricing_compare--option"><i class="pricing_compare--option_icon am-icon-group"></i>Company Size</li>
				<li class="pricing_compare--option"><i class="pricing_compare--option_icon am-icon-umbrella"></i>Insurance Coverage</li>
				<li class="pricing_compare--option"><i class="pricing_compare--option_icon am-icon-life-ring"></i>Number of Consultations</li>
				<li class="pricing_compare--option"><i class="pricing_compare--option_icon am-icon-street-view"></i>Phone Support</li>
				<li class="pricing_compare--option"><i class="pricing_compare--option_icon am-icon-dollar"></i>Investments Protection</li>
			</ul>
			<div class="pricing_compare--plans">
				<div class="pricing_plan">
					<header class="pricing_plan--header">
						<h2 class="pricing_plan--title"><b>BASIC </b>PLAN</h2><strong class="pricing_plan--price">$69<small>/m</small></strong>
					</header>
					<ul class="pricing_plan--options">
						<li class="pricing_plan--option"><b>1-9 </b>people</li>
						<li class="pricing_plan--option"><b>12</b>months</li>
						<li class="pricing_plan--option"><b>10 </b>monthly</li>
						<li class="pricing_plan--option"><b>3 </b>weeks</li>
						<li class="pricing_plan--option"><b>10 </b>millions</li>
					</ul>
					<footer class="pricing_plan--footer">
						<button type="button" class="am-btn am-btn-secondary">choose</button>
					</footer>
				</div>
				<div class="pricing_plan popular">
					<header class="pricing_plan--header"><span class="pricing_plan--label popular">Popular</span>
						<h2 class="pricing_plan--title"><b>plus </b>PLAN</h2><strong class="pricing_plan--price">$99<small>/m</small></strong>
					</header>
					<ul class="pricing_plan--options">
						<li class="pricing_plan--option"><b>10-99 </b>people</li>
						<li class="pricing_plan--option"><b>24</b>months</li>
						<li class="pricing_plan--option"><b>15 </b>monthly</li>
						<li class="pricing_plan--option"><b>6 </b>weeks</li>
						<li class="pricing_plan--option"><b>30 </b>millions</li>
					</ul>
					<footer class="pricing_plan--footer">
						<button type="button" class="am-btn am-btn-danger">choose</button>
					</footer>
				</div>
				<div class="pricing_plan">
					<header class="pricing_plan--header">
						<h2 class="pricing_plan--title"><b>PRO </b>PLAN</h2><strong class="pricing_plan--price"><small>Custom</small></strong>
					</header>
					<ul class="pricing_plan--options">
						<li class="pricing_plan--option"><b>Unlimited </b>people</li>
						<li class="pricing_plan--option"><b>Unlimited </b>time</li>
						<li class="pricing_plan--option"><b>Unlimited </b>time</li>
						<li class="pricing_plan--option"><b>Unlimited </b>time</li>
						<li class="pricing_plan--option"><b>Unlimited </b>sum</li>
					</ul>
					<footer class="pricing_plan--footer">
						<button type="button" class="am-btn am-btn-secondary">choose</button>
					</footer>
				</div>
			</div>
		</div>

	</div>
</div>--%>



<div class="section promo_banner-container">
	<!--index-container start-->
	<div class="promo_banner-box">
		<div class="container">
			<h2 class="promo_banner--title">期待您的加入</h2>
			<p class="promo_banner--text">
				我们成立了三年，正用自己的技术力量一步一步改变世界。
				<br> 我们开创了中国首个开源HTML5跨屏前端框架、可见即可得的IDE、无障碍网页我们是全球独一无二的
				<br> 云适配技术，我们的目标是打造极致的网页体验。
				<footer class="promo_banner--footer">
					<button type="button" class="am-btn am-btn-secondary">MORE>></button>
				</footer>
		</div>
	</div>
	<!--index-container end-->
</div>



<!--customer-logo start-->
<div class="customer-logo">
	<div class="container">
		<div class="am-g">
			<div class="am-u-md-2 am-u-sm-4 customer-box">
				<a href="#">
					<img class="normal-logo" src="${pageContext.request.contextPath}/assets/images/index/customer_logo_Microsoft.png" alt="" />
					<img class="am-active"  alt=""src="${pageContext.request.contextPath}/assets/images/index/customer_logo_Microsoft_active.png" alt="" />
				</a>
			</div>
			<div class="am-u-md-2 am-u-sm-4 customer-box">
				<a href="#">
					<img class="normal-logo" src="${pageContext.request.contextPath}/assets/images/index/customer_logo_qhdx.png" alt="" />
					<img class="am-active" src="${pageContext.request.contextPath}/assets/images/index/customer_logo_qhdx_active.png" alt="" />
				</a>
			</div>
			<div class="am-u-md-2 am-u-sm-4 customer-box">
				<a href="#">
					<img class="normal-logo" src="${pageContext.request.contextPath}/assets/images/index/customer_logo_gmw.png" alt="" />
					<img class="am-active" src="${pageContext.request.contextPath}/assets/images/index/customer_logo_gmw_active.png" alt="" />
				</a>
			</div>
			<div class="am-u-md-2 am-u-sm-4 customer-box">
				<a href="#">
					<img class="normal-logo" src="${pageContext.request.contextPath}/assets/images/index/customer_logo_gov.png" alt="" />
					<img class="am-active" src="${pageContext.request.contextPath}/assets/images/index/customer_logo_gov_active.png" alt="" />
				</a>
			</div>
			<div class="am-u-md-2 am-u-sm-4 customer-box">
				<a href="#">
					<img class="normal-logo" src="${pageContext.request.contextPath}/assets/images/index/customer_logo_jl.png" alt="" />
					<img class="am-active" src="${pageContext.request.contextPath}/assets/images/index/customer_logo_jl_active.png" alt="" />
				</a>
			</div>
			<div class="am-u-md-2 am-u-sm-4 customer-box">
				<a href="#">
					<img class="normal-logo" src="${pageContext.request.contextPath}/assets/images/index/customer_logo_hx.png" alt="" />
					<img class="am-active" src="${pageContext.request.contextPath}/assets/images/index/customer_logo_hx_active.png" alt="" />
				</a>
			</div>
		</div>
	</div>
</div>
<!--customer-logo end-->


<div class="section" style="margin-top:0px;background-image: url('${pageContext.request.contextPath}/assets/images/pattern-light.png');">
	<div class="container">
		<!--index-container start-->
		<div class="index-container">
			<div class="am-g">
				<div class="am-u-md-4">
					<div class="contact_card">
						<i style="color:#59bcdb" class="contact_card--icon am-icon-phone"></i>
						<strong class="contact_card--title">Contact Us</strong>
						<p class="contact_card--text">Feel free to call us on <br> <strong>0 (855) 233-5385</strong> <br> Monday - Friday, 8am - 7pm</p>
						<button type="button" class="am-btn am-btn-secondary">Order a Call Back</button>
					</div>
				</div>
				<div class="am-u-md-4">
					<div class="contact_card">
						<i style="color:#59bcdb" class="contact_card--icon am-icon-envelope-o"></i>
						<strong class="contact_card--title">Our Email</strong>
						<p class="contact_card--text">Drop us a line anytime at <br> <strong><a href="mailto:info@financed.com">info@financed.com</a>,</strong> <br> and we’ll get back soon.</p>
						<button type="button" class="am-btn am-btn-secondary">Start Writing</button>
					</div>
				</div>
				<div class="am-u-md-4">
					<div class="contact_card">
						<i style="color:#59bcdb" class="contact_card--icon am-icon-map-marker"></i>
						<strong class="contact_card--title">Our Address</strong>
						<p class="contact_card--text">Come visit us at <br> <strong>Stock Building, New York,</strong> <br> NY 93459</p>
						<button type="button" class="am-btn am-btn-secondary">See the Map</button>
					</div>
				</div>
			</div>
		</div>
		<!--index-container end-->
	</div>
</div>




<!--===========layout-footer================-->
<div class="layout-footer">
	<div class="footer">
		<div style="background-color:#383d61" class="footer--bg"></div>
		<div class="footer--inner">
			<div class="container">
				<div class="footer_main">
					<div class="am-g">
						<div class="am-u-md-3 ">
							<div class="footer_main--column">
								<strong class="footer_main--column_title">关于我们</strong>
								<div class="footer_about">
									<p class="footer_about--text">
										云适配(AllMobilize Inc.) 是全球领先的HTML5企业移动化解决方案供应商，由前微软美国总部IE浏览器核心研发团队成员及移动互联网行业专家在美国西雅图创立.
									</p>
									<p class="footer_about--text">
										云适配跨屏云也成功应用于超过30万家企业网站，包括微软、联想等世界500强企业
									</p>
								</div>
							</div>
						</div>

						<div class="am-u-md-3 ">
							<div class="footer_main--column">
								<strong class="footer_main--column_title">产品中心</strong>
								<ul class="footer_navigation">
									<li class="footer_navigation--item"><a href="#" class="footer_navigation--link">Enterplorer 企业浏览器</a></li>
									<li class="footer_navigation--item"><a href="#" class="footer_navigation--link">Xcloud 网站跨屏云</a></li>
									<li class="footer_navigation--item"><a href="#" class="footer_navigation--link">Amaze UI 前端开发框架</a></li>
									<li class="footer_navigation--item"><a href="#" class="footer_navigation--link">Amaze UI 前端开发框架</a></li>
									<li class="footer_navigation--item"><a href="#" class="footer_navigation--link">Amaze UI 前端开发框架</a></li>
								</ul>
							</div>
						</div>

						<div class="am-u-md-3 ">
							<div class="footer_main--column">
								<strong class="footer_main--column_title">技术支持</strong>
								<ul class="footer_navigation">
									<li class="footer_navigation--item"><a href="#" class="footer_navigation--link">企业移动信息化白皮书</a></li>
									<li class="footer_navigation--item"><a href="#" class="footer_navigation--link">企业移动信息化白皮书</a></li>
									<li class="footer_navigation--item"><a href="#" class="footer_navigation--link">企业移动信息化白皮书</a></li>
									<li class="footer_navigation--item"><a href="#" class="footer_navigation--link">企业移动信息化白皮书</a></li>
									<li class="footer_navigation--item"><a href="#" class="footer_navigation--link">企业移动信息化白皮书</a></li>
								</ul>
							</div>
						</div>

						<div class="am-u-md-3 ">
							<div class="footer_main--column">
								<strong class="footer_main--column_title">联系详情</strong>
								<ul class="footer_contact_info">
									<li class="footer_contact_info--item"><i class="am-icon-phone"></i><span>服务专线：400 069 0309</span></li>
									<li class="footer_contact_info--item"><i class="am-icon-envelope-o"></i><span>yunshipei.com</span></li>
									<li class="footer_contact_info--item"><i class="am-icon-map-marker"></i><span>北京市海淀区海淀大街27号天使大厦（原亿景大厦）三层</span></li>
									<li class="footer_contact_info--item"><i class="am-icon-clock-o"></i><span>更多模板 <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></span></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script src="${pageContext.request.contextPath}/assets/js/amazeui.js" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/assets/js/common.js" charset="utf-8"></script>
</body>
</html>