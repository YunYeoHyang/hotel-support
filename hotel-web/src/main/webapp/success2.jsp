<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>修改成功</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <script src="${pageContext.request.contextPath}/js/rem.js"></script> 
    <script src="${pageContext.request.contextPath}/js/jquery.min.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/base.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/page.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/all.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/mui.min.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/loaders.min.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/loading.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/slick/slick.css"/>
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
			<a href="${pageContext.request.contextPath}/findAll.action" class="fl box-s"><i class="iconfont icon-arrow-l fl"></i></a>
			<p class="fl">提交成功</p>
		</div>
		
		<div class="success clearfloat" id="main">			
			<div class="top clearfloat">
				<i class="iconfont icon-chenggong chenggong"></i>
				<p class="tit">您的预约申请已提交！</p>
				<p class="fu-tit">请耐心等待我们的工作人员与您联系！</p>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js" ></script>
	<script src="${pageContext.request.contextPath}/js/fastclick.js"></script>
	<script src="${pageContext.request.contextPath}/js/mui.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/hmt.js" ></script>
</html>
