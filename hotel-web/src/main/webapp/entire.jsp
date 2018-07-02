<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>整租</title>
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
    <script type="text/javascript" src="js/menu.js" ></script>
	<script type="text/javascript">
		$(window).load(function(){
			$(".loading").addClass("loader-chanage")
			$(".loading").fadeOut(300)
		})
      /*  $(function(){
            var url = "${pageContext.request.contextPath}//.action";
            var params = {};

            $.ajax({
                "url":url,
                "data": JSON.stringify(params),
                "type":"post",
                "success":function( data ){
                    $(data).each( function(){
                        $("#oneLevel").append("<li><a href='${pageContext.request.contextPath}/house/list.action' id=\"\">"+this+"</a></li>");
                    } );
                },
                "error":function(){

                },
                "dataType":"json",
                "contentType":"application/json;charset=UTF-8",
            });

		})*/



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
			<p class="fl">沭阳</p>
			<a href="javascript:history.go(-1)" class="fr"><i class="iconfont icon-sousuo fl"></i></a>
		</div>		
		<div class="clearfloat" id="main">
			<div class="menu-list clearfloat am-sharetwo">
				<ul class="yiji" id="oe_menu">
					<li>
						<a href="#" class="inactive">区域<i></i></a>
						<ul style="display: none" id="oneLevel">
							<li><a href="${pageContext.request.contextPath}">包河区</a></li>
							<li><a href="#">庐阳区</a></li> 
							<li><a href="#">蜀山区</a></li> 
							<li><a href="#">瑶海区</a></li> 
							<li><a href="#">高新区</a></li> 
							<li><a href="#">新站区</a></li> 
						</ul>
					</li>
					<li>
						<a href="#" class="inactive">租金<i></i></a>
						<ul style="display: none">
							<li><a href="#">100-200元</a></li> 
							<li><a href="#">300-500元</a></li> 
							<li><a href="#">600-800元</a></li> 
							<li><a href="#">800-1000元</a></li> 
						</ul>
					</li>
					<li>
						<a href="#" class="inactive">排序<i></i></a>
						<ul style="display: none">
							<li><a href="#">价格</a></li> 
							<li><a href="#">区域</a></li> 
						</ul>
					</li>
				</ul>
			</div>
			
        <c:forEach items="${st}" var="thisstock">

			<div class="recom clearfloat recomtwo">
		    	<div class="content clearfloat box-s">
		    		<div class="list clearfloat fl box-s">
		    			<a href="${pageContext.request.contextPath}/house.action?hid=${thisstock.hid}">
			    			<div class="tu clearfloat">
			    				<span></span>
			    				<img src="${thisstock.houseImg}"/>
			    			</div>
			    			<div class="right clearfloat">
			    				<div class="tit clearfloat">
			    					<p class="fl">${thisstock.regionName}</p>
			    					<span class="fr">${thisstock.rentIntention}<samp>元/月</samp></span>
			    				</div>
			    				<p class="recom-jianjie">${thisstock.apartment}|  125m²  |  普装</p>
			    				<div class="recom-bottom clearfloat">
			    					<span><i class="iconfont icon-duihao"></i>${thisstock.status}</span>
			    					<%--<span><i class="iconfont icon-duihao"></i>家电齐全</span>--%>
			    				</div>
			    			</div>
		    			</a>
		    		</div>
		    	</div>
		    </div>
        </c:forEach>
	    </div>
	</body>
	<script type="text/javascript" src="js/jquery-1.8.3.min.js" ></script>
	<script type="text/javascript" src="js/psong.js" ></script>
	<script type="text/javascript" src="js/hmt.js" ></script>
</html>
