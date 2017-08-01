<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员主页</title>
<link
	href="${pageContext.request.contextPath }/css/administrator_main.css"
	rel="stylesheet" type="text/css" media="all">
<script src="${pageContext.request.contextPath}/js/jquery-1.11.2.js"></script>
<%--<link href="${pageContext.request.contextPath}/css/leraning.css"
	rel="stylesheet" type="text/css" media="all">--%>
</head>
<body>
	<!--头部上-->
	<div class="header">
		<div class="container">
			<div class="wel">
				<div class="header-top1">
					<span>${sessionScope.unumber}欢迎您</span>
				</div>
			</div>
			<div class="header-top">
				<div class="logo">
					<a href="index.html">leraning <span>practice</span></a>
				</div>
				<div class="nav">
					<UL id=menu>
						<LI><!--[if lte IE 6]><A
								href="#">
							<TABLE>
								<TBODY>
								<TR>
									<TD><![endif]-->
							<DL class=gallery>
								<DT class=one><A
										href="#">上传资料</A>
								<DD><A title="a coded list of spies"
									   href="#">传作品</A>
								<DD><A title="an enlarging unordered list"
									   href="#">传项目</A>
								<DD><A title="an enlarging unordered list"
									   href="${pageContext.request.contextPath }/course/administrator.html">传课程课程</A>

								</DD></DL><!--[if lte IE 6]></TD></TR></TBODY></TABLE></A><![endif]--></LI>
						<LI><!--[if lte IE 6]>

							<TABLE>
								<TBODY>
								<TR>
									<TD><![endif]-->
							<DL class=gallery>
								<DT class=two><A
										href="#">我的作品</A>
								<DD><A title="a coded list of spies"
									   href="#">上传作品</A>
								<DD><A title="an enlarging unordered list"
									   href="#">我的作品</A>
							</DL><!--[if lte IE 6]></TD></TR></TBODY></TABLE></A><![endif]--></LI>
						<LI><!--[if lte IE 6]><A
								href="#">


							<TABLE>
								<TBODY>
								<TR>
									<TD><![endif]-->
							<DL class=gallery>
								<DT class=three><A
										href="#">个人中心</A>
								<DD><A title="Cross browser fixed layout"
									   href="#">我的详情</A>
								<DD><A title="Cross browser fixed layout"
									   href="#">修改密码</A>
								<DD><A title="Cross browser fixed layout"
									   href="#">退出登录</A>

								</DD></DL><!--[if lte IE 6]></TD></TR></TBODY></TABLE></A><![endif]--></LI>
					</UL>
				</div>

			</div>
		</div>
	</div>
	</div>
	<!--头部下-->
	<div class="gallery">

		<link href="${pageContext.request.contextPath }/css/owl.carousel.css"
			rel="stylesheet">
		<script src="${pageContext.request.contextPath }/js/owl.carousel.js"></script>
		<script>
			$(document).ready(function() {
				$("#owl-demo").owlCarousel({
					items : 4,
					lazyLoad : true,
					autoPlay : true,
					pagination : false,
				});
			});
		</script>
		<!-- //requried-jsfiles-for owl -->
		<!-- start content_slider -->
		<div id="owl-demo" class="owl-carousel text-center">
			<div class="item">
				<img class="lazyOwl"
					 data-src="${pageContext.request.contextPath}/img/carousel1.jpg" alt="name">
				<div class="img-delete">
				<a href="#" ><img src="${pageContext.request.contextPath}/img/delete.jpg" style="width: 25px;height: 25px"></a>
				</div>
			</div>
			<div class="item">
				<img class="lazyOwl"
					 data-src="${pageContext.request.contextPath}/img/carousel2.jpg" alt="name">
				<div class="img-delete">
					<a href="#" ><img src="${pageContext.request.contextPath}/img/delete.jpg" style="width: 25px;height: 25px"></a>
				</div>
			</div>
			<div class="item">
				<img class="lazyOwl"
					 data-src="${pageContext.request.contextPath}/img/carousel3.jpg" alt="name">
				<div class="img-delete">
					<a href="#" ><img src="${pageContext.request.contextPath}/img/delete.jpg" style="width: 25px;height: 25px"></a>
				</div>
			</div>
			<div class="item">
				<img class="lazyOwl"
					 data-src="${pageContext.request.contextPath}/img/carousel4.jpg" alt="name">
				<div class="img-delete">
					<a href="#" ><img src="${pageContext.request.contextPath}/img/delete.jpg" style="width: 25px;height: 25px"></a>
				</div>
			</div>
			<div class="item">
				<img class="lazyOwl"
					 data-src="${pageContext.request.contextPath}/img/carousel5.jpg" alt="name">
				<div class="img-delete">
					<a href="#" ><img src="${pageContext.request.contextPath}/img/delete.jpg" style="width: 25px;height: 25px"></a>
				</div>
			</div>
			<div class="item">
				<img class="lazyOwl"
					 data-src="${pageContext.request.contextPath}/img/carousel6.jpg" alt="name">
				<div class="img-delete">
					<a href="#" ><img src="${pageContext.request.contextPath}/img/delete.jpg" style="width: 25px;height: 25px"></a>
				</div>
			</div>
			<div class="item">
				<img class="lazyOwl"
					 data-src="${pageContext.request.contextPath}/img/carousel7.jpg" alt="name">
				<div class="img-delete">
					<a href="#" ><img src="${pageContext.request.contextPath}/img/delete.jpg" style="width: 25px;height: 25px"></a>
				</div>
			</div>
			<div class="item">
				<img class="lazyOwl"
					 data-src="${pageContext.request.contextPath}/img/carousel8.jpg" alt="name">
				<div class="img-delete">
					<a href="#" ><img src="${pageContext.request.contextPath}/img/delete.jpg" style="width: 25px;height: 25px"></a>
				</div>
			</div>
			<div class="item">
				<img class="lazyOwl"
					 data-src="${pageContext.request.contextPath}/img/carousel9.jpg" alt="name">
				<div class="img-delete">
					<a href="#" ><img src="${pageContext.request.contextPath}/img/delete.jpg" style="width: 25px;height: 25px"></a>
				</div>
			</div>
			<div class="item">
				<img class="lazyOwl"
					 data-src="${pageContext.request.contextPath}/img/carousel10.jpg" alt="name">
				<div class="img-delete">
					<a href="#" ><img src="${pageContext.request.contextPath}/img/delete.jpg" style="width: 25px;height: 25px"></a>
				</div>
			</div>
		</div>

	</div>



	<!--正文部分-->
	<div class="content">
		<!--進入口-->
		<div class="welcome">
			<script>
				$(document).ready(function() {
					$.getJSON(
							"${pageContext.request.contextPath}/course/recommendCourse-1",
							function(da) {
								var str = "";
								for (var i = 0; i < da.length; i++) {
									str += "<div class='welcome-grid'><a href='${pageContext.request.contextPath}/course/courseContent-"+da[i].cid+"'><img src='${pageContext.request.contextPath}/upload/"+da[i].logo+"'/></a>"+
											"<div class='designer-info'><h4>"+da[i].schoolName+"</h4></div><p>"+da[i].courseName+"</p><div class='img-delete'><a href='#'><img src='${pageContext.request.contextPath}/img/delete.jpg' style='width: 25px;height: 25px'/></a></div></div></div>"

								}
								$(".welcome-grids").html(str)

							});
				});
			</script>

			<div class="con">
				<h1>高校课程</h1>
				<div class="welcome-grids">

				</div>
			</div>
		</div>
		<!--進入口結束-->
		<!--企业介绍-->
		<script>
			$(document)
					.ready(
							function() {
								$
										.getJSON(
												"${pageContext.request.contextPath}/course/companyCourse-1",
												function(dat) {
													var str = "";
													for (var i = 0; i < dat.length; i++) {
														str += "<div class='firm-grid'><a href='${pageContext.request.contextPath}/course/courseContent-"+dat[i].cid+"'><img class='img-responsive' src='${pageContext.request.contextPath}/upload/"+dat[i].referenceData+"'/></a>"+
																"<div class='designer-info'><h4>"+dat[i].schoolName+"</h4></div><p>"+dat[i].courseName+"</p><div class='img-delete'><a href='#'><img src='${pageContext.request.contextPath}/img/delete.jpg' style='width: 25px;height: 25px'/></a></div></div>"

													}
													$(".firm-grids").html(str)

												});
							});
		</script>

		<div class="firm">
			<div class="firm-container">
				<h3>企业课程</h3>
				<div class="firm-grids">

					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<!--企业介绍结束-->

		<!--教育资源介绍-->
		<div class="welcome">
			<script>
				$(document).ready(function() {
					$.getJSON(
							"${pageContext.request.contextPath}/course/selectCourse-计算机",
							function(da) {
								var str = "";
								for (var i = 0; i < da.length; i++) {
									str += "<div class='welcome-grid'><a href='${pageContext.request.contextPath}/course/courseContent-"+da[i].cid+"'><img src='${pageContext.request.contextPath}/upload/"+da[i].logo+"'/></a>"+
											"<div class='designer-info'><h4>"+da[i].schoolName+"</h4></div><p>"+da[i].courseName+"</p><div class='img-delete'><a href='#'><img src='${pageContext.request.contextPath}/img/delete.jpg' style='width: 25px;height: 25px'/></a></div></div>"

								}
								$(".welcome-course").html(str)

							});
				});
			</script>

			<div class="con">
				<h1>计算机科学</h1>
				<div class="welcome-course">

				</div>
			</div>
		</div>
		<!--教育资源介绍-->

	</div>


	<!--正文结束-->
	<!--尾部部分-->
	<div class="footer">
		<div class="footer-container">
			<p>@版权所有</p>
		</div>
	</div>
	<!--尾部结束-->
</body>
</html>