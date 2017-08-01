<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>课程详情界面</title>
    <script src="../assets/js/jquery-2.1.0.js" charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/js/jquery-1.11.2.js"></script>
    <link href="${pageContext.request.contextPath}/css/video-js.css" rel="stylesheet" type="text/css">
    <script src="${pageContext.request.contextPath}/js/video.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/amazeui.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/common.min.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/news.min.css" />
    <script type="text/javascript">

            $("#attend").click(function () {
                alert("kkkkkk");
                $.get("${pageContext.request.contextPath}/course/attenDo-${requestScope.course.cid}",function (dat) {
                    alert(dat);
                });
            });
    </script>
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
      <!--topbar start-->
      <!--topbar end-->

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
          <h1 class="page-header-title">${requestScope.course.schoolName}</h1>
        </div>
      </div>

      <div class="breadcrumb-box">
        <div class="am-container">
          <ol class="am-breadcrumb">
            <li><a href="../index.html">首页</a></li>
            <li class="am-active">${requestScope.course.courseName}</li>
          </ol>
        </div>
      </div>
    </div>

    <div class="section news-section">
      <div class="container">
        <!--news-section left start-->
        <div class="am-u-md-9">
          <div class="article">
            <header class="article--header">
              <h2 class="article--title"><a href="#" rel=""> ${requestScope.course.courseName}</a></h2>
              <ul class="article--meta">
                <li class="article--meta_item"><i class="am-icon-calendar"></i>October 10, 2016</li>
                <li class="article--meta_item"><i class="am-icon-user"></i>by张三</li>
                <li class="article--meta_item"><i class="am-icon-commenting-o"></i>33评论</li>
              </ul>
            </header>
            <div class="article--content">
                <p>课程特点：</p>
              <p>
                ${requestScope.course.courseTrait}
							</p>
              <figure><%--<img src="../assets/images/news/post01.jpg" alt="">--%>
                  <video id="example_video_1" class="video-js vjs-default-skin" controls preload="none" width="800" height="300"
                         poster="../assets/images/news/post01.jpg"
                         data-setup="{}">
                      <source src="${pageContext.request.contextPath}/upload/${requestScope.course.courseVideo}" type='video/mp4' />
                      <source src="${pageContext.request.contextPath}/upload/${requestScope.course.courseVideo}" type='video/webm' />
                      <source src="${pageContext.request.contextPath}/upload/${requestScope.course.courseVideo}" type='video/ogg' />
                      <track kind="${pageContext.request.contextPath}/upload/${requestScope.course.courseVideo}" srclang="en" label="English"></track><!-- Tracks need an ending tag thanks to IE9 -->
                      <track kind="${pageContext.request.contextPath}/upload/${requestScope.course.courseVideo}" srclang="en" label="English"></track><!-- Tracks need an ending tag thanks to IE9 -->
                  </video>
              </figure>
                <p>课程概述:</p>
              <p>
                ${requestScope.course.courseSummarize}
              </p>
              <figure><img src="../assets/images/news/post02.jpg" alt=""></figure>
              <p>
              </p>
                <p>授课大纲:</p>
              <p>
                ${requestScope.course.courseOutline}
              </p>
              <p>
            
              </p>
            </div>
          </div>

          <div class="comments">
            <div class="comments">
							<h2 class="comments--title">课程品论</h2>
							<ul class="comments_list">
								<li class="comment">
									<header class="comment--header">
										<figure class="comment--userpic"><img src="../assets/images/news/av01.jpg" alt=""></figure>
										<strong class="comment--username"><a href="#">Brad Bukovsky</a></strong>
										<time datetime="2001-05-15T19:00" class="comment--date">2017.03.05</time>
									</header>
									<div class="comment--content">
										<p>
                     希望可以延长上课时间
										</p>
										<a href="#" class="comment--reply">回复</a>
									</div>
									<ul class="comments_list">
										<li class="comment">
											<header class="comment--header">
												<figure class="comment--userpic"><img src="../assets/images/news/av02.jpg" alt=""></figure>
												<strong class="comment--username"><a href="#">Brad Bukovsky</a></strong>
												<time datetime="2001-05-15T19:00" class="comment--date">2017.03.20</time>
											</header>
											<div class="comment--content">
												<p>
                          不错!
												</p>
												<a href="#" class="comment--reply">回复</a>
											</div>
										</li>
									</ul>
								</li>
								<li class="comment">
									<header class="comment--header">
										<figure class="comment--userpic"><img src="../assets/images/news/av01.jpg" alt=""></figure>
										<strong class="comment--username"><a href="#">Brad Bukovsky</a></strong>
										<time datetime="2001-05-15T19:00" class="comment--date">2017.04.12</time>
									</header>
									<div class="comment--content">
										<p>
                      长知识了
										</p>
										<a href="#" class="comment--reply">回复</a>
									</div>
								</li>
							</ul>
							<div class="comment_form">
								<h2 class="comment_form--title">我的见解</h2>
                <form action="${pageContext.request.contextPath }/comment/saveComment" method="post" class="am-form am-form-horizontal">
                   <input type="hidden" value="${requestScope.course.cid}" name="cid">
                  <div class="am-form-group">
                    <div class="am-g">
                      <textarea name="commentText" cols="30" rows="10" placeholder="请输入...."></textarea>
                    </div>
                    <div class="comment-form-footer">
                      <button type="submit" class="am-btn am-btn-secondary">确认提交</button>
                    </div>
                  </div>
                </form>

							</div>
						</div>
          </div>
        </div>
        <!--news-section left end-->

        <!--news-section right start-->
        <div class="am-u-md-3">
          <div class="blog_sidebar">
            <div class="widget">
              <h2 class="widget--title"><i class="am-icon-file-text-o"></i>课程安排</h2>
              <ul>
								<li><a href="#">课程周期：${requestScope.course.teachingMode}&nbsp;&nbsp;周</a></li>
								<li><a href="#">开始时间：${requestScope.course.airTime}</a></li>
								<li><a href="${pageContext.request.contextPath}/course/attenDo-${requestScope.course.cid}">参加课程</a></li>
							</ul>

            </div>
            <div class="widget">
              <h2 class="widget--title"><i class="am-icon-comments-o"></i>热门动态</h2>
              <ul>
								<li><a href="#">科大讯飞严峻：借力HTML5 推进“智能语音技术”应用普及</a></li>
								<li><a href="#">金山万勇：打破信息孤岛 HTML5优势凸显将成核心</a></li>
								<li><a href="#">阿里吴志华：基于HTML5技术开发Native体验应用</a></li>
							</ul>
            </div>
            <div class="widget">
              <h2 class="widget--title"><i class="am-icon-rss"></i>站内公告</h2>
              <ul>
								<li><a href="#">今天的应用号只是用了HTML技术中无需下载安装、跨平台的功能， 并没有用到HTML开发互联的精髓。 它只是一个...</a><span class="rss-date">2017.03.28</span></li>
								<li><a href="#">云适配带来了一个全新的“互联网+政务”解决方案，我们可以非常好的利用你现有的IT系统，就是你还是用原来的PC网站一套系统，只要安装一下云适配的产品Xcloud网站跨屏...</a><span class="rss-date">2017.04.22</span></li>
							</ul>
            </div>
          </div>
        </div>
        <!--news-section right end-->
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

  <script src="../assets/js/amazeui.js" charset="utf-8"></script>
  <script type="text/javascript">
      var myPlayer = videojs('example_video_1');
      videojs("example_video_1").ready(function(){
          var myPlayer = this;
          myPlayer.play();
      });
  </script>
</body> 

</html>