<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>订单评价</title>
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
			<p class="fl">订单评价</p>
		</div>
		
		<div class="assess clearfloat" id="main">
			<div class="top clearfloat">
				<i class="iconfont icon-edit-copy edit fl"></i>
				<textarea name="" rows="4" cols="" class="tarea fr box-s" placeholder="师傅的服务如何，服务周到吗，服务态度好吗，技术过关吗？"></textarea>
			</div>
			<div class="bottom clearfloat">
				<i class="iconfont icon-xiangji"></i>
			</div>
			<div class="stars clearfloat box-s">
				<ul>
					<li>
						服务评价
					</li>
					<li class="assess-right">
						<img onclick="level(1)" src="img/detail-iocn001.png"/>
						<img onclick="level(2)" src="img/detail-iocn001.png"/>
						<img onclick="level(3)" src="img/detail-iocn001.png"/>
						<img onclick="level(4)" src="img/detail-iocn001.png"/>
						<img onclick="level(5)" src="img/detail-iocn001.png"/>
					</li>
				</ul>
			</div>
			<a href="#" class="pay-btn clearfloat">
				发表评价
			</a>
		</div>
	</body>
	<script type="text/javascript" src="js/jquery-1.8.3.min.js" ></script>
	<script type="text/javascript" src="js/hmt.js" ></script>
	<!--星星-->
	<script type="text/javascript">
		function level(s)
		{			
			var str = '';		
			var k = 6-s;			
			for(i=1;i<s+1;i++)			{	
				str += "<img onclick='level("+i+")' src='img/detail-iocn01.png'/>";
			}
			for(j=1;j<k;j++)
			{
				var d=j+s
				str += "<img onclick='level("+d+")' src='img/detail-iocn001.png'/>";
			}		
			$('.assess-right').html(str);
		}		
	</script>
</html>
