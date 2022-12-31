<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="shortcut icon"
	href="https://img.cgv.co.kr/theater_img/favicon.ico"
	type="image/x-icon" />
<title>CGV &lt; 로그인 | 영화 그 이상의 감동. CGV</title>
<script	src="<%=request.getContextPath()%>/resources/js/jquery-3.6.1.js"></script>

<script type="text/javascript"	src="https://img.cgv.co.kr/resource_pc/js/cgvUi.js"></script>
<script type="text/javascript"	src="https://img.cgv.co.kr/R2014/js/swiper.min.js"></script>
<link rel="stylesheet" type="text/css"	href="https://img.cgv.co.kr/resource_pc/css/cgv.min.css" />
<link rel="stylesheet" media="all" type="text/css"	href="https://img.cgv.co.kr/R2014/css/swiper-bundle.min.css" />
<link rel="stylesheet" media="all" type="text/css"	href="https://img.cgv.co.kr/R2014/css/preegg.css" />
<link rel="stylesheet" media="all" type="text/css"	href="https://img.cgv.co.kr/R2014/css/eggupdate.css" />

<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/reset.css"	type="text/css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/module.css"	type="text/css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/header.css"	type="text/css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/category.css"	type="text/css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/footer.css"	type="text/css" />
<%-- <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/webcontent.css"	type="text/css" /> --%>

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

<body class="">
	<div id="component">
<%@include file="/WEB-INF/view/component/header.jsp"%>
<%@include file="/WEB-INF/view/component/category.jsp"%>
	</div>

		<!-- Contaniner -->
		<div id="contaniner" class="">
			<!-- Contents Area -->
			<div id="contents" class="">
				<!-- 실컨텐츠 시작 -->
				<div class="wrap-login">
					<div class="sect-login">
						<ul class="tab-menu-round">
							<li class="on"><a href="/user/login/">로그인</a></li>
							<li><a href="/user/guest/login-agreement.aspx">비회원 예매</a></li>
							<li><a href="/user/guest/login.aspx">비회원 예매확인</a></li>
						</ul>
						<div class="box-login">
							<h3 class="hidden">회원 로그인</h3>
							<form id="form10" method="post" action="<%=request.getContextPath() %>/login.do" >
								<fieldset>
									<legend>회원 로그인</legend>
									<p>아이디 비밀번호를 입력하신 후, 로그인 버튼을 클릭해 주세요.</p>
									<div class="login">
										<input type="text" title="아이디" id="txtUserId" name="memail"
											data-title="아이디를 " data-message="입력하세요." required="required" />
										<input type="password" title="패스워드" id="txtPassword"
											name="mpwd" data-title="패스워드를 " data-message="입력하세요."
											required="required" />
									</div>
									<div class="save-id">
										<input type="checkbox" id="loginSet" /><label for="save_id">아이디
											저장</label>
									</div>


									<button type="submit" id="submit" title="로그인">
										<span>로그인</span>
									</button>
									<div class="login-option">
										<a href="/user/login/find-account.aspx">아이디 찾기</a> <a
											href="/user/login/find-pw.aspx?act=pw">비밀번호 찾기</a>
									</div>
								</fieldset>
							</form>
						</div>
					</div>
				</div>
				<!-- 실컨텐츠 끝 -->

				<!-- LogIn -->
				<form name="loginform" id="loginform" method="post"
					action="https://www.cgv.co.kr/user/login/login.aspx"
					novalidate="novalidate">
					<input type="hidden" name="id" id="id" /> <input type="hidden"
						name="password" id="password" /> <input type="hidden"
						name="id_save" id="id_save" /> <input type="hidden"
						name="returnURL" value="https://www.cgv.co.kr/default.aspx" />
				</form>
				<!-- //LogIn -->

<%@include file="/WEB-INF/view/component/footer.jsp"%>
</body>
</html>