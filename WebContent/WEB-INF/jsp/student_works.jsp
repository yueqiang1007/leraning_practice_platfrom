<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>作品上传</title>
    <link rel="stylesheet" href="../assets/css/amazeui.css" />
    <link rel="stylesheet" href="../assets/css/common.min.css" />
    <link rel="stylesheet" href="../assets/css/other.min.css" />
    <script src="../assets/js/jquery-2.1.0.js" charset="utf-8"></script>
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
        <form action="${pageContext.request.contextPath }/worksDetails/worksDo" method="post" enctype="multipart/form-data" class="am-form" >
            <fieldset>
                <legend>优秀作品<p class="register-info">您上传的作品会让更多的企业认识你，了解你！</p></legend>

                <div class="am-form-group">
                    <div class="am-g">
                        <div class="am-u-md-2 am-padding-0 am-text-right">
                            <label for="doc-vld-name-2" class="register-name">作品名称</label>
                        </div>
                        <div class="am-u-md-10">
                            <input type="text" name="worksName" id="doc-vld-name-2" minlength="3"
                                   placeholder="输入作品名称（至少 3 个字符）" required/>
                        </div>
                    </div>
                </div>

                <div class="am-form-group">
                    <div class="am-g">
                        <div class="am-u-md-2 am-padding-0 am-text-right">
                            <label for="doc-vld-pwd-1" class="register-pwd">作品介绍</label>
                        </div>
                        <div class="am-u-md-10">
                            <%--<input type="password" id="doc-vld-pwd-1" placeholder="6 位数字的银行卡密码" pattern="^\d{6}$" required/>--%>
                            <textarea name="detail" id="doc-vld-pwd-1" placeholder="对作品进行简要介绍（100字以内）"  required></textarea>
                        </div>
                    </div>
                </div>

                <div class="am-form-group">
                    <div class="am-g">
                        <div class="am-u-md-2 am-padding-0 am-text-right">
                            <label for="doc-vld-pwd-2">选择作品</label>
                        </div>
                        <div class="am-u-md-10">
                            <input type="file" name="file" id="doc-vld-pwd-2" placeholder="请选择作品" data-equal-to="#doc-vld-pwd-1" required/>
                        </div>
                    </div>
                </div>

                <div class="am-g">
                    <div class="am-u-md-10">
                        <%--<button class="am-btn am-btn-secondary" type="submit">提交</button>--%>
                        <input class="am-btn am-btn-secondary" type="submit" value="提交" />
                    </div>
                </div>
            </fieldset>
        </form>
    </div>
</div>





<script src="../assets/js/amazeui.js" charset="utf-8"></script>
</body>
<%--<form action="${pageContext.request.contextPath }/worksDetails/worksDo" method="post" enctype="multipart/form-data">
    <span>作品名称</span><input type="text" name="worksName">
    <span>作品描述</span><textarea name="detail"></textarea>
    <span>选取作品</span><input type="file" name="file">
    <input type="submit" value="上传">
</form>--%>
</html>