<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>资料上传</title>
<link href="${pageContext.request.contextPath }/css/administrator.css" rel="stylesheet" type="text/css" media="all">
</head>
<body>
<div class="header">
    <div class="container">
        <div class="header-top1">

    </div>
        <div class="header-top">
            <div class="logo">
                <a href="index.html">leraning
                    <span>practice</span></a>
            </div>
            <div class="top-menu">
            </div>
        </div>
    </div>
</div>

<div class="cont">
<div class="fm">
<form action="${pageContext.request.contextPath }/course/courseDo" method="post" enctype="multipart/form-data" >
    <input type="hidden" name="state" value="0">
    <div>
    <span>学校标志 </span><input type="file" name="files">
</div>
    <div>
    <span>学校名字: </span><input type="text" name="schoolName">
    </div>
    <div>
    <span>课程名字: </span><input type="text" name="courseName">
    </div>
    <div>
        <span>课程类别: </span><input type="text" name="orientation">
    </div>
    <div>
    <span>课程特点: </span><textarea name="courseTrait">    </textarea>
    </div>
    <div>
    <span>课程概述: </span><textarea name="courseSummarize"></textarea>
    </div>
    <div>
    <span>授课大纲: </span><textarea name="courseOutline">  </textarea>
    </div>
    <div>
    <span>参考资料: </span><input type="file" name="files">
    </div>
    <div>
    <span>课程视频: </span><input type="file" name="files">
    </div>
    <div>
    <span>授课时间: </span><input type="text" name="teachingMode">
    </div>
    <div>
    <span>上课时间: </span><input type="date" name="airTime">
    </div>
    <div>
    <input type="submit" value="提交" class="submit">
    </div>
</form>
</div>
</div>
</body>

</html>