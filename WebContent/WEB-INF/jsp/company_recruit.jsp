<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发布招聘信息</title>
    <link rel="stylesheet" href="../assets/css/amazeui.css" />
    <link rel="stylesheet" href="../assets/css/common.min.css" />
    <link rel="stylesheet" href="../assets/css/contact.min.css" />

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


    <!--===========layout-container================-->
    <div class="layout-container">
        <div class="page-header">
            <div class="am-container">
                <h1 class="page-header-title">招聘</h1>
            </div>
        </div>

        <div class="breadcrumb-box">
            <div class="am-container">
                <ol class="am-breadcrumb">
                    <li><a href="../index.html">首页</a></li>
                    <li class="am-active">公司招聘</li>
                </ol>
            </div>
        </div>
    </div>

    <div class="section">
        <div class="container">
            <div class="section--header">
                <h2 class="section--title">招聘详情</h2>
                <p class="section--description">
                    夫学须静也，才须学也，非学无以广才，非志无以成学！<br/>

                </p>
            </div>

            <div class="section-container">
                <div class="am-g">
                    <!--contact-left start-->
                    <div class="am-u-md-5">
                        <ul class="contact-left">
                            <li class="contact-box-item">
                                <div class="contact_item">
                                    <i class="contact_item--icon am-icon-phone"></i>
                                    <h3 class="contact_item--title">Call Us</h3>
                                    <p class="contact_item--text">
                                        联系电话： <strong>400-069-0309</strong>,
                                        <br> Monday - Friday, 8am - 7pm
                                    </p>
                                </div>
                            </li>
                            <li class="contact-item">
                                <div class="contact_item">
                                    <i class="contact_item--icon am-icon-envelope-o"></i>
                                    <h3 class="contact_item--title">Drop a Line</h3>
                                    <p class="contact_item--text">
                                        service@yunshipei.com, <br/>期待您的来信...
                                    </p>
                                </div>
                            </li>
                            <li class="contact-item">
                                <div class="contact_item">
                                    <i class="contact_item--icon am-icon-map-marker"></i>
                                    <h3 class="contact_item--title">Visit Us</h3>
                                    <p class="contact_item--text">
                                        北京市海淀区海淀大街27号天使大厦（原亿景大厦）三层西侧
                                    </p>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <!--contact-left end-->

                    <!--contact-right start-->
                    <div class="am-u-md-7">
                        <div class="contact-form">
                            <h3 class="contact-form_title">填写职位详情</h3>
                            <form action="${pageContext.request.contextPath }/recruit/recruitDo" method="post" class="am-form">
                                <div class="am-g">
                                    <div class="am-u-md-6">
                                        <input type="text" name="jobTitle" class="" id="doc-ipt-email-1" placeholder="职位名称">
                                    </div>
                                    <div class="am-u-md-6">
                                        <input type="text" name="recruitingNumbers" class="" id="doc-ipt-email-2" placeholder="职位人数">
                                    </div>
                                </div>

                                <div class="am-g">
                                    <div class="am-u-md-6">
                                        <input type="text" name="minSalary" class="" id="doc-ipt-email-3" placeholder="最低薪资">
                                    </div>
                                    <div class="am-u-md-6">
                                        <input type="text" name="maxSalary" class="" id="doc-ipt-email-4" placeholder="最高薪资">
                                    </div>
                                </div>

                                <div class=am-g>
                                    <div class="am-u-md-12">
                                        <div class="am-form-group">
                                            <textarea name="jobDescription" class="" rows="5" id="doc-ta-1" placeholder="职位描述..."></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class=am-g>
                                    <div class="am-u-md-12">
                                        <div class="am-form-group">
                                            <textarea name="jobRequirements" class="" rows="5" id="doc-ta-2" placeholder="职位要求..."></textarea>
                                        </div>
                                    </div>
                                </div>

                                <div class="am-g">
                                    <div class="am-u-md-9">
                                        <div class="am-form-group am-form-file">
                                            <button type="button" class="am-btn am-btn-default am-btn-sm btn-change">
                                                <i class="am-icon-cloud-upload"></i> 上传文件</button>
                                            <input type="file" multiple>
                                        </div>
                                    </div>
                                    <div class="am-u-md-3">
                                        <p><button type="submit" class="am-btn am-btn-default btn-reguest am-fr btn-fl">提交</button></p>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!--contact-right end-->
                </div>
            </div>
        </div>
    </div>
</div>


<div class="section" style="margin-top:0px;background-image: url('../assets/images/pattern-light.png');">
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

<!--===========layout-container================-->
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
<script src="../assets/js/jquery-2.1.0.js" charset="utf-8"></script>
<script src="../assets/js/amazeui.js" charset="utf-8"></script>
</body>

</html>