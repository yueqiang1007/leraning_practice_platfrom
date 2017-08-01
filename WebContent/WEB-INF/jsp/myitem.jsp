<%--
  Created by IntelliJ IDEA.
  User: euyer
  Date: 2017/4/22
  Time: 21:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>我的项目</title>
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
                                <a href=""><%--<img src="${pageContext.request.contextPath}/assets/images/logo.png" alt="" />--%></a>
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

                        </li>
                        <li><a href="${pageContext.request.contextPath}/course/myCourse.html">我的课程</a>

                        </li>
                        <li><a href="#">作品中心</a>
                            <ul class="sub-menu">
                                <li class="menu-item"><a href="${pageContext.request.contextPath}/worksDetails/student_works.html">上传作品</a></li>
                                <li class="menu-item"><a href="${pageContext.request.contextPath}/worksDetails/myWorks-1.html">我的作品</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">我的项目</a>
                            <!-- sub-menu start-->

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


    <!--===========layout-container================-->
    <div class="layout-container">
        <div class="page-header">
            <div class="am-container">
                <h1 class="page-header-title">我的项目</h1>
            </div>
        </div>

        <div class="breadcrumb-box">
            <div class="am-container">
                <ol class="am-breadcrumb">
                    <li><a href="../index.html">首页</a></li>
                    <li class="am-active">我的项目</li>
                </ol>
            </div>
        </div>
    </div>

    <div class="section">
        <div class="container">
            <div class="section--header">
                <h2 class="section--title">项目</h2>
                <p class="section--description">
                    你要有知识，你就得参加变革现实的实践。你要知道梨子的滋味，你就得变革梨子，亲自吃一吃
                    <br>——毛泽东
                </p>
            </div>

            <div class="join-container">
                <div class="am-g">
                    <div class="am-u-md-3">
                        <div class="careers--articles">
                            <h3 class="careers--subtitle">团队介绍</h3>
                            <div class="careers_articles">
                                <div class="careers_article">
                                    <i class="careers_article--icon am-icon-diamond"></i>
                                    <h3 class="careers_article--title">项目团队</h3>
                                    <div class="careers_article--text">
                                        <p>
                                            成员既有超级学霸（来自Harvard、Google、香港科技大学、中国科技大学），也有来自行业的技术大拿。
                                        </p>
                                    </div>
                                    <div class="careers_article--footer"><a href="#" class="link">====</a></div>
                                </div>
                                <div class="careers_article">
                                    <i class="careers_article--icon am-icon-key"></i>
                                    <h3 class="careers_article--title">项目时间</h3>
                                    <div class="careers_article--text">
                                        <p>
                                            开始时间：${requestScope.item.startTime}
                                        </p>
                                        <p>
                                            结束时间：${requestScope.item.endTime}
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
                        <h3 class="careers--subtitle">项目详情:</h3>
                        <div class="careers--vacancies">
                            <div class="am-panel-group" id="accordion">

                                    <div class="am-panel am-
                                    <c:forEach items="${requestScope.itemlist}" var="items">panel-default">
                                        <div class="am-panel-hd">
                                            <h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#do-not-say-1'}">
                                                    ${items.item.itemName}
                                            </h4>
                                        </div>
                                        <div id="do-not-say-1" class="am-panel-collapse am-collapse am-in">
                                            <div class="am-panel-bd">
                                                <div class="vacancies--item_content js-accordion--pane_content" style="">
                                                    <h5>项目描述：</h5>
                                                    <p>
                                                            ${items.item.itemDescribe}
                                                    </p>
                                                    <p>
                                                            ${items.item.itemClaim}
                                                    </p>

                                                    <h5>提交项目： </h5>
                                                    <form action="/completeItem/saveCompleteItemDo-${items.item.itemId}" method="post" enctype="multipart/form-data">
                                                        <input type="text" name="itemName"><input type="file" name="file"><input type="submit" value="上传">
                                                    </form>
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
