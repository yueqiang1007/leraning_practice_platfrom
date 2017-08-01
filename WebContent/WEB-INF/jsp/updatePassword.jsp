<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/3/27
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>修改密码</title>
    <link rel="stylesheet" href="../assets/css/amazeui.css" />
    <link rel="stylesheet" href="../assets/css/common.min.css" />
    <link rel="stylesheet" href="../assets/css/other.min.css" />
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



    <!--===========layout-container================-->
    <div class="register-box">
        <form action="" class="am-form" data-am-validator>
            <fieldset>
                <legend>修改密码<p class="register-info">密码必须以字母开头，只能存在字母和数字，必须大于6位</p></legend>

                <div class="am-form-group">
                    <div class="am-g">
                        <div class="am-u-md-2 am-padding-0 am-text-right">
                            <label for="doc-vld-name-2" class="register-name">账号</label>
                        </div>
                        <div class="am-u-md-10">
                            <input ype="text" name="phone_number" id="doc-vld-name-2" minlength="3"
                                   placeholder="输入用户名（至少 3 个字符）" required/>
                        </div>
                    </div>
                </div>

                <div class="am-form-group">
                    <div class="am-g">
                        <div class="am-u-md-2 am-padding-0 am-text-right">
                            <label for="doc-vld-pwd-1" class="register-pwd">旧密码</label>
                        </div>
                        <div class="am-u-md-10">
                            <input type="password" id="doc-vld-pwd-1" placeholder="以字母开头大于6位"  required/>
                        </div>
                    </div>
                </div>

                <div class="am-form-group">
                    <div class="am-g">
                        <div class="am-u-md-2 am-padding-0 am-text-right">
                            <label for="doc-vld-pwd-2">新密码</label>
                        </div>
                        <div class="am-u-md-10">
                            <input type="password" name="password" id="doc-vld-pwd-2" placeholder="以字母开头6位" data-equal-to="#doc-vld-pwd-1" required/>
                        </div>
                    </div>
                </div>

                <div class="am-form-group">
                    <div class="am-g">
                        <div class="am-u-md-2 am-padding-0 am-text-right">
                            <label for="doc-vld-pwd-2">确认密码</label>
                        </div>
                        <div class="am-u-md-10">
                            <input type="password" name="fpwd"  placeholder="以字母开头6位" data-equal-to="#doc-vld-pwd-1" required/>
                        </div>
                    </div>
                </div>

                <div class="am-g">
                    <div class="am-u-md-10">
                        <button class="am-btn am-btn-secondary" type="submit">提交</button>
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
