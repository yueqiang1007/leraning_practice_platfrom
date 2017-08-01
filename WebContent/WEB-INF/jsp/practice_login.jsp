<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>实践战场登录</title>
    <link href="${pageContext.request.contextPath }/css/login.css" rel="stylesheet" type="text/css" media="all"/>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.2.js"></script>
    <script type="text/javascript">
        $(function(){
            $("#phone").blur(function(){
                getPhone_numberVal();
            });
        });

        function getPhone_numberVal(){
            var val=$("#phone").val();
            $.getJSON("${pageContext.request.contextPath }/user/opinion",{phone_number:val},function(da){
                if(da.state==1){
                    $("#inner").html(da.massge+"请注册").css("color","red");
                }else if(da.state==0){
                    $("#inner").html("");
                    $("#state").val(0);
                    if(da.sta==2){
                        $("#state").val(2);
                    }
                }
            });
        };
    </script>
</head>
<body>
<div class="login">
    <h2>Leraning Practice</h2>
    <div class="login-top">
        <h1>实践战场登录</h1>
        <form action="${pageContext.request.contextPath }/user/practiceLoginDo"
              method="post">
            <input type="hidden" name="state"  id="state">
            <input type="text" name="phone_number" id="phone" value="电话号码" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '电话号码';}">
            <span id="inner"></span>
            <input type="password" name="password" value="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'password';}">

            <div class="forgot">
                <a href="#">忘记密码</a>
                <input type="submit" value="登录" >
            </div>
        </form>
    </div>
    <div class="login-bottom">
        <h3>新用户 &nbsp;<a href="${pageContext.request.contextPath }/user/reg.html">注册</a>&nbsp Here</h3>
    </div>
</div>

</body>
</html>
