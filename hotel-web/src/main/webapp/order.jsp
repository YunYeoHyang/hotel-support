<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>订单确认</title>
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
    <link rel="stylesheet" type="text/css" href="../css/app.css" />
    <link rel="stylesheet" type="text/css" href="css/mui.min1.css"/>
	<link href="css/mui.picker.css" rel="stylesheet" />
	<link href="css/mui.poppicker.css" rel="stylesheet" />
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
			<p class="fl">订单确认</p>
		</div>
		
		<div class="order clearfloat" id="main">
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
					<li>
						<span>3</span>
						<p>租客付款</p>
					</li>
					<li>
						<span>4</span>
						<p>付款成功</p>
					</li>
				</ul>
				<span class="hline">
					<samp class="bline blinetwo"></samp>
				</span>				
			</div>
			<div class="order-top clearfloat box-s">
				<div class="tu clearfloat fl">
					<span></span>
					<img src="upload/4.jpg"/>
				</div>
				<div class="right clearfloat fl">
					<p class="tit">华府骏苑</p>
					<p class="fu-tit">合肥市蜀山区环宁路12号</p>
				</div>
			</div>
			<div class="land-ctent clearfloat pay-bottom order-bottom">
				<ul>
					<li class="box-s clearfloat">
						<p class="tit fl">租房押金</p>
						<p class="xinxi fr">2500元</p>
					</li>
					<li class="box-s clearfloat">
						<p class="tit fl">房租</p>
						<p class="xinxi fr">2500*3</p>
					</li>
					<li class="box-s clearfloat">
						<p class="tit fl">其他费用</p>
						<p class="xinxi fr">500</p>
					</li>
					<li class="box-s clearfloat">
						<p class="tit fl">平台佣金</p>
						<p class="xinxi fr">50</p>
					</li>					
					<li class="box-s clearfloat" id='showUserPicker'>
						<p class="tit fl">优惠券</p>
						<input type="text" name="" id="" value="" placeholder="10元优惠券" readonly="readonly" class="fl day daytwo" />
						<i class="iconfont icon-arrowright fl"></i>
					</li>					
				</ul>
			</div>
			<div class="total clearfloat box-s">
				<ul>
					<li class="box-s clearfloat">
						<p class="tit fl">订单总额：</p>
						<p class="price fr">¥7800</p>
					</li>
					<li class="box-s clearfloat">
						<p class="tit fl">优惠金额：</p>
						<p class="price fr">¥100</p>
					</li>
					<li class="box-s clearfloat">
						<p class="tit fl">可获得积分：</p>
						<p class="price fr">100分</p>
					</li>
				</ul>
			</div>			
		</div>
		
		<div class="order-footer clearfloat" id="footer">
			<p class="price fl box-s">应付金额：<span>¥7800</span></p>
			<a href="payment.jsp" class="fr">下一步</a>
		</div>
		
	</body>
	<script type="text/javascript" src="js/jquery-1.8.3.min.js" ></script>
	<script src="js/fastclick.js"></script>
	<script src="js/mui.min.js"></script>
	<script type="text/javascript" src="js/hmt.js" ></script>
	<script src="js/mui.picker.js"></script>
	<script src="js/mui.poppicker.js"></script>
	<script src="js/city.data.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/city.data-3.js" type="text/javascript" charset="utf-8"></script>
	<script>
			(function($, doc) {
				$.init();
				$.ready(function() {
					//普通示例
					var userPicker = new $.PopPicker();
					userPicker.setData([{
						value: '',
						text: '10元优惠券'
					}, {
						value: '',
						text: '20元优惠券'
					}, {
						value: '',
						text: '50元优惠券'
					}, {
						value: '',
						text: '30元优惠券'
					}, {
						value: '',
						text: '70元优惠券'
					}, {
						value: '',
						text: '100元优惠券'
					}, {
						value: '',
						text: '20元优惠券'
					}, {
						value: '',
						text: '15元优惠券'
					}, {
						value: '',
						text: '50元优惠券'
					}, {
						value: '', 
						text: '80元优惠券'
					}]);
					var showUserPickerButton = doc.getElementById('showUserPicker');
					var userResult = doc.getElementById('userResult');
					showUserPickerButton.addEventListener('tap', function(event) {
						userPicker.show(function(items) {
							userResult.innerText = JSON.stringify(items[0]);
							//返回 false 可以阻止选择框的关闭
							//return false;
						});
					}, false);
				
				
				});
			})(mui, document);
		</script>
</html>
