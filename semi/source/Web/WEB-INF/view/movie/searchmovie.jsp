<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="shortcut icon"	href="https://img.cgv.co.kr/theater_img/favicon.ico"	type="image/x-icon" />
<title>CGV &lt; 메인 | 영화 그 이상의 감동. CGV</title>
<script	src="<%=request.getContextPath()%>/resources/js/jquery-3.6.1.js"></script>

<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/reset.css?after"	type="text/css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/header.css"	type="text/css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/category.css"	type="text/css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/footer.css"	type="text/css" />
</head>
<body>
	<div id="component">
		<%@include file="/WEB-INF/view/component/header.jsp"%>
		<%@include file="/WEB-INF/view/component/category.jsp"%>
	</div>
	<br>
	<c:forEach items="${movielist }" var="vo">
		<div class="swiper-slide swiper-slide-movie">
			<div class="img_wrap" data-scale="false">
				<img src="https://dummyimage.com/170x234/f2f259/1d1e26"
					alt="블랙 팬서-와칸다 포에버" />

				<div class="movieAgeLimit_wrap">
					<i class="cgvIcon etc age12">12</i>
				</div>

				<div class="screenType_wrap">
					<i class="screenType"><img
						src="https://img.cgv.co.kr/R2014/images/common/logo/imax_white.png"
						alt="imax" /></i> <i class="screenType"><img
						src="https://img.cgv.co.kr/R2014/images/common/logo/forDX_white.png"
						alt="forDX" /></i> <i class="screenType"><img
						src="https://img.cgv.co.kr/R2014/images/common/logo/screenx_white.png"
						alt="screenx" /></i>
				</div>

				<div class="movieChart_btn_wrap">
					<a
						href="<%=request.getContextPath() %>/movieinfo?moviecd=${vo.moviecd }"
						onclick="gaEventLog('PC_메인', '무비차트_영화상세', '블랙 팬서-와칸다 포에버');"
						class="btn_movieChart_detail">상세보기</a> <a
						href="../ticket/ticket_main.jsp"
						onclick="gaEventLog('PC_메인', '무비차트_예매하기','블랙 팬서-와칸다 포에버')"
						class="btn_movieChart_ticketing">예매하기</a>
				</div>
			</div>
			<div class="movie_info_wrap">
				<strong class="movieName">${vo.movienm }</strong> <span> <img
					src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldenegggood.png"
					alt="Golden Egg Preegg" /> 84%
				</span> <span>예매율 35.7%</span>
			</div>
		</div>
	</c:forEach>
	<br>
	<%@include file="/WEB-INF/view/component/footer.jsp"%>
</body>
</html>