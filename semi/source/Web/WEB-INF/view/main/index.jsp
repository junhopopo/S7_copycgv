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
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/webcontent.css"	type="text/css" />

<%-- <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/content.css"	type="text/css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/layout.css"	type="text/css" /> --%>
<%-- <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/module.css"	type="text/css" /> --%>
<%-- <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/movie_content.css"	type="text/css" /> --%>
<%-- <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/movie_layout.css"	type="text/css" /> --%>
<%-- <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/reservation_tnb.css"	type="text/css" /> --%>
<%-- <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/reservation.css"	type="text/css" /> --%>
<%-- <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/reserve_header.css"	type="text/css" /> --%>
<%-- <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/reserve_reset.css"	type="text/css" /> --%>
<%-- <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/reserve.css"	type="text/css" /> --%>

<script type="text/javascript"	src="https://img.cgv.co.kr/resource_pc/js/cgvUi.js"></script>
<script type="text/javascript"	src="https://img.cgv.co.kr/R2014/js/swiper.min.js"></script>
<link rel="stylesheet" type="text/css"	href="https://img.cgv.co.kr/resource_pc/css/cgv.min.css" />
<link rel="stylesheet" media="all" type="text/css"	href="https://img.cgv.co.kr/R2014/css/swiper-bundle.min.css" />
<link rel="stylesheet" media="all" type="text/css"	href="https://img.cgv.co.kr/R2014/css/preegg.css" />
<link rel="stylesheet" media="all" type="text/css"	href="https://img.cgv.co.kr/R2014/css/eggupdate.css" />

<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$(".specialHall_list a")
								.on(
										{
											mouseenter : function(e) {
												var target = e.target;
												var idx = $(target).closest(
														"li").index();

												var arrimgUrl = [
														"https://img.cgv.co.kr//Front/Main/2021/1209/16390080561620.png",
														"https://img.cgv.co.kr//Front/Main/2022/0616/16553622935690.png",
														"https://img.cgv.co.kr//Front/Main/2021/1130/16382612660240.png",
														"https://img.cgv.co.kr//Front/Main/2021/1130/16382612660560.png", ];

												$(target).closest("li")
														.addClass("active")
														.siblings("li")
														.removeClass("active");
												$(".specialHall_link").attr(
														"href", target.href); // 링크 주소 넣을 곳
												$(".specialHall_link img")
														.attr("src",
																arrimgUrl[idx]);
												$(".specialHall_link img")
														.attr(
																"alt",
																$(target)
																		.children(
																				"strong")
																		.text());
											},
										});
					});
</script>
<script type="text/javascript">
	$(document).ready(function() {
		var movieChartSwiper = new Swiper("#movieChart_list", {
			slidesPerView : 5, // 레이아웃 뷰 갯수
			spaceBetween : 32, // 뷰 여백
			slidesPerGroup : 5, // 레이아웃 그룹
			loopFillGroupWithBlank : true,
			navigation : {
				nextEl : ".swiper-button-next", // 다음 버튼
				prevEl : ".swiper-button-prev", // 이전 버튼
			},
		});
	});
</script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#btnMovie").click(function() {
			$("#movieChart_list").show();
			$("#movieChart_list_Reser").hide();
			$("#btnMovie").css("color", "black");
			$("#btnReserMovie").css("color", "#666666");
		});
		$("#btnReserMovie").click(function() {
			$("#movieChart_list").hide();
			$("#movieChart_list_Reser").show();
			$("#btnReserMovie").css("color", "black");
			$("#btnMovie").css("color", "#666666");
		});
		var movieChartSwiper2 = new Swiper("#movieChart_list_Reser", {
			slidesPerView : 5,
			spaceBetween : 14,
			slidesPerGroup : 5,
			navigation : {
				nextEl : ".swiper-button-next",

				prevEl : ".swiper-button-prev",
			},
		});
		$("#movieChart_list_Reser").hide(); //swiper 랜더링 완료 후 숨기기해야함
	});
</script>

</head>
<body>
	<div id="component">
<%@include file="/WEB-INF/view/component/header.jsp"%>
<%@include file="/WEB-INF/view/component/category.jsp"%>
	</div>

	<div style="clear: both"></div>
	<div id="m_contaniner">
		<div class="movieChartBeScreen_wrap">
			<div class="m_contents">
				<div class="movieChartBeScreen_btn_wrap">
					<div class="tabBtn_wrap">
						<h3>
							<a href="#" class="active" id="btnMovie">무비차트</a>
						</h3>
						<h3>
							<a href="#" id="btnReserMovie">상영예정작</a>
						</h3>
					</div>
					<a href="../movie/movie_0.jsp" id="btn_allView_Movie"
						class="btn_allView">전체보기</a>
				</div>

				<div class="swiper movieChart_list" id="movieChart_list">
					<div class="swiper-wrapper">
						<!-- 포스터 약 20-->
						<c:forEach items="${movielist }" var="vo" >
						<div class="swiper-slide swiper-slide-movie">
							<div class="img_wrap" data-scale="false">
								<img
									src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86119/86119_320.jpg"
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
									<a href="<%=request.getContextPath() %>/movieinfo?moviecd=${vo.moviecd }"
										onclick="gaEventLog('PC_메인', '무비차트_영화상세', '블랙 팬서-와칸다 포에버');"
										class="btn_movieChart_detail">상세보기</a>
									<a href="../ticket/ticket_main.jsp"
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
						
					</div>

					<div class="swiper-button-next"></div>
					<div class="swiper-button-prev"></div>
				</div>
				<div class="swiper movieChart_list" id="movieChart_list_Reser">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							<div class="img_wrap" data-scale="false">
								<img
									src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86500/86500_320.jpg"
									alt="극장판 소드 아트 온라인 -프로그레시브- 짙은 어둠의 스케르초" />
								<div class="movieAgeLimit_wrap">
									<i class="cgvIcon etc age12">12</i>
									<div class="dDay_wrap">
										<span>1</span>
									</div>
								</div>
								<div class="screenType_wrap"></div>
								<div class="movieChart_btn_wrap">
									<a href="#" class="btn_movieChart_detail">상세보기</a> <a href="#"
										class="btn_movieChart_ticketing">예매하기</a>
								</div>
							</div>
							<div class="movie_info_wrap">
								<strong class="movieName">극장판 소드
									아트 온라인 -프로그레시브- 짙은 어둠의 스케르초</strong> <span> <img
									src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png"
									alt="Golden Egg Preegg" /> 99%
								</span> <span>예매율 1.2%</span>
							</div>
						</div>
						<div class="swiper-slide">
							<div class="img_wrap" data-scale="false">
								<img
									src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86502/86502_320.jpg"
									alt="바르도, 약간의 진실을 섞은 거짓된 연대기" />
								<div class="movieAgeLimit_wrap">
									<i class="cgvIcon etc ageNotyet">미정</i>
									<div class="dDay_wrap">
										<span>7</span>
									</div>
								</div>
								<div class="screenType_wrap"></div>
								<div class="movieChart_btn_wrap">
									<a href="#" class="btn_movieChart_detail">상세보기</a>
								</div>
							</div>
							<div class="movie_info_wrap">
								<strong class="movieName">바르도,
									약간의 진실을 섞은 거짓된 연대기</strong> <span> <img
									src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png"
									alt="Golden Egg Preegg" /> ?
								</span> <span>예매율 0.0%</span>
							</div>
						</div>
						<div class="swiper-slide">
							<div class="img_wrap" data-scale="false">
								<img
									src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86462/86462_320.jpg"
									alt="2022 카타르월드컵 대한민국vs우루과이" />
								<div class="movieAgeLimit_wrap">
									<i class="cgvIcon etc ageAll">All</i>
									<div class="dDay_wrap">
										<span>15</span>
									</div>
								</div>
								<div class="screenType_wrap"></div>
								<div class="movieChart_btn_wrap">
									<a href="#" class="btn_movieChart_detail">상세보기</a> <a href="#"
										class="btn_movieChart_ticketing">예매하기</a>
								</div>
							</div>
							<div class="movie_info_wrap">
								<strong class="movieName">2022
									카타르월드컵 대한민국vs우루과이</strong> <span> <img
									src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png"
									alt="Golden Egg Preegg" /> ?
								</span> <span>예매율 0.0%</span>
							</div>
						</div>
						<div class="swiper-slide">
							<div class="img_wrap" data-scale="false">
								<img
									src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86463/86463_320.jpg"
									alt="2022 카타르월드컵 대한민국vs가나" />
								<div class="movieAgeLimit_wrap">
									<i class="cgvIcon etc ageAll">All</i>
									<div class="dDay_wrap">
										<span>19</span>
									</div>
								</div>
								<div class="screenType_wrap"></div>
								<div class="movieChart_btn_wrap">
									<a href="#" class="btn_movieChart_detail">상세보기</a> <a href="#"
										class="btn_movieChart_ticketing">예매하기</a>
								</div>
							</div>
							<div class="movie_info_wrap">
								<strong class="movieName">2022
									카타르월드컵 대한민국vs가나</strong> <span> <img
									src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png"
									alt="Golden Egg Preegg" /> ?
								</span> <span>예매율 0.0%</span>
							</div>
						</div>
						<div class="swiper-slide">
							<div class="img_wrap" data-scale="false">
								<img
									src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86464/86464_320.jpg"
									alt="2022 카타르월드컵 대한민국vs포르투갈" />
								<div class="movieAgeLimit_wrap">
									<i class="cgvIcon etc ageAll">All</i>
									<div class="dDay_wrap">
										<span>23</span>
									</div>
								</div>
								<div class="screenType_wrap"></div>
								<div class="movieChart_btn_wrap">
									<a href="#" class="btn_movieChart_detail">상세보기</a> <a href="#"
										class="btn_movieChart_ticketing">예매하기</a>
								</div>
							</div>
							<div class="movie_info_wrap">
								<strong class="movieName">2022
									카타르월드컵 대한민국vs포르투갈</strong> <span> <img
									src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png"
									alt="Golden Egg Preegg" /> ?
								</span> <span>예매율 0.0%</span>
							</div>
						</div>
						<div class="swiper-slide">
							<div class="img_wrap" data-scale="false">
								<img
									src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86460/86460_320.jpg"
									alt="같은 속옷을 입는 두 여자" />
								<div class="movieAgeLimit_wrap">
									<i class="cgvIcon etc age15">15</i>
									<div class="dDay_wrap">
										<span>1</span>
									</div>
								</div>
								<div class="movieChart_btn_wrap">
									<a href="#" class="btn_movieChart_detail">상세보기</a> <a href="#"
										class="btn_movieChart_ticketing">예매하기</a>
								</div>
							</div>
							<div class="movie_info_wrap">
								<strong class="movieName">같은 속옷을 입는 두 여자</strong> <span>
									<img
									src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png"
									alt="Golden Egg Preegg" /> ?
								</span> <span>예매율 1.2%</span>
							</div>
						</div>
						<div class="swiper-slide">
							<div class="img_wrap" data-scale="false">
								<img
									src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86319/86319_320.jpg"
									alt="첫번째 아이" />
								<div class="movieAgeLimit_wrap">
									<i class="cgvIcon etc age12">12</i>
									<div class="dDay_wrap">
										<span>1</span>
									</div>
								</div>
								<div class="screenType_wrap"></div>
								<div class="movieChart_btn_wrap">
									<a href="#" class="btn_movieChart_detail">상세보기</a> <a href="#"
										class="btn_movieChart_ticketing">예매하기</a>
								</div>
							</div>
							<div class="movie_info_wrap">
								<strong class="movieName">첫번째 아이</strong> <span> <img
									src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png"
									alt="Golden Egg Preegg" /> 99%
								</span> <span>예매율 0.1%</span>
							</div>
						</div>
						<div class="swiper-slide">
							<div class="img_wrap" data-scale="false">
								<img
									src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86427/86427_320.jpg"
									alt="[사이다경제_사계강의(가을)]10년 후에도 살아남을 주식에 투자하라" />
								<div class="movieAgeLimit_wrap">
									<i class="cgvIcon etc ageAll">All</i>
									<div class="dDay_wrap">
										<span>6</span>
									</div>
								</div>
								<div class="screenType_wrap"></div>
								<div class="movieChart_btn_wrap">
									<a href="#" class="btn_movieChart_detail">상세보기</a> <a href="#"
										class="btn_movieChart_ticketing">예매하기</a>
								</div>
							</div>
							<div class="movie_info_wrap">
								<strong class="movieName">[사이다경제_사계강의(가을)]10년
									후에도 살아남을 주식에 투자하라</strong> <span> <img
									src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png"
									alt="Golden Egg Preegg" /> ?
								</span> <span>예매율 0.0%</span>
							</div>
						</div>
						<div class="swiper-slide">
							<div class="img_wrap" data-scale="false">
								<img
									src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86420/86420_320.jpg"
									alt="데시벨" />
								<div class="movieAgeLimit_wrap">
									<i class="cgvIcon etc age12">12</i>
									<div class="dDay_wrap">
										<span>7</span>
									</div>
								</div>
								<div class="screenType_wrap"></div>
								<div class="movieChart_btn_wrap">
									<a href="#" class="btn_movieChart_detail">상세보기</a> <a href="#"
										class="btn_movieChart_ticketing">예매하기</a>
								</div>
							</div>
							<div class="movie_info_wrap">
								<strong class="movieName">데시벨</strong> <span> <img
									src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png"
									alt="Golden Egg Preegg" /> 99%
								</span> <span>예매율 6.2%</span>
							</div>
						</div>
						<div class="swiper-slide">
							<div class="img_wrap" data-scale="false">
								<img
									src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86326/86326_320.jpg"
									alt="동감" />
								<div class="movieAgeLimit_wrap">
									<i class="cgvIcon etc age12">12</i>
									<div class="dDay_wrap">
										<span>7</span>
									</div>
								</div>
								<div class="screenType_wrap"></div>
								<div class="movieChart_btn_wrap">
									<a href="#" class="btn_movieChart_detail">상세보기</a> <a href="#"
										class="btn_movieChart_ticketing">예매하기</a>
								</div>
							</div>
							<div class="movie_info_wrap">
								<strong class="movieName">동감</strong> <span> <img
									src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png"
									alt="Golden Egg Preegg" /> 99%
								</span> <span>예매율 5.6%</span>
							</div>
						</div>
						<div class="swiper-slide">
							<div class="img_wrap" data-scale="false">
								<img
									src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86338/86338_320.jpg"
									alt="폴-600미터" />
								<div class="movieAgeLimit_wrap">
									<i class="cgvIcon etc age12">12</i>
									<div class="dDay_wrap">
										<span>7</span>
									</div>
								</div>
								<div class="screenType_wrap"></div>
								<div class="movieChart_btn_wrap">
									<a href="#" class="btn_movieChart_detail">상세보기</a> <a href="#"
										class="btn_movieChart_ticketing">예매하기</a>
								</div>
							</div>
							<div class="movie_info_wrap">
								<strong class="movieName">폴-600미터</strong> <span> <img
									src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png"
									alt="Golden Egg Preegg" /> 99%
								</span> <span>예매율 1.9%</span>
							</div>
						</div>
						<div class="swiper-slide">
							<div class="img_wrap" data-scale="false">
								<img
									src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86454/86454_320.jpg"
									alt="물속 골리앗" />
								<div class="movieAgeLimit_wrap">
									<i class="cgvIcon etc age12">12</i>
									<div class="dDay_wrap">
										<span>7</span>
									</div>
								</div>
								<div class="screenType_wrap"></div>
								<div class="movieChart_btn_wrap">
									<a href="#" class="btn_movieChart_detail">상세보기</a>
								</div>
							</div>
							<div class="movie_info_wrap">
								<strong class="movieName">물속 골리앗</strong> <span> <img
									src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png"
									alt="Golden Egg Preegg" /> ?
								</span> <span>예매율 0.0%</span>
							</div>
						</div>
						<div class="swiper-slide">
							<div class="img_wrap" data-scale="false">
								<img
									src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86145/86145_320.jpg"
									alt="[씨네뮤지엄] 누구나 알지만 아무도 잘 모른다, 피카소" />
								<div class="movieAgeLimit_wrap">
									<i class="cgvIcon etc age15">15</i>
									<div class="dDay_wrap">
										<span>8</span>
									</div>
								</div>
								<div class="screenType_wrap"></div>
								<div class="movieChart_btn_wrap">
									<a href="#" class="btn_movieChart_detail">상세보기</a> <a href="#"
										class="btn_movieChart_ticketing">예매하기</a>
								</div>
							</div>
							<div class="movie_info_wrap">
								<strong class="movieName">[씨네뮤지엄]
									누구나 알지만 아무도 잘 모른다, 피카소</strong> <span> <img
									src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png"
									alt="Golden Egg Preegg" /> ?
								</span> <span>예매율 0.1%</span>
							</div>
						</div>
						<div class="swiper-slide">
							<div class="img_wrap" data-scale="false">
								<img
									src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86432/86432_320.jpg"
									alt="맨 온 엣지" />
								<div class="movieAgeLimit_wrap">
									<i class="cgvIcon etc age15">15</i>
									<div class="dDay_wrap">
										<span>8</span>
									</div>
								</div>
								<div class="screenType_wrap"></div>
								<div class="movieChart_btn_wrap">
									<a href="#" class="btn_movieChart_detail">상세보기</a>
								</div>
							</div>
							<div class="movie_info_wrap">
								<strong class="movieName">맨 온 엣지</strong> <span> <img
									src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png"
									alt="Golden Egg Preegg" /> ?
								</span> <span>예매율 0.0%</span>
							</div>
						</div>
						<div class="swiper-slide">
							<div class="img_wrap" data-scale="false">
								<img
									src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86483/86483_320.jpg"
									alt="심야카페-미씽 허니" />
								<div class="movieAgeLimit_wrap">
									<i class="cgvIcon etc age12">12</i>
									<div class="dDay_wrap">
										<span>8</span>
									</div>
								</div>
								<div class="screenType_wrap"></div>
								<div class="movieChart_btn_wrap">
									<a href="#" class="btn_movieChart_detail">상세보기</a>
								</div>
							</div>
							<div class="movie_info_wrap">
								<strong class="movieName">심야카페-미씽 허니</strong> <span> <img
									src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png"
									alt="Golden Egg Preegg" /> 99%
								</span> <span>예매율 0.0%</span>
							</div>
						</div>
						<div class="swiper-slide">
							<div class="img_wrap" data-scale="false">
								<img
									src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86484/86484_320.jpg"
									alt="트랜스" />
								<div class="movieAgeLimit_wrap">
									<i class="cgvIcon etc age15">15</i>
									<div class="dDay_wrap">
										<span>8</span>
									</div>
								</div>
								<div class="screenType_wrap"></div>
								<div class="movieChart_btn_wrap">
									<a href="#" class="btn_movieChart_detail">상세보기</a>
								</div>
							</div>
							<div class="movie_info_wrap">
								<strong class="movieName">트랜스</strong> <span> <img
									src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png"
									alt="Golden Egg Preegg" /> ?
								</span> <span>예매율 0.0%</span>
							</div>
						</div>
						<div class="swiper-slide">
							<div class="img_wrap" data-scale="false">
								<img
									src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86423/86423_320.jpg"
									alt="파이어버드" />
								<div class="movieAgeLimit_wrap">
									<i class="cgvIcon etc ageNotyet">미정</i>
									<div class="dDay_wrap">
										<span>8</span>
									</div>
								</div>
								<div class="screenType_wrap"></div>
								<div class="movieChart_btn_wrap">
									<a href="#" class="btn_movieChart_detail">상세보기</a>
								</div>
							</div>
							<div class="movie_info_wrap">
								<strong class="movieName">파이어버드</strong> <span> <img
									src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png"
									alt="Golden Egg Preegg" /> 99%
								</span> <span>예매율 0.0%</span>
							</div>
						</div>
						<div class="swiper-slide">
							<div class="img_wrap" data-scale="false">
								<img
									src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86495/86495_320.jpg"
									alt="자이언트 임팩트" />
								<div class="movieAgeLimit_wrap">
									<i class="cgvIcon etc ageAll">All</i>
									<div class="dDay_wrap">
										<span>9</span>
									</div>
								</div>
								<div class="screenType_wrap"></div>
								<div class="movieChart_btn_wrap">
									<a href="#" class="btn_movieChart_detail">상세보기</a>
								</div>
							</div>
							<div class="movie_info_wrap">
								<strong class="movieName">자이언트 임팩트</strong> <span> <img
									src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png"
									alt="Golden Egg Preegg" /> ?
								</span> <span>예매율 0.0%</span>
							</div>
						</div>
					</div>
					<div class="swiper-button-next"></div>
					<div class="swiper-button-prev"></div>
				</div>
			</div>
		</div>
		<div class="event_wrap">
			<div class="event_title_wrap">
				<h3>EVENT</h3>
				<a href="#" class="btn_allView">전체보기</a>
			</div>
			<br />
			<br />
			<br />
			<div class="event_image_wrap">
				<div class="event_image_wrap">
					<img
						src="https://img.cgv.co.kr/WebApp/contents/eventV4/35437/16649460074130.jpg"
						alt="CGV X TVING 월 정기혜택" />
				</div>
				<div class="event_text_wrap">
					<strong>CGV x TVING 월 정기 혜택 [CGV PLUS]</strong>
				</div>
				<div class="event_datetext_wrap">
					<span class="event_date">2022.10.26~2032.10.06</span>
				</div>
			</div>
			<div class="event_image_wrap">
				<div class="event_image_wrap">
					<img
						src="https://img.cgv.co.kr/WebApp/contents/eventV4/35691/16673651144220.jpeg"
						alt="[블랙팬서: 와칸다 포에버] 필름마크" />
				</div>
				<div class="event_text_wrap">
					<strong>[블랙팬서: 와칸다 포에버] 필름마크</strong>
				</div>
				<div class="event_datetext_wrap">
					<span class="event_date">2022.11.02~2022.11.27</span>
				</div>
			</div>
		</div>
		<div id="sp_contaniner" class="">
			<div class="specialHall_wrap">
				<div class="contents">
					<div class="specialHall_title_wrap">
						<h3>특별관</h3>
						<div class="empty_box" style="flex: 1"></div>
						<a href="#" class="btn_allView">전체보기</a>
					</div>
					<div class="specialHall_content">
						<a href="index.jsp" class="specialHall_link">
							<div class="img_wrap" data-scale="false">
								<img
									src="https://img.cgv.co.kr//Front/Main/2021/1209/16390080561620.png"
									alt="SUITE CINEMA" id="imgtag" />
							</div>
						</a>
						<ul class="specialHall_list">
							<li class="active"><a href="index.jsp"> <strong>SUITE
										CINEMA</strong>
									<div class="specialHall_hashTag_wrap">
										<span class="spcialHall_hashTag"> #호텔 컨셉의 프리미엄 컨셉관 </span>
									</div>
							</a></li>
							<li><a href="index.jsp"> <strong>CINE &
										LIVINGROOM</strong>
									<div class="specialHall_hashTag_wrap">
										<span class="spcialHall_hashTag"> #신개념 소셜 상영관 </span>
									</div>
							</a></li>
							<li><a href="index.jsp"> <strong>4DX</strong>
									<div class="specialHall_hashTag_wrap">
										<span class="spcialHall_hashTag"> #모션시트 #오감체험 </span>
									</div>
							</a></li>
							<li><a href="index.jsp"> <strong>CINE de CHEF</strong>
									<div class="specialHall_hashTag_wrap">
										<span class="spcialHall_hashTag"> #쉐프가 있는 영화관 </span>
									</div>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="giftcon_wrap">
			<div class="m_contents">
				<ul class="giftcon_list_wrap">
					<li>
						<dl class="giftcon_list">
							<dt>
								영화관람권<a href="#" alt="영화관람권" class="btn_more">더보기</a>
							</dt>
							<dd>
								<a href="#">
									<div class="img_wrap">
										<img
											src="https://img.cgv.co.kr/GiftStore/Product/Pc/List/16094706927780.jpg"
											alt="CGV 영화관람권" />
									</div>
									<div class="giftcon_info_wrap">
										<span>CGV 영화관람권</span> <strong>12,000원</strong>
									</div>
								</a>
							</dd>

							<dd>
								<a href="#">
									<div class="img_wrap">
										<img
											src="https://img.cgv.co.kr/GiftStore/Product/Pc/List/15458911951520.jpg"
											alt="CGV 골드클래스" />
									</div>
									<div class="giftcon_info_wrap">
										<span>CGV 골드클래스</span> <strong>40,000원</strong>
									</div>
								</a>
							</dd>

							<dd>
								<a href="#">
									<div class="img_wrap">
										<img
											src="https://img.cgv.co.kr/GiftStore/Product/Pc/List/16105061088530.jpg"
											alt="4DX관람권" />
									</div>
									<div class="giftcon_info_wrap">
										<span>4DX관람권</span> <strong>19,000원</strong>
									</div>
								</a>
							</dd>
						</dl>
					</li>
					<li>
						<dl class="giftcon_list">
							<dt>
								기프트카드<a href="#" alt="기프트카드" class="btn_more">더보기</a>
							</dt>

							<dd>
								<a href="#">
									<div class="img_wrap">
										<img
											src="https://img.cgv.co.kr/GiftStore/Product/Pc/List/15814124358590.jpg"
											alt="PACONNIE A형" />
									</div>
									<div class="giftcon_info_wrap">
										<span>PACONNIE A형</span> <strong>금액충전형</strong>
									</div>
								</a>
							</dd>

							<dd>
								<a href="#">
									<div class="img_wrap">
										<img
											src="https://img.cgv.co.kr/GiftStore/Product/Pc/List/15814158039890.jpg"
											alt="PACONNIE B형" />
									</div>
									<div class="giftcon_info_wrap">
										<span>PACONNIE B형</span> <strong>금액충전형</strong>
									</div>
								</a>
							</dd>

							<dd>
								<a href="#">
									<div class="img_wrap">
										<img
											src="https://img.cgv.co.kr/GiftStore/Product/Pc/List/15814162227570.jpg"
											alt="PACONNIE C형" />
									</div>
									<div class="giftcon_info_wrap">
										<span>PACONNIE C형</span> <strong>금액충전형</strong>
									</div>
								</a>
							</dd>
						</dl>
					</li>
					<li>
						<dl class="giftcon_list">
							<dt>
								콤보<a href="#" alt="콤보" class="btn_more">더보기</a>
							</dt>

							<dd>
								<a href="#">
									<div class="img_wrap">
										<img
											src="https://img.cgv.co.kr/GiftStore/Product/Pc/List/15463252009160.jpg"
											alt="CGV콤보" />
									</div>
									<div class="giftcon_info_wrap">
										<span>CGV콤보</span> <strong>9,000원</strong>
									</div>
								</a>
							</dd>

							<dd>
								<a href="#">
									<div class="img_wrap" data-scale="false">
										<img
											src="https://img.cgv.co.kr/GiftStore/Product/Pc/List/15463251537260.jpg"
											alt="더블콤보" />
									</div>
									<div class="giftcon_info_wrap">
										<span>더블콤보</span> <strong>12,000원</strong>
									</div>
								</a>
							</dd>

							<dd>
								<a href="#">
									<div class="img_wrap">
										<img
											src="https://img.cgv.co.kr/GiftStore/Product/Pc/List/15464065561050.jpg"
											alt="스몰세트" />
									</div>
									<div class="giftcon_info_wrap">
										<span>스몰세트</span> <strong>6,500원</strong>
									</div>
								</a>
							</dd>
						</dl>
					</li>
				</ul>
			</div>
		</div>
		<div class="noticeClient_wrap">
			<div class="m_contents">
				<div class="noticeClient_container">
					<div class="noticeClient_content">
						<div id="ctl00_PlaceHolderContent_notice_wrap" class="notice_wrap">
							<strong>공지사항</strong> <a href="#" class="btn_link">[기타]22년
								VIP 선정 기준 변경 및 추가 기준 관련 안내</a> <a href="#" id="notice_more"
								class="btn_more">더보기</a>
						</div>

						<div class="client_wrap">
							<dl class="client_list">
								<dt>
									<strong>고객센터</strong>
								</dt>

								<dd>
									<strong>1544-1122</strong> <span>고객센터 운영시간 (평일
										09:00~18:00)</span>
									<p>업무시간 외 자동응답 안내 가능합니다.</p>
								</dd>
							</dl>
							<div class="client_btn_wrap" id="client_btn_wrap">
								<a href="#">FAQ</a> <a href="#">1:1 문의</a> <a href="#">대관/단체
									문의</a>
							</div>
						</div>
					</div>

					<div class="qr_wrap">
						<strong>앱 다운로드</strong> <span>CGV앱에서 더 편리하게 이용하세요</span>
						<div class="img_wrap" data-scale="false">
							<img
								src="https://img.cgv.co.kr/R2014/images/common/img_qrcode.gif"
								alt="QR CODE" />
						</div>
						<p>
							QR코드를 스캔하고<br />앱설치 페이지로 바로 이동하세요
						</p>
					</div>
				</div>

				<div class="giftCard1">
					<a href="#">
						<div class="giftCard1_img">
							<img
								src="https://adimg.cgv.co.kr/images/202111/cgvgift/1221_226x259.jpg"
								alt="giftCard" />
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>

<%@include file="/WEB-INF/view/component/footer.jsp"%>
</body>
</html>
