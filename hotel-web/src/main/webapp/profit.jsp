<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>我的收益</title>
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
			<p class="fl">我的收益</p>
		</div>
		
		<div class="profit clearfloat" id="main">
			<div class="top clearfloat box-s">
				<p class="fl">账户余额：<span>¥300</span></p>
				<a href="recharge.jsp" class="fr czhi">充值</a>
				<a href="carried.jsp" class="fr txian">提现</a>
			</div>
			
			<div class="bottom clearfloat">
				<div class="noticetwo">
					<div class="tab-hd clearfloat">
						<ul class="tab-nav clearfloat">
						  <li><a href="#">收入记录</a></li>
						  <li><a href="#">支出记录</a></li>
						</ul>
					</div>
					<div class="tab-bd clearfloat">
						<div class="tab-pal">
							<dl class="list clearfloat box-s fl">
								<dt>
									<p class="fl">怀宁路宁溪家园租房房租（3个月）</p>
									<span class="fr">+1000</span>
								</dt>
								<dd>2016-03-03</dd>
							</dl>
							<dl class="list clearfloat box-s fl">
								<dt>
									<p class="fl">怀宁路宁溪家园租房房租（3个月）</p>
									<span class="fr">+1000</span>
								</dt>
								<dd>2016-03-03</dd>
							</dl>
							<dl class="list clearfloat box-s fl">
								<dt>
									<p class="fl">怀宁路宁溪家园租房房租（3个月）</p>
									<span class="fr">+1000</span>
								</dt>
								<dd>2016-03-03</dd>
							</dl>
						</div>
						
						<div class="tab-pal">
							<dl class="list clearfloat box-s fl">
								<dt>
									<p class="fl">怀宁路宁溪家园租房房租（3个月）</p>
									<span class="fr">-1000</span>
								</dt>
								<dd>2016-03-03</dd>
							</dl>
							<dl class="list clearfloat box-s fl">
								<dt>
									<p class="fl">怀宁路宁溪家园租房房租（3个月）</p>
									<span class="fr">-1000</span>
								</dt>
								<dd>2016-03-03</dd>
							</dl>
							<dl class="list clearfloat box-s fl">
								<dt>
									<p class="fl">怀宁路宁溪家园租房房租（3个月）</p>
									<span class="fr">-1000</span>
								</dt>
								<dd>2016-03-03</dd>
							</dl>
						</div>
						
					</div>
				</div>
				
			</div>
		</div>
	</body>
	<script type="text/javascript" src="js/jquery-1.8.3.min.js" ></script>
	<script type="text/javascript" src="js/jquery.SuperSlide.2.1.js" ></script>
	<script type="text/javascript" src="js/hmt.js" ></script>
	<script type="text/javascript">
		jQuery(".noticetwo").slide({ titCell:".tab-hd li", mainCell:".tab-bd",trigger: "click",delayTime:0 });
	</script>
</html>
