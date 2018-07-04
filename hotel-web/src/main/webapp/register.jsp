<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>用户注册</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <script src="js/rem.js"></script>
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="css/base.css"/>
    <link rel="stylesheet" type="text/css" href="css/page.css"/>
    <link rel="stylesheet" type="text/css" href="css/all.css"/>
    <link rel="stylesheet" type="text/css" href="css/mui.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/loaders.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/loading.css"/>
    <link rel="stylesheet" type="text/css" href="slick/slick.css"/>
	<script type="text/javascript">


        var InterValObj; //timer变量，控制时间
        var count = 120; //间隔函数，1秒执行
        var curCount;//当前剩余秒数
        var code = ""; //验证码
        var codeLength = 6;//验证码长度

        function sendMessage() {
            curCount = count;
            var phone = $("#phone").val();
            var jbPhoneTip = $("#jbPhoneTip").text();
            if (phone != "") {
                    // 产生验证码
                    for ( var i = 0; i < codeLength; i++) {
                        code += parseInt(Math.random() * 9).toString();
                    }
                    // 设置button效果，开始计时
                    $("#btnSendCode").attr("disabled", "true");
                    $("#btnSendCode").val("请在" + curCount + "秒内输入验证码");
                    InterValObj = window.setInterval(SetRemainTime, 1000); // 启动计时器，1秒执行一次
                    // 向后台发送处理数据
                    $.ajax({
                        type: "POST", // 用POST方式传输
                        dataType: "text", // 数据格式:JSON
                        url: "modify.action", // 目标地址
                        data: "phone=" + phone + "code" + code

                    });
            }
        }

        //timer处理函数
        function SetRemainTime() {
            if (curCount == 0) {
                window.clearInterval(InterValObj);// 停止计时器
                $("#btnSendCode").removeAttr("disabled");// 启用按钮
                $("#btnSendCode").val("重新发送验证码");
                code = ""; // 清除验证码。如果不清除，过时间后，输入收到的验证码依然有效
            }else {
                curCount--;
                $("#btnSendCode").val("请在" + curCount + "秒内输入验证码");
            }
        };

        $(document).ready(function() {
            $("#SmsCheckCode").blur(function() {
                var SmsCheckCodeVal = $("#SmsCheckCode").val();
                // 向后台发送处理数据
                $.ajax({
                    url : "checkCode.action",
                    data : {SmsCheckCode : SmsCheckCodeVal},
                    type : "POST",
                    dataType : "text"
                });
            });
        });



			function register() {
                // var phone = document.getElementById("1").value;
                var password = document.getElementById("4").value;
                var password1 = document.getElementById("5").value;
                if (password!=password1) {
					alert("两次密码不一致")
                } else{
                    $("#f1").submit();
                }
            }



		$(window).load(function(){
			$(".loading").addClass("loader-chanage")
			$(".loading").fadeOut(300)
		})
	</script>
</head>
<!--loading页开始-->
<div class="loading">
	<div class="loader">
        <div class="loader-inner pacman">
          <div></div>
          <div></div>
          <div></div>
          <div></div>
          <div></div>
        </div>
	</div>
</div>
<!--loading页结束-->
	<body>
		<div class="headertwo clearfloat" id="header">
			<a href="javascript:history.go(-1)" class="fl box-s"><i class="iconfont icon-arrow-l fl"></i></a>
			<p class="fl">用户注册</p>
		</div>

		<div class="register clearfloat" id="main">
			<form  id="f1" action="/register.action" method="post">

			<ul>
				<li class="clearfloat">
					<p class="tit fl">手机号</p>
					<input type="text" id="phone" name="phone" class="shuru fl" placeholder="请输入手机号码" />
				</li>
				<li class="clearfloat">
					<p class="tit fl">验证码</p>
					<input type="text" id="SmsCheckCode" name="SmsCheckCode" class="shuru shurutwo fl" placeholder="请输入短信验证码" />
						<input type="button" id="btnSendCode" name="btnSendCode" value="获取短信验证码" class="btn fr" onclick="sendMessage()" />
				</li>
				<li class="clearfloat">
					<p class="tit fl">密码</p>
					<input type="password" id="4" name="password" class="shuru fl" placeholder="请设置长度6-12位的密码" />
				</li>
				<li class="clearfloat">
					<p class="tit fl">确认密码</p>
					<input type="password" id="5" name="password1" class="shuru fl" placeholder="请再次输入密码" />
				</li>
			</ul>
			<a onclick="register()" class="pay-btn clearfloat">
				注册
			</a>
				<%--<input type="submit" class="pay-btn clearfloat">--%>
			</form>
			<div class="bottom clearfloat">
				<p class="fl">
					已有账号？
					<a href="register.jsp">立即登录</a>
				</p>
			</div>
		</div>

		<!--弹窗内容 star-->
	    <div id="loginmodalt" class="box-s loginmodaltwo" style="display:none;">
	    	<div class="top clearfloat box-s">
	    		<p class="tit">请输入图片验证码</p>
	    		<div class="xia clearfloat">
	    			<input type="text" id="" value="" class="yzm fl" placeholder="填写图片验证码" />
	    			<span class="fl">reties</span>
	    			<a><i class="iconfont icon-shuaxin fr"></i></a>
	    		</div>
	    	</div>
			<form id="loginform" name="loginform" method="post" action="">
				<div class="center fl"><input type="submit" name="loginbtn" id="loginbtn" class="hidemodal" value="取消" tabindex="3"></div>
				<div class="center fl"><input type="submit" name="loginbtn" id="loginbtn" class="hidemodal" value="确定" tabindex="3"></div>
			</form>
		</div>
	    <!--弹窗内容 end-->
	</body>
	<script type="text/javascript" src="js/jquery-1.8.3.min.js" ></script>
	<script type="text/javascript" src="js/jquery.SuperSlide.2.1.js" ></script>
	<script type="text/javascript" src="js/hmt.js" ></script>
	<script type="text/javascript" src="js/jquery.leanModal.min.js"></script>
	<script type="text/javascript" src="js/tchuang.js" ></script>
</html>
