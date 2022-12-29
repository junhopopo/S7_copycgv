<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="shortcut icon"
      href="https://img.cgv.co.kr/theater_img/favicon.ico"
      type="image/x-icon"
    />
    <title>무비차트 &lt; 무비차트 | 영화 그 이상의 감동. CGV</title>
    <!-- view script  -->
<script      src="https://img.cgv.co.kr/R2014/js/jquery-1.10.2.min.js"    ></script>
<script      src="https://img.cgv.co.kr/resource_pc/js/cgvUi.js"    ></script>
<script type="text/javascript"	src="https://img.cgv.co.kr/R2014/js/swiper.min.js"></script>
<link rel="stylesheet" type="text/css"	href="https://img.cgv.co.kr/resource_pc/css/cgv.min.css" />
<link rel="stylesheet" media="all" type="text/css"	href="https://img.cgv.co.kr/R2014/css/swiper-bundle.min.css" />
<link rel="stylesheet" media="all" type="text/css"	href="https://img.cgv.co.kr/R2014/css/preegg.css" />
<link rel="stylesheet" media="all" type="text/css"	href="https://img.cgv.co.kr/R2014/css/eggupdate.css" />

<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/reset.css"	type="text/css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/header.css"	type="text/css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/category.css"	type="text/css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/footer.css"	type="text/css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/webcontent.css"	type="text/css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/movie_layout.css"	type="text/css" />
  </head>
  <body>
	<div id="component">
<%@include file="/WEB-INF/view/component/header.jsp"%>
<%@include file="/WEB-INF/view/component/category.jsp"%>
	</div>
    <div id="contents" class="">
      <!-- 실컨텐츠 시작 -->
      <div class="wrap-movie-chart">
        <div class="tit-heading-wrap">
          <h3>무비차트</h3>

          <div class="submenu">
            <ul>
              <li class="on">
                <a href="movie_0.jsp" title="선택">무비차트</a>
              </li>
              <li><a href="pre_movie.jsp">상영예정작</a></li>
            </ul>
          </div>
        </div>

        <div class="sect-sorting">
          <div class="nowshow">
            <input
              type="checkbox"
              id="chk_nowshow"
              title="현재 선택됨"
              checked
            />

            <label for="chk_nowshow">현재 상영작만 보기</label>
          </div>
          <label for="order_type" class="hidden">정렬</label>
          <select id="order_type" name="order-type">
            <option title="현재 선택됨" selected value="1">예매율순</option>
            <option value="2">평점순</option>
            <option value="3">관람객순</option>
          </select>
          <button type="button" class="round gray"><span>GO</span></button>
        </div>

        <div class="sect-movie-chart">
          <h4 class="hidden">무비차트 - 예매율순</h4>
          <ol>
            <li>
              <div class="box-image">
                <strong class="rank">No.1</strong>
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86119/86119_320.jpg"
                      alt="블랙 팬서-와칸다 포에버 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age12">12</i>
                  </span>
                </a>
                <span class="screentype">
                  <a
                    class="imax"
                    href="#"
                    title="IMAX 상세정보 바로가기"
                    data-regioncode="07"
                    >IMAX</a
                  >

                  <a
                    class="forDX"
                    href="#"
                    title="4DX 상세정보 바로가기"
                    data-regioncode="4D14"
                    >4DX</a
                  >

                  <a
                    class="screenx"
                    href="#"
                    title="SCREENX 상세정보 바로가기"
                    data-regioncode="SCX"
                    >SCREENX</a
                  >
                </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">블랙 팬서-와칸다 포에버</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>29.2%</span></strong>
                  <div class="egg-gage small">
                    <span class="egg good"></span>
                    <span class="percent">84%</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11.09
                    <span>개봉</span>
                  </strong>
                </span>
                <span class="like">
                  <a class="link-reservation" href="#">예매</a>
                </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <strong class="rank">No.2</strong>
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86205/86205_320.jpg"
                      alt="에브리씽 에브리웨어 올 앳 원스 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age15">15</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">에브리씽 에브리웨어 올 앳 원스</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>1.2%</span></strong>
                  <div class="egg-gage small">
                    <span class="egg great"></span>
                    <span class="percent">89%</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.10.12
                    <span>개봉</span>
                  </strong>
                </span>
                <span class="like">
                  <a class="link-reservation" href="#">예매</a>
                </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <strong class="rank">No.3</strong>
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86319/86319_320.jpg"
                      alt="첫번째 아이 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age12">12</i>
                  </span>
                </a>
                <span class="screentype">
                  <a
                    class="arthouse"
                    href="#"
                    title="아트하우스 상세정보 바로가기"
                    data-regioncode="MovieCollage"
                    >아트하우스</a
                  >
                </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">첫번째 아이</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.9%</span></strong>
                  <div class="egg-gage small">
                    <span class="egg great"></span>
                    <span class="percent">88%</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11.10
                    <span>개봉</span>
                  </strong>
                </span>
                <span class="like">
                  <a class="link-reservation" href="#">예매</a>
                </span>
              </div>
            </li>
          </ol>

          <ol>
            <li>
              <div class="box-image">
                <strong class="rank">No.4</strong>
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86460/86460_320.jpg"
                      alt="같은 속옷을 입는 두 여자 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age15">15</i>
                  </span>
                </a>
                <span class="screentype">
                  <a class="arthouse" href="#" data-regioncode="MovieCollage"
                    >아트하우스</a
                  >
                </span>
              </div>
              <div class="box-contents">
                <a href="#">
                  <strong class="title">같은 속옷을 입는 두 여자</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.5%</span></strong>
                  <div class="egg-gage small">
                    <span class="egg great"></span>
                    <span class="percent">89%</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11.10
                    <span>개봉</span>
                  </strong>
                </span>
                <span class="like">
                  <a class="link-reservation" href="#">예매</a>
                </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <strong class="rank">No.5</strong>
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86216/86216_320.jpg"
                      alt="자백 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age15">15</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>
              <div class="box-contents">
                <a href="#">
                  <strong class="title">자백</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.4%</span></strong>
                  <div class="egg-gage small">
                    <span class="egg great"></span>
                    <span class="percent">95%</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.10.26
                    <span>개봉</span>
                  </strong>
                </span>
                <span class="like">
                  <a class="link-reservation" href="#">예매</a>
                </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <strong class="rank">No.6</strong>
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86500/86500_320.jpg"
                      alt="극장판 소드 아트 온라인 -프로그레시브- 짙은 어둠의 스케르초 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age12">12</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>
              <div class="box-contents">
                <a href="#">
                  <strong class="title"
                    >극장판 소드 아트 온라인 -프로그레시브- 짙은 어둠의
                    스케르초</strong
                  >
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.3%</span></strong>
                  <div class="egg-gage small">
                    <span class="egg great"></span>
                    <span class="percent">91%</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11.10
                    <span>개봉</span>
                  </strong>
                </span>
                <span class="like">
                  <a class="link-reservation" href="#">예매</a>
                </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <strong class="rank">No.7</strong>
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000083/83821/83821_320.jpg"
                      alt="인생은 아름다워 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age12">12</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>
              <div class="box-contents">
                <a href="#">
                  <strong class="title">인생은 아름다워</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.1%</span></strong>
                  <div class="egg-gage small">
                    <span class="egg great"></span>
                    <span class="percent">96%</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.09.28
                    <span>개봉</span>
                  </strong>
                </span>
                <span class="like">
                  <a class="link-reservation" href="#">예매</a>
                </span>
              </div>
            </li>
          </ol>

          <div class="chart-ad-bottom" id="chart-ad-bottom">
            <img src="https://dummyimage.com/980x90/ccc/fff" />
          </div>

          <ol class="list-more">
            <li>
              <div class="box-image">
                <strong class="rank">No.8</strong>
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86194/86194_320.jpg"
                      alt="극장판 짱구는 못말려-수수께끼! 꽃피는 천하떡잎학교 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc ageAll">All</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>
              <div class="box-contents">
                <a href="#">
                  <strong class="title"
                    >극장판 짱구는 못말려-수수께끼! 꽃피는 천하떡잎학교</strong
                  >
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.1%</span></strong>
                  <div class="egg-gage small">
                    <span class="egg great"></span>
                    <span class="percent">97%</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.09.28
                    <span>개봉</span>
                  </strong>
                </span>
                <span class="like">
                  <a class="link-reservation" href="#">예매</a>
                </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <strong class="rank">No.9</strong>
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86427/86427_320.jpg"
                      alt="[사이다경제_사계강의(가을)]10년 후에도 살아남을 주식에 투자하라 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc ageAll">All</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>
              <div class="box-contents">
                <a href="#">
                  <strong class="title"
                    >[사이다경제_사계강의(가을)]10년 후에도 살아남을 주식에
                    투자하라</strong
                  >
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.1%</span></strong>
                  <div class="egg-gage small">
                    <span class="egg good"></span>
                    <span class="percent">?</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11.15
                    <span>개봉</span>
                  </strong>
                </span>
                <span class="like">
                  <a class="link-reservation" href="#">예매</a>
                </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <strong class="rank">No.10</strong>
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86271/86271_320.jpg"
                      alt="리멤버 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age15">15</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>
              <div class="box-contents">
                <a href="#">
                  <strong class="title">리멤버</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.1%</span></strong>
                  <div class="egg-gage small">
                    <span class="egg great"></span>
                    <span class="percent">94%</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.10.26
                    <span>개봉</span>
                  </strong>
                </span>
                <span class="like">
                  <a class="link-reservation" href="#">예매</a>
                </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <strong class="rank">No.11</strong>
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86323/86323_320.jpg"
                      alt="블랙 아담 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age12">12</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>
              <div class="box-contents">
                <a href="#">
                  <strong class="title">블랙 아담</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.1%</span></strong>
                  <div class="egg-gage small">
                    <span class="egg great"></span>
                    <span class="percent">89%</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.10.19
                    <span>개봉</span>
                  </strong>
                </span>
                <span class="like">
                  <a class="link-reservation" href="#">예매</a>
                </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <strong class="rank">No.12</strong>
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86339/86339_320.jpg"
                      alt="알카라스의 여름 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age12">12</i>
                  </span>
                </a>
                <span class="screentype">
                  <a class="arthouse" href="#" data-regioncode="MovieCollage"
                    >아트하우스</a
                  >
                </span>
              </div>
              <div class="box-contents">
                <a href="#">
                  <strong class="title">알카라스의 여름</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="egg great"></span>
                    <span class="percent">92%</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11.03
                    <span>개봉</span>
                  </strong>
                </span>
                <span class="like">
                  <a class="link-reservation" href="#">예매</a>
                </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <strong class="rank">No.13</strong>
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86328/86328_320.jpg"
                      alt="피가로~피가로~피가로 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age12">12</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>
              <div class="box-contents">
                <a href="#">
                  <strong class="title">피가로~피가로~피가로</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="egg good"></span>
                    <span class="percent">?</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11.10
                    <span>개봉</span>
                  </strong>
                </span>
                <span class="like">
                  <a class="link-reservation" href="#">예매</a>
                </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <strong class="rank">No.14</strong>
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86324/86324_320.jpg"
                      alt="옆집사람 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age15">15</i>
                  </span>
                </a>
                <span class="screentype">
                  <a class="arthouse" href="#" data-regioncode="MovieCollage"
                    >아트하우스</a
                  >
                </span>
              </div>
              <div class="box-contents">
                <a href="#">
                  <strong class="title">옆집사람</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="egg good"></span>
                    <span class="percent">84%</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11.03
                    <span>개봉</span>
                  </strong>
                </span>
                <span class="like">
                  <a class="link-reservation" href="#">예매</a>
                </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <strong class="rank">No.15</strong>
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86478/86478_320.jpg"
                      alt="탑 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age15">15</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>
              <div class="box-contents">
                <a href="#">
                  <strong class="title">탑</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="egg great"></span>
                    <span class="percent">94%</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11.03
                    <span>개봉</span>
                  </strong>
                </span>
                <span class="like">
                  <a class="link-reservation" href="#">예매</a>
                </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <strong class="rank">No.16</strong>
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86329/86329_320.jpg"
                      alt="가재가 노래하는 곳 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age15">15</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>
              <div class="box-contents">
                <a href="#">
                  <strong class="title">가재가 노래하는 곳</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="egg great"></span>
                    <span class="percent">96%</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11.02
                    <span>개봉</span>
                  </strong>
                </span>
                <span class="like">
                  <a class="link-reservation" href="#">예매</a>
                </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <strong class="rank">No.17</strong>
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86429/86429_320.jpg"
                      alt="고속도로 가족 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age15">15</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>
              <div class="box-contents">
                <a href="#">
                  <strong class="title">고속도로 가족</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="egg great"></span>
                    <span class="percent">85%</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11.02
                    <span>개봉</span>
                  </strong>
                </span>
                <span class="like">
                  <a class="link-reservation" href="#">예매</a>
                </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <strong class="rank">No.18</strong>
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86155/86155_320.jpg"
                      alt="공조2-인터내셔날 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age15">15</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>
              <div class="box-contents">
                <a href="#">
                  <strong class="title">공조2-인터내셔날</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="egg great"></span>
                    <span class="percent">95%</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.09.07
                    <span>개봉</span>
                  </strong>
                </span>
                <span class="like">
                  <a class="link-reservation" href="#">예매</a>
                </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <strong class="rank">No.19</strong>
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86453/86453_320.jpg"
                      alt="인어; 바다를 부른 여인 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age15">15</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>
              <div class="box-contents">
                <a href="#">
                  <strong class="title">인어; 바다를 부른 여인</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="egg good"></span>
                    <span class="percent">?</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11.09
                    <span>개봉</span>
                  </strong>
                </span>
                <span class="like">
                  <a class="link-reservation" href="#">예매</a>
                </span>
              </div>
            </li>
          </ol>
        </div>
      </div>
    </div>

<%@include file="/WEB-INF/view/component/footer.jsp"%>
    <script type="text/javascript">
      (function ($) {
        $(function () {
          $(".sect-sorting button").click(function () {
            // click event
            var val = $("#order_type").val(); // option 선택
            if (val) {
              location.href = "movie_" + val + ".jsp"; // option 번호 넣기
            }
          });

          $("#chk_nowshow").click(function () {
            // 현재 상영작만 보기 checkbox
            if ($("input:checkbox[id='chk_nowshow']").is(":checked")) {
              location.href = "movie_1.jsp"; // checkbox가 checked면
            } else {
              location.href = "movie_0.jsp"; // checked가 아니라면
            }
          });
        });
      })(jQuery);
    </script>
  </body>
</html>
