<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>看房日程</title>r
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
        $(window).load(function () {
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
    <p class="fl bt">看房日程</p>
</div>

<div class="clearfloat" id="main">
    <div class="schedule clearfloat">
        <div class="notice">
            <div class="tab-hd clearfloat">
                <ul class="tab-nav clearfloat">
                    <li><a href="#" id="aaa1" name="1">进行中的约看</a></li>
                    <li><a href="#" id="bbb1" name="2">已完成的约看</a></li>
                </ul>
            </div>
            <script type="text/javascript">
                $(function () {
                    $("#aaa1").click(function () {
                        $("#abcde").html("");
                        $("#abcde").append('<c:forEach items="${AllSchedule}" var="schedule">\n' +
                            '                        <c:if test="${schedule.viewStatus == 1}">\n' +
                            '                            <div class="content clearfloat box-s">\n' +
                            '                                <div class="topsche-top box-s clearfloat">\n' +
                            '                                    <p class="fl add">\n' +
                            '                                        <i class="iconfont icon-map"></i>\n' +
                            '                                        合肥·出租房\n' +
                            '                                    </p>\n' +
                            '                                    <p class="fl time">\n' +
                            '                                        <i class="iconfont icon-time"></i>\n' +
                            '                                            ${schedule.scheduleDate}\n' +
                            '                                    </p>\n' +
                            '                                    <c:if test="${schedule.viewStatus == \'1\'}">\n' +
                            '                                        <p class="tit fr">\n' +
                            '                                            正在确认\n' +
                            '                                        </p>\n' +
                            '                                    </c:if>\n' +
                            '                                </div>\n' +
                            '                                <div class="list clearfloat fl box-s">\n' +
                            '                                    <a href="${pageContext.request.contextPath}/findAllHouse.action?hid=${schedule.hid}">\n' +
                            '                                        <div class="tu clearfloat">\n' +
                            '                                            <span></span>\n' +
                            '                                            <img src="${schedule.house.houseImg}"/>\n' +
                            '                                        </div>\n' +
                            '                                        <div class="right clearfloat">\n' +
                            '                                            <div class="tit clearfloat">\n' +
                            '                                                <p class="fl"> ${schedule.house.regionName}</p>\n' +
                            '                                                <span class="fr">${schedule.house.rentIntention}<samp>元/月</samp></span>\n' +
                            '                                            </div>\n' +
                            '                                            <p class="recom-jianjie">${schedule.house.apartment}| 125m²\n' +
                            '                                                | ${schedule.house.houseType}</p>\n' +
                            '                                            <div class="recom-bottom clearfloat">\n' +
                            '                                                <span><i class="iconfont icon-duihao"></i>随时住</span>\n' +
                            '                                                <span><i class="iconfont icon-duihao"></i>家电齐全</span>\n' +
                            '                                            </div>\n' +
                            '                                        </div>\n' +
                            '                                    </a>\n' +
                            '                                </div>\n' +
                            '                            </div>\n' +
                            '                        </c:if>\n' +
                            '                    </c:forEach>')
                    })
                    $("#bbb1").click(function () {
                        $("#abcde").html("");
                        $("#abcde").append('<c:forEach items="${AllSchedule}" var="schedule">\n' +
                            '                        <c:if test="${schedule.viewStatus == 2}">\n' +
                            '                            <div class="content clearfloat box-s">\n' +
                            '                                <div class="topsche-top box-s clearfloat">\n' +
                            '                                    <p class="fl add">\n' +
                            '                                        <i class="iconfont icon-map"></i>\n' +
                            '                                        合肥·出租房\n' +
                            '                                    </p>\n' +
                            '                                    <p class="fl time">\n' +
                            '                                        <i class="iconfont icon-time"></i>\n' +
                            '                                            ${schedule.scheduleDate}\n' +
                            '                                    </p>\n' +
                            '                                    <c:if test="${schedule.viewStatus  == \'2\'}">\n' +
                            '                                        <p class="tit titwo fr">\n' +
                            '                                            租住此房\n' +
                            '                                        </p>\n' +
                            '                                    </c:if>\n' +
                            '                                </div>\n' +
                            '                                <div class="list clearfloat fl box-s">\n' +
                            '                                    <a href="${pageContext.request.contextPath}/findAllHouse.action?hid=${schedule.hid}">\n' +
                            '                                        <div class="tu clearfloat">\n' +
                            '                                            <span></span>\n' +
                            '                                            <img src="${schedule.house.houseImg}"/>\n' +
                            '                                        </div>\n' +
                            '                                        <div class="right clearfloat">\n' +
                            '                                            <div class="tit clearfloat">\n' +
                            '                                                <p class="fl"> ${schedule.house.regionName}</p>\n' +
                            '                                                <span class="fr">${schedule.house.rentIntention}<samp>元/月</samp></span>\n' +
                            '                                            </div>\n' +
                            '                                            <p class="recom-jianjie">${schedule.house.apartment}| 125m²\n' +
                            '                                                | ${schedule.house.houseType}</p>\n' +
                            '                                            <div class="recom-bottom clearfloat">\n' +
                            '                                                <span><i class="iconfont icon-duihao"></i>随时住</span>\n' +
                            '                                                <span><i class="iconfont icon-duihao"></i>家电齐全</span>\n' +
                            '                                            </div>\n' +
                            '                                        </div>\n' +
                            '                                    </a>\n' +
                            '                                </div>\n' +
                            '                            </div>\n' +
                            '                        </c:if>\n' +
                            '                    </c:forEach>')

                    })
                })
            </script>
            <div class="tab-bd clearfloat">
                <div class="tab-pal" id="abcde">
                    <c:forEach items="${AllSchedule}" var="schedule">
                        <c:if test="${schedule.viewStatus == 1}">
                            <div class="content clearfloat box-s">
                                <div class="topsche-top box-s clearfloat">
                                    <p class="fl add">
                                        <i class="iconfont icon-map"></i>
                                        合肥·出租房
                                    </p>
                                    <p class="fl time">
                                        <i class="iconfont icon-time"></i>
                                            ${schedule.scheduleDate}
                                    </p>
                                    <c:if test="${schedule.viewStatus == '1'}">
                                        <p class="tit fr">
                                            正在确认
                                        </p>
                                    </c:if>
                                </div>
                                <div class="list clearfloat fl box-s">
                                    <a href="${pageContext.request.contextPath}/findAllHouse.action?hid=${schedule.hid}">
                                        <div class="tu clearfloat">
                                            <span></span>
                                            <img src="${schedule.house.houseImg}"/>
                                        </div>
                                        <div class="right clearfloat">
                                            <div class="tit clearfloat">
                                                <p class="fl"> ${schedule.house.regionName}</p>
                                                <span class="fr">${schedule.house.rentIntention}<samp>元/月</samp></span>
                                            </div>
                                            <p class="recom-jianjie">${schedule.house.apartment}| 125m²
                                                | ${schedule.house.houseType}</p>
                                            <div class="recom-bottom clearfloat">
                                                <span><i class="iconfont icon-duihao"></i>随时住</span>
                                                <span><i class="iconfont icon-duihao"></i>家电齐全</span>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </c:if>
                    </c:forEach>
                </div>
            </div>
            <jsp:include page="low.jsp"></jsp:include>
        </div>
    </div>
</div>
</body>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.2.1.js"></script>
<script type="text/javascript" src="slick/slick.min.js"></script>
<script type="text/javascript" src="js/jquery.leanModal.min.js"></script>
<script type="text/javascript" src="js/tchuang.js"></script>
<script type="text/javascript" src="js/hmt.js"></script>
<script type="text/javascript">
    jQuery(".notice").slide({titCell: ".tab-hd li", mainCell: ".tab-bd", trigger: "click", delayTime: 0});
</script>
</html>
