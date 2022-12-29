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
<script type="text/javascript"	src="https://img.cgv.co.kr/resource_pc/js/cgvUi.js"></script>
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
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/movie_layout.css" />
  </head>
  <body>
	<div id="component">
<%@include file="/WEB-INF/view/component/header.jsp"%>
<%@include file="/WEB-INF/view/component/category.jsp"%>
	</div>

    <div style="clear: both"></div>
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
            <input type="checkbox" id="chk_nowshow" />
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
                <a href="movie_info.jsp">
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
                  <strong class="percent">예매율<span>35.7%</span></strong>
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
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86326/86326_320.jpg"
                      alt="동감 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age12">12</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">동감</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>20.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">99%</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11.16
                    <span>개봉</span>
                    <em class="dday">D-1</em>
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
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86420/86420_320.jpg"
                      alt="데시벨 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age12">12</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">데시벨</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>17.3%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">99%</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11.16
                    <span>개봉</span>
                    <em class="dday">D-1</em>
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
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86481/86481_320.jpg"
                      alt="올빼미 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age15">15</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>
              <div class="box-contents">
                <a href="#">
                  <strong class="title">올빼미</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>7.7%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">99%</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11.23
                    <span>개봉</span>
                    <em class="dday">D-8</em>
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
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86338/86338_320.jpg"
                      alt="폴-600미터 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age12">12</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>
              <div class="box-contents">
                <a href="#">
                  <strong class="title">폴-600미터</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>5.6%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">99%</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11.16
                    <span>개봉</span>
                    <em class="dday">D-1</em>
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
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86494/86494_320.jpg"
                      alt="유포자들 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age15">15</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>
              <div class="box-contents">
                <a href="#">
                  <strong class="title">유포자들</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>3.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">99%</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11.23
                    <span>개봉</span>
                    <em class="dday">D-8</em>
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
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86435/86435_320.jpg"
                      alt="(라이브뷰잉)Ensemble Stars!! DREAM LIVE -7th Tour Allied Worlds- Live Viewing 포스터"
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
                    >(라이브뷰잉)Ensemble Stars!! DREAM LIVE -7th Tour Allied
                    Worlds- Live Viewing</strong
                  >
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>2.9%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">99%</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11.25
                    <span>개봉</span>
                    <em class="dday">D-10</em>
                  </strong>
                </span>
                <span class="like">
                  <a class="link-reservation" href="#">예매</a>
                </span>
              </div>
            </li>
          </ol>

          <ol class="list-more">
            <li>
              <div class="box-image">
                <strong class="rank">No.8</strong>
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86511/86511_320.jpg"
                      alt="스트레인지 월드 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc ageAll">All</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>
              <div class="box-contents">
                <a href="#">
                  <strong class="title">스트레인지 월드</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>1.9%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">99%</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11.23
                    <span>개봉</span>
                    <em class="dday">D-8</em>
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
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86462/86462_320.jpg"
                      alt="2022 카타르월드컵 대한민국vs우루과이 포스터"
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
                    >2022 카타르월드컵 대한민국vs우루과이</strong
                  >
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>1.9%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">?</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11.24
                    <span>개봉</span>
                    <em class="dday">D-9</em>
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
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86483/86483_320.jpg"
                      alt="심야카페-미씽 허니 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age12">12</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>
              <div class="box-contents">
                <a href="#">
                  <strong class="title">심야카페-미씽 허니</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>1.5%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">99%</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11.17
                    <span>개봉</span>
                    <em class="dday">D-2</em>
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
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86522/86522_320.jpg"
                      alt="한산 리덕스 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age12">12</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>
              <div class="box-contents">
                <a href="#">
                  <strong class="title">한산 리덕스</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>1.2%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">?</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11.16
                    <span>개봉</span>
                    <em class="dday">D-1</em>
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
                <strong class="rank">No.13</strong>
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
                  <a class="arthouse" href="#" data-regioncode="MovieCollage"
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

            <li>
              <div class="box-image">
                <strong class="rank">No.14</strong>
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86464/86464_320.jpg"
                      alt="2022 카타르월드컵 대한민국vs포르투갈 포스터"
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
                    >2022 카타르월드컵 대한민국vs포르투갈</strong
                  >
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.9%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">?</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.12.02
                    <span>개봉</span>
                    <em class="dday">D-17</em>
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
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86482/86482_320.jpg"
                      alt="본즈 앤 올 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age18">18</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>
              <div class="box-contents">
                <a href="#">
                  <strong class="title">본즈 앤 올</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.8%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">99%</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11.30
                    <span>개봉</span>
                    <em class="dday">D-15</em>
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
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86463/86463_320.jpg"
                      alt="2022 카타르월드컵 대한민국vs가나 포스터"
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
                    >2022 카타르월드컵 대한민국vs가나</strong
                  >
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.7%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">?</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11.28
                    <span>개봉</span>
                    <em class="dday">D-13</em>
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
                <strong class="rank">No.18</strong>
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
                <strong class="rank">No.19</strong>
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
