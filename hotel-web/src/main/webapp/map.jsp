<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>地图找房</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <script src="js/rem.js"></script> 
    <script src="js/jquery.min.js" type="text/javascript"></script>
	<style type="text/css">
		body, html,#allmap {width: 100%;height: 100%;overflow: hidden;margin:0;font-family:"微软雅黑";}
	</style>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=VtSKgaF1dGZhaGLmgjig5GpUO0pqIeKU"></script>
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
	<div id="allmap"></div>
		<div class="headertwo clearfloat" id="header">
			<a href="javascript:history.go(-1)" class="fl box-s"><i class="iconfont icon-arrow-l fl"></i></a>
			<p class="fl">地图找房</p>
		</div>		
		<%--<div class="clearfloat" id="main">--%>
			<%--<div class="menu-list clearfloat am-share">--%>
				<%--<ul class="yiji">--%>
					<%--<li onClick="toshare()">--%>
						<%--<a href="#" class="inactive">区域<i></i></a>--%>
						<%--<ul style="display: none">--%>
							<%--<li><a href="#">包河区</a></li> --%>
							<%--<li><a href="#">庐阳区</a></li> --%>
							<%--<li><a href="#">蜀山区</a></li> --%>
							<%--<li><a href="#">瑶海区</a></li> --%>
							<%--<li><a href="#">高新区</a></li> --%>
							<%--<li><a href="#">新站区</a></li> --%>
						<%--</ul>--%>
					<%--</li>--%>
					<%--<li onClick="toshare()">--%>
						<%--<a href="#" class="inactive">租金<i></i></a>--%>
						<%--<ul style="display: none">--%>
							<%--<li><a href="#">100-200元</a></li> --%>
							<%--<li><a href="#">300-500元</a></li> --%>
							<%--<li><a href="#">600-800元</a></li> --%>
							<%--<li><a href="#">800-1000元</a></li> --%>
						<%--</ul>--%>
					<%--</li>--%>
					<%--<li onClick="toshare()">--%>
						<%--<a href="#" class="inactive">排序<i></i></a>--%>
						<%--<ul style="display: none">--%>
							<%--<li><a href="#">价格</a></li> --%>
							<%--<li><a href="#">区域</a></li> --%>
						<%--</ul>--%>
					<%--</li>--%>
				<%--</ul>--%>
			<%--</div>--%>
			<%----%>
			<div class="clearfloat recomtwo">
				<a href="map-house.jsp">
		    		<img src="upload/map.jpg"/>
		    	</a>
		    </div>
	    </div>
	</body>
	<script type="text/javascript" src="js/jquery-1.8.3.min.js" ></script>
	<script type="text/javascript" src="js/psong.js" ></script>
	<script type="text/javascript" src="js/hmt.js" ></script>
</html>
<script type="text/javascript">
    // 百度地图API功能
    var map = new BMap.Map("allmap");
    var point = new BMap.Point(116.331398,39.897445);
    map.centerAndZoom(point,12);

    var geolocation = new BMap.Geolocation();
    geolocation.getCurrentPosition(function(r){
        if(this.getStatus() == BMAP_STATUS_SUCCESS){
            var mk = new BMap.Marker(r.point);
            map.addOverlay(mk);
            map.panTo(r.point);
            alert('您的位置：'+r.point.lng+','+r.point.lat);
        }
        else {
            alert('failed'+this.getStatus());
        }
    },{enableHighAccuracy: true})
    //关于状态码
    //BMAP_STATUS_SUCCESS	检索成功。对应数值“0”。
    //BMAP_STATUS_CITY_LIST	城市列表。对应数值“1”。
    //BMAP_STATUS_UNKNOWN_LOCATION	位置结果未知。对应数值“2”。
    //BMAP_STATUS_UNKNOWN_ROUTE	导航结果未知。对应数值“3”。
    //BMAP_STATUS_INVALID_KEY	非法密钥。对应数值“4”。
    //BMAP_STATUS_INVALID_REQUEST	非法请求。对应数值“5”。
    //BMAP_STATUS_PERMISSION_DENIED	没有权限。对应数值“6”。(自 1.1 新增)
    //BMAP_STATUS_SERVICE_UNAVAILABLE	服务不可用。对应数值“7”。(自 1.1 新增)
    //BMAP_STATUS_TIMEOUT	超时。对应数值“8”。(自 1.1 新增)
</script>