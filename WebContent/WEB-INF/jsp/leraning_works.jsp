<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/4/7
  Time: 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>优秀作品</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/amazeui.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/common.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/example.min.css" />
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
                        <li><a href="#">我的课程</a>
                            <ul class="sub-menu">
                                <li class="menu-item"><a href="#">正在进行</a></li>
                                <li class="menu-item"><a href="#">已经开始</a></li>
                                <li class="menu-item"><a href="#">已&nbsp;结&nbsp;束</a></li>
                            </ul></li>
                        <li><a href="#">作品中心</a>
                            <ul class="sub-menu">
                                <li class="menu-item"><a href="${pageContext.request.contextPath}/worksDetails/student_works.html">上传作品</a></li>
                                <li class="menu-item"><a href="${pageContext.request.contextPath}/worksDetails/myWorks-1.html">我的作品</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">新闻中心</a>
                            <!-- sub-menu start-->
                            <ul class="sub-menu">
                                <li class="menu-item"><a href="html/news-content.html">公司动态</a></li>
                                <li class="menu-item"><a href="html/404-dark.html">行业动态</a></li>
                                <li class="menu-item"><a href="html/404-light.html">精彩专题</a></li>
                            </ul>
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
    <div class="layout-container">
        <div class="page-header">
            <div class="am-container">
                <h1 class="page-header-title">客户案例</h1>
            </div>
        </div>

        <div class="breadcrumb-box">
            <div class="am-container">
                <ol class="am-breadcrumb">
                    <li><a href="../index.html">首页</a></li>
                    <li class="am-active">作品展示</li>
                </ol>
            </div>
        </div>
    </div>

    <div class="section">
        <div class="container">
            <div class="section--header">
                <h2 class="section--title">全球首创 自主创新</h2>
                <p class="section--description">
                    Enterplorer Studio是一套面向企业级移动信息化建设的开发平台。集聚开发、测试、
                    <br>打包、发布于一体的移动化开发综合平台。
                </p>
            </div>

            <div class="example-container">
                <div class="am-tabs" data-am-tabs>
                    <ul class="am-tabs-nav am-nav am-nav-tabs am-g">
                        <li class="am-active am-u-md-2"><a href="#tab-4-1"><i class="am-icon-map-o"></i>全部作品</a></li>
                        <li class="am-u-md-2"><a href="#tab-4-2"><i class="am-icon-scribd"></i>UI</a></li>
                        <li class="am-u-md-2"><a href="#tab-4-3"><i class="am-icon-odnoklassniki"></i>客户案例二</a></li>
                        <li class="am-u-md-2"><a href="#tab-4-4"><i class="am-icon-building-o"></i>客户案例三</a></li>
                        <li class="am-u-md-2"><a href="#tab-4-5"><i class="am-icon-hand-scissors-o "></i>客户案例四</a></li>
                        <li class="am-u-md-2"><a href="#tab-4-6"><i class="am-icon-camera"></i>客户案例五</a></li>
                    </ul>
                    <div class="am-tabs-bd am-tabs-bd-ofv">
                        <div class="am-tab-panel am-active" id="tab-4-1">
                             <script>
               $(document).ready(function() {
                   $.getJSON("${pageContext.request.contextPath}/worksDetails/showWork-1",
                           function(da) {
                               var str = "";
                               for (var i = 0; i < da.length; i++) {
                                           str += "<div class='am-u-md-3'><a href='#' style='background-image: url('${pageContext.request.contextPath}/assets/images/example/example1.jpg');' class='example-item-bg'></a><img src='../assets/images/example/logo_hx_active.png' alt=''><span>了解更多></span></div>";
                               }
                               $("#am-g1").html(str);
                           });
               });
           </script>
                            <div class="am-g" id="am-g1">
                            </div>

                            <%--<div class="am-g">
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('${pageContext.request.contextPath}/assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('${pageContext.request.contextPath}/assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('${pageContext.request.contextPath}/assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('${pageContext.request.contextPath}/assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="${pageContext.request.contextPath}/assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                            </div>

                            <div class="am-g">
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('${pageContext.request.contextPath}/assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="${pageContext.request.contextPath}/assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('${pageContext.request.contextPath}/assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('${pageContext.request.contextPath}/assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('${pageContext.request.contextPath}/assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="${pageContext.request.contextPath}/assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                            </div>

                            <div class="am-g">
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('${pageContext.request.contextPath}/assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('${pageContext.request.contextPath}/assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('${pageContext.request.contextPath}/assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('${pageContext.request.contextPath}/assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                            </div>--%>
                        </div>
                        <div class="am-tab-panel" id="tab-4-2">
                            <div class="am-g">
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('${pageContext.request.contextPath}/assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('${pageContext.request.contextPath}/assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('${pageContext.request.contextPath}/assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('${pageContext.request.contextPath}/assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                            </div>

                            <div class="am-g">
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('${pageContext.request.contextPath}/assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('${pageContext.request.contextPath}/assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('${pageContext.request.contextPath}/assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('${pageContext.request.contextPath}/assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                            </div>

                            <div class="am-g">
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('${pageContext.request.contextPath}/assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('${pageContext.request.contextPath}/assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('${pageContext.request.contextPath}/assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('${pageContext.request.contextPath}/assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                            </div>
                        </div>
                        <div class="am-tab-panel" id="tab-4-3">
                            <div class="am-g">
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('${pageContext.request.contextPath}/assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('${pageContext.request.contextPath}/assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('../assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('../assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                            </div>

                            <div class="am-g">
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('../assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('../assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('../assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('../assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                            </div>
                        </div>


                        <div class="am-tab-panel" id="tab-4-4">
                            <div class="am-g">
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('../assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('../assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('../assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('../assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                            </div>
                        </div>

                        <div class="am-tab-panel" id="tab-4-5">
                            <div class="am-g">
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('../assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('../assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('../assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('../assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                            </div>
                        </div>

                        <div class="am-tab-panel" id="tab-4-6">
                            <div class="am-g">
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('../assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('../assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('../assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('../assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="../assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
</div>
<script src="../assets/js/amazeui.js" charset="utf-8"></script>
<script src="../assets/js/common.js" charset="utf-8"></script>
</body>
</html>
