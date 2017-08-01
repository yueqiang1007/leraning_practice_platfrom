<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/4/6
  Time: 12:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>企业课程</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/amazeui.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/common.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/news.min.css" />
    <script src="../assets/js/jquery-2.1.0.js" charset="utf-8"></script>
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
                            <a href="${pageContext.request.contextPath}/user/login.html">登录</a>
                            <a href="${pageContext.request.contextPath}/user/reg.html">注册</a>
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
                                <a href=""><img src="../assets/images/logo.png" alt="" /></a>
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
                                <a href="html/contact.html" class="contact-btn">
                                    <button type="button" class="am-btn am-btn-secondary am-radius">企业入口</button>
                                </a>
                                </c:if>
                                <c:if test="${sessionScope.uid !=null}">
                                    <a href="html/contact.html" class="contact-btn">
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
                        <li class=""><a href="../index.html">首页</a></li>
                        <li>
                            <a href="#">产品中心</a>
                            <!-- sub-menu start-->
                            <ul class="sub-menu">
                                <li class="menu-item"><a href="./product1.html">产品展示1</a></li>
                                <li class="menu-item"><a href="./product2.html">产品展示2</a></li>
                                <li class="menu-item"><a href="./product3.html">产品展示3</a></li>
                            </ul>
                            <!-- sub-menu end-->
                        </li>
                        <li><a href="./example.html">客户案例</a></li>
                        <li><a href="./solution.html">解决方案</a></li>
                        <li>
                            <a href="./news.html">新闻中心</a>
                            <!-- sub-menu start-->
                            <ul class="sub-menu">
                                <li class="menu-item"><a href="./news-content.html">公司动态</a></li>
                                <li class="menu-item"><a href="./404-dark.html">行业动态</a></li>
                                <li class="menu-item"><a href="./404-light.html">精彩专题</a></li>
                            </ul>
                            <!-- sub-menu end-->
                        </li>
                        <li><a href="./about.html">关于我们</a></li>
                        <li><a href="./join.html">加入我们</a></li>
                        <li><a href="./contact.html">联系我们</a></li>
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
                                    <li class=""><a href="${pageContext.request.contextPath}/user/login.html" class="" >登录</a></li>
                                    <li class=""><a href="${pageContext.request.contextPath}/user/reg.html" class="" >注册</a></li>
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
                <h1 class="page-header-title">企业课程</h1>
            </div>
        </div>

        <div class="breadcrumb-box">
            <div class="am-container">
                <ol class="am-breadcrumb">
                    <li><a href="../index.html">首页</a></li>
                    <li class="am-active">公司动态</li>
                </ol>
            </div>
        </div>
    </div>

    <div class="section">
        <div class="container">
            <div class="section--header">
                <h2 class="section--title">Latest News</h2>
                <p class="section--description">
                    云适配与中建材信息技术股份有限公司（以下简称“中建信息”）联合举办的“战略
                    <br>合作签约仪式暨全国跨屏行动启动大会”在北京成功举办。
                </p>
            </div>
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
                                                            str +=" <div class='am-u-lg-4 am-u-md-6'><div class='article'><div class='article-img'><img src='${pageContext.request.contextPath}/upload/"+dat[i].referenceData+"' alt='' /></div><div class='article-header'><h2><a href='${pageContext.request.contextPath}/course/courseContent-"+dat[i].cid+"' rel=''>"+dat[i].schoolName+"</a></h2><ul class='article--meta'><li class='article--meta_item -date'>"+dat[i].courseName+"</li><li class='article--meta_item comments'>33 Comments</li></ul></div><div class='article--content'><p>作为一家技术创新型企业，技术的先进性和创新型是构建企业核心竞争力的根本。但是要想占领市场并获得持续增长，需要从服务市场的角度出发，为用户输出价值，也是云适配的发展宗旨。</p></div><div class='article--footer'><a href='${pageContext.request.contextPath}/course/courseContent-"+dat[i].cid+"' class='link'>Read More</a></div></div></div>";
                                                        }
                                                        $("#am-g").html(str)

                                                    });
                                });
            </script>
            <div class="news-contaier">
                <div class="blog">
                    <div class="am-g" id="am-g">

                    </div>









                    <!-- pagination-->
                    <ul class="am-pagination">
                        <li class="am-disabled"><a href="#">&laquo;</a></li>
                        <li class="am-active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">&raquo;</a></li>
                    </ul>
                </div>

            </div>
        </div>
    </div>



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
</div>

<script src="../assets/js/amazeui.js" charset="utf-8"></script>
</body>
</html>
