<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>租房订单</title>
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
			<p class="fl">租房订单</p>
		</div>
		
		<div class="rent clearfloat" id="main">
			<div class="top clearfloat">
				<ul>
					<li class="cur">
						<a href="rent-order.jsp">全部订单</a>
					</li>
					<li>
						<a href="rent-order.jsp">待付款</a>
					</li>
					<li>
						<a href="empty-list.jsp">待评价</a>
					</li>
					<li>
						<a href="empty-list.jsp">已完成</a>
					</li>
				</ul>
			</div>
			
			<div class="schedule clearfloat collection">
				<div class="content clearfloat box-s">
					<div class="topsche-top box-s clearfloat">
						<p class="fl add">
							看房时间：2016-04-30
						</p>
						<p class="tit fr">
							待支付
						</p>
					</div>
		    		<div class="list clearfloat fl box-s">
		    			<a href="house-details.jsp">
			    			<div class="tu clearfloat">
			    				<span></span>
			    				<img src="upload/list-tu.jpg"/>
			    			</div>
			    			<div class="right clearfloat">
			    				<div class="tit clearfloat">
			    					<p class="fl">华府骏苑</p>
			    				</div>
			    				<p class="recom-jianjie">三室一厅一卫   |  125m²  |  普装</p>
			    				<div class="recom-bottom clearfloat">
			    					2500<samp>元/月</samp>
			    				</div>
			    			</div>
		    			</a>
		    		</div>
		    		<div class="topsche-top entrust box-s clearfloat">
						<a href="pay-rent.jsp" class="tit fr entrust-btn">
							付款
						</a>
						<a href="#" class="tit fr entrust-btn rent-btn">
							取消订单
						</a>
					</div>
		    	</div>

		    	<div class="content clearfloat box-s">
					<div class="topsche-top box-s clearfloat">
						<p class="fl add">
							看房时间：2016-04-30
						</p>
						<p class="tit fr">
							待评价
						</p>
					</div>
		    		<div class="list clearfloat fl box-s">
		    			<a href="house-details.jsp">
			    			<div class="tu clearfloat">
			    				<span></span>
			    				<img src="upload/list-tu.jpg"/>
			    			</div>
			    			<div class="right clearfloat">
			    				<div class="tit clearfloat">
			    					<p class="fl">华府骏苑</p>
			    				</div>
			    				<p class="recom-jianjie">三室一厅一卫   |  125m²  |  普装</p>
			    				<div class="recom-bottom clearfloat">
			    					2500<samp>元/月</samp>
			    				</div>
			    			</div>
		    			</a>
		    		</div>
		    		<div class="topsche-top entrust box-s clearfloat">
						<a href="assess.jsp" class="tit fr entrust-btn">
							待评价
						</a>
						<a href="#" class="tit fr entrust-btn rent-btn">
							取消订单
						</a>
					</div>
		    	</div>
		    	
		    	<div class="content clearfloat box-s">
					<div class="topsche-top box-s clearfloat">
						<p class="fl add">
							看房时间：2016-04-30
						</p>
						<p class="tit titwo fr">
							已完成
						</p>
					</div>
		    		<div class="list clearfloat fl box-s">
		    			<a href="house-details.jsp">
			    			<div class="tu clearfloat">
			    				<span></span>
			    				<img src="upload/list-tu.jpg"/>
			    			</div>
			    			<div class="right clearfloat">
			    				<div class="tit clearfloat">
			    					<p class="fl">华府骏苑</p>
			    				</div>
			    				<p class="recom-jianjie">三室一厅一卫   |  125m²  |  普装</p>
			    				<div class="recom-bottom clearfloat">
			    					2500<samp>元/月</samp>
			    				</div>
			    			</div>
		    			</a>
		    		</div>
		    		<div class="topsche-top entrust box-s clearfloat">
						<a href="#" class="tit fr entrust-btn rent-btn">
							取消订单
						</a>
					</div>
		    	</div>
		    	
		    	
			</div>
			
		</div>
	</body>
	<script type="text/javascript" src="js/jquery-1.8.3.min.js" ></script>
	<script type="text/javascript" src="js/jquery.SuperSlide.2.1.js" ></script>
	<script type="text/javascript" src="slick/slick.min.js" ></script>
	<script type="text/javascript" src="js/jquery.leanModal.min.js"></script>
	<script type="text/javascript" src="js/tchuang.js" ></script>
	<script type="text/javascript" src="js/hmt.js" ></script>
</html>
