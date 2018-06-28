<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>支付成功</title>
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
			<p class="fl">支付成功</p>
		</div>
		
		<div class="success clearfloat" id="main">
			<div class="pay-top clearfloat">
				<ul>
					<li class="cur">
						<span>1</span>
						<p>提交信息</p>
					</li>
					<li class="cur">
						<span>2</span>
						<p>订单确认</p>
					</li>
					<li class="cur">
						<span>3</span>
						<p>租客付款</p>
					</li>
					<li class="cur">
						<span>4</span>
						<p>付款成功</p>
					</li>
				</ul>
				<span class="hline">
					<samp class="bline blinefour"></samp>
				</span>				
			</div>
			<div class="top clearfloat">
				<i class="iconfont icon-chenggong chenggong"></i>
				<p class="tit">恭喜您，成功支付房租！</p>
				<p class="fu-tit">您的房租已经支付成功，请保存好此支付凭证</p>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="js/jquery-1.8.3.min.js" ></script>
	<script src="js/fastclick.js"></script>
	<script src="js/mui.min.js"></script>
	<script type="text/javascript" src="js/hmt.js" ></script>
</html>
