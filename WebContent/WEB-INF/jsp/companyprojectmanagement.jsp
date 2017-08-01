<%--
  Created by IntelliJ IDEA.
  User: euyer
  Date: 2017/4/22
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>公司项目页</title>
    <link rel="stylesheet" href="../assets/css/amazeui.css" />
    <link rel="stylesheet" href="../assets/css/common.min.css" />
    <link rel="stylesheet" href="../assets/css/join.min.css" />
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
                            <c:if test="${sessionScope.companyID==null}">
                                <a href="${pageContext.request.contextPath}/company/company_reg.html">登录</a>
                                <a href="${pageContext.request.contextPath}/company/company_login.html">注册</a>
                            </c:if>
                            <c:if test="${sessionScope.companyID !=null}">
                                ${sessionScope.companyMail}您好
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
                                            <strong>0 (855) 233-5385</strong>
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
                                <a href="html/contact.html" class="contact-btn">
                                    <button type="button" class="am-btn am-btn-secondary am-radius">消息中心</button>
                                </a>
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
                        <li class=""><a href="./index.html">首页</a></li>
                        <li>
                            <a href="#">优秀作品</a>
                            <!-- sub-menu start-->
                            <ul class="sub-menu">
                                <li class="menu-item"><a href="html/product1.html">作品1</a></li>
                                <li class="menu-item"><a href="html/product2.html">作品2</a></li>
                                <li class="menu-item"><a href="html/product3.html">作品3</a></li>
                            </ul>
                            <!-- sub-menu end-->
                        </li>
                        <li><a href="html/example.html">已上传课程</a></li>
                        <li><a href="${pageContext.request.contextPath}/item/projectItemDo">已上传项目</a></li>
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
                        <li><a href="${pageContext.request.contextPath}/course/companyleraning.html">上传课程</a></li>
                        <li><a href="${pageContext.request.contextPath }/item/itemInterface.html">上传项目</a></li>
                        <li><a href="html/contact.html">企业中心</a>
                            <ul class="sub-menu">
                                <li class="menu-item"><a href="html/product1.html">企业信息</a></li>
                                <li class="menu-item"><a href="html/product2.html">修改密码</a></li>
                                <li class="menu-item"><a href="html/product3.html">注&nbsp;&nbsp;销</a></li>
                            </ul>
                        </li>
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
        <div class="page-header">
            <div class="am-container">
                <h1 class="page-header-title">项目管理</h1>
            </div>
        </div>

        <div class="breadcrumb-box">
            <div class="am-container">
                <ol class="am-breadcrumb">
                    <li><a href="../index.html">首页</a></li>
                    <li class="am-active">项目管理</li>
                </ol>
            </div>
        </div>
    </div>

    <div class="section">
        <div class="container">
            <div class="section--header">
                <h2 class="section--title">公司项目</h2>
                <p class="section--description">
                    你要有知识，你就得参加变革现实的实践。你要知道梨子的滋味，你就得变革梨子，亲自吃一吃
                    <br>——毛泽东
                </p>
            </div>

            <div class="join-container">
                <div class="am-g">
                    <div class="am-u-md-3">
                        <div class="careers--articles">
                            <h3 class="careers--subtitle">公司团队</h3>
                            <div class="careers_articles">
                                <div class="careers_article">
                                    <i class="careers_article--icon am-icon-diamond"></i>
                                    <h3 class="careers_article--title">项目团队</h3>
                                    <div class="careers_article--text">
                                        <p>
                                            成员既有超级学霸（来自Harvard、Google、香港科技大学、中国科技大学），也有来自行业的技术大拿。
                                        </p>
                                    </div>
                                    <div class="careers_article--footer"><a href="#" class="link">加入团队</a></div>
                                </div>
                                <div class="careers_article">
                                    <i class="careers_article--icon am-icon-key"></i>
                                    <h3 class="careers_article--title">待项目处理</h3>
                                    <div class="careers_article--text">
                                        <p>
                                            水果店点头设计
                                        </p>
                                    </div>
                                    <div class="careers_article--footer"><a href="#" class="link">Learn More</a></div>
                                </div>
                                <div class="careers_article">
                                    <i class="careers_article--icon am-icon-paper-plane-o"></i>
                                    <h3 class="careers_article--title">我们的队友</h3>
                                    <div class="careers_article--text">
                                        <p>
                                            充满热情的队友，也是一起撸串、篮球、足球、动感单车、甚至桌上足球组队互虐的好基友
                                        </p>
                                    </div>
                                    <div class="careers_article--footer"><a href="#" class="link">Learn More</a></div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="am-u-md-9">
                        <h3 class="careers--subtitle">公司项目:</h3>
                        <div class="careers--vacancies">
                            <div class="am-panel-group" id="accordion">
                                <c:forEach items="${requestScope.listItem}" var="item">
                                    <div class="am-panel am-panel-default">
                                        <div class="am-panel-hd">
                                            <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#do-not-say-1'}">
                                                    ${item.itemName}
                                            </h4>
                                        </div>
                                        <div id="do-not-say-1" class="am-panel-collapse am-collapse am-in">
                                            <div class="am-panel-bd">
                                                <div class="vacancies--item_content js-accordion--pane_content" style="">
                                                    <h5>${item.mold}: </h5>
                                                    <p>
                                                            ${item.itemDescribe}
                                                    </p>
                                                    <h5>项目详情：<a href="mailto:jobs@yunshipei.com">项目修改</a></h5>
                                                    <table border="1px">
                                                        <tr>
                                                            <th>图片标志</th>
                                                            <th>项目名</th>
                                                            <th>学生名</th>
                                                            <th>上传时间</th>
                                                            <th>操作</th>
                                                        </tr>
                                                    <c:forEach items="${item.completeItemList}" var="complete">

                                                            <tr>
                                                                <td><img style="width: 100px;height: 80px;" src="${pageContext.request.contextPath}/upload/${complete.itemText}"></td>
                                                                <td>${complete.itemName}</td>
                                                                <td>${complete.user.phone_number}</td>
                                                                <td>${complete.completeTime}</td>
                                                                <td><a href="#">查看</a>|<a id="caina" href="url">采纳</a>|<a href="#">下载</a></td>

                                                            </tr>

                                                    </c:forEach>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>


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
<script src="../assets/js/jquery-2.1.0.js" charset="utf-8"></script>
<script src="../assets/js/amazeui.js" charset="utf-8"></script>
</body>
</html>
