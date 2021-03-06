<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>我是房东</title>
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
			<p class="fl">我是房东</p>
		</div>
		
		<div class="clearfloat" id="main">
			<div class="land-banner clearfloat">
				<img src="upload/2.jpg"/>
			</div>
			<div class="land-ctent clearfloat">
				<ul>
					<li class="box-s clearfloat">
						<p class="tit fl">姓名</p>
						<input type="text" name="" id="" value="" placeholder="您的姓名" class="fl" />
					</li>
					<li class="box-s clearfloat">
						<p class="tit fl">手机号</p>
						<input type="text" name="" id="" value="" placeholder="您的手机号码" class="fl" />
					</li>
					<li class="box-s clearfloat">
						<p class="tit fl">起租房日期</p>
						<input type="text" name="" id="" value="" placeholder="请选择房屋起租日期" class="fl day" />
						<i class="iconfont icon-arrowright fl"></i>
					</li>
					<li class="box-s clearfloat">
						<p class="tit fl">类型</p>
						<input type="text" name="" id="" value="" placeholder="请选择房屋类型" class="fl day" />
						<i class="iconfont icon-arrowright fl"></i>
					</li>
					<li class="box-s clearfloat">
						<p class="tit fl">小区名称</p>
						<input type="text" name="" id="" value="" placeholder="房屋所在小区名称" class="fl day" />
						<i class="iconfont icon-arrowright fl"></i>
					</li>
					<li class="box-s clearfloat">
						<p class="tit fl">户型</p>
						<input type="text" name="" id="" value="" placeholder="请选择房屋户型" class="fl day" />
						<i class="iconfont icon-arrowright fl"></i>
					</li>
					<li class="box-s clearfloat">
						<p class="tit fl">意向租金</p>
						<input type="text" name="" id="" value="" placeholder="您的意向租金" class="fl day" />
						<i class="iconfont icon-arrowright fl"></i>
					</li>
				</ul>
				<a href="#loginmodal" id="modaltrigger">
					<input type="button" name="" id="" value="提交委托" class="btn" />
				</a>
			</div>
		</div>
		
		<!--弹窗内容 star-->
	    <div id="loginmodal" class="box-s loginmodaltwo" style="display:none;">	    	
			<form id="loginform" name="loginform" method="post" action="">		
				<div class="center"><input type="submit" name="loginbtn" id="loginbtn" class="flatbtn-blutwo hidemodal" value="" tabindex="3"></div>
			</form>
			<div class="bottom clearfloat box-s">
				<div class="login-dui clearfloat">
					<p class="tu">
						<img src="img/dui.png"/>
					</p>
					<p class="tit">
						恭喜您，委托成功！
					</p>
					<p class="fu-tit">
						请保持所填号码手机的通话畅通状态，我们的客服将会在48小时内与您取得联系。
					</p>
				</div>
				<input type="button" name="" id="" value="好的，我知道了" class="btn btn1" />
			</div>
		</div>
	    <!--弹窗内容 end-->
		
	</body>
	<script type="text/javascript" src="js/jquery-1.8.3.min.js" ></script>
	<script type="text/javascript" src="slick/slick.min.js" ></script>
	<script type="text/javascript" src="js/jquery.leanModal.min.js"></script>
	<script type="text/javascript" src="js/tchuang.js" ></script>
	<script type="text/javascript" src="js/hmt.js" ></script>
</html>
