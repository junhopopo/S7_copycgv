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
    <script src="../../../Resources/js/includeHTML.js"></script>
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <link rel="stylesheet" href="../../../Resources/css/reset.css" />
    <link rel="stylesheet" href="../../../Resources/css/movie_layout.css" />

    <!-- view script  -->
    <script
      type="text/javascript"
      src="https://img.cgv.co.kr/R2014/js/jquery-1.10.2.min.js"
    ></script>
    <link
      rel="stylesheet"
      type="text/css"
      href="https://img.cgv.co.kr/resource_pc/css/cgv.min.css"
    />
    <script
      type="text/javascript"
      src="https://img.cgv.co.kr/resource_pc/js/cgvUi.js"
    ></script>
    <link
      rel="stylesheet"
      media="all"
      type="text/css"
      href="https://img.cgv.co.kr/R2014/css/swiper-bundle.min.css"
    />
    <script
      type="text/javascript"
      src="https://img.cgv.co.kr/R2014/js/swiper.min.js"
    ></script>
    <link
      rel="stylesheet"
      media="all"
      type="text/css"
      href="https://img.cgv.co.kr/R2014/css/preegg.css"
    />
    <link
      rel="stylesheet"
      media="all"
      type="text/css"
      href="https://img.cgv.co.kr/R2014/css/eggupdate.css"
    />
  </head>
  <body>
    <div id="component">
      <div include-html="../../component/header.jsp">
        <script>
          includeHTML();
        </script>
      </div>
      <div include-html="../../component/category.jsp">
        <script>
          includeHTML();
        </script>
      </div>
    </div>
    <div id="contents" class="">
      <div class="wrap-movie-chart">
        <div class="tit-heading-wrap">
          <h3>무비차트</h3>
          <div class="submenu">
            <ul>
              <li><a href="movie_1.jsp">무비차트</a></li>
              <li class="on"><a href="pre_movie.jsp">상영예정작</a></li>
            </ul>
          </div>
        </div>

        <div class="sect-movie-chart">
          <h4 class="hidden">상영예정작</h4>
          <ol>
            <li>
              <div class="box-image">
                <strong class="rank">이달의 추천영화 1</strong>
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
                <strong class="rank">이달의 추천영화 2</strong>
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
                  <strong class="percent">예매율<span>17.4%</span></strong>
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
                <strong class="rank">이달의 추천영화 3</strong>
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
                  <strong class="percent">예매율<span>8.9%</span></strong>
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
          </ol>

          <h4><span class="hidden">상영예정작</span>2022.11.16(수)</h4>
          <ol>
            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86502/86502_320.jpg"
                      alt="바르도, 약간의 진실을 섞은 거짓된 연대기 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age15">15</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title"
                    >바르도, 약간의 진실을 섞은 거짓된 연대기</strong
                  >
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.2%</span></strong>
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
                  <strong class="percent">예매율<span>17.4%</span></strong>
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
                  <strong class="percent">예매율<span>5.9%</span></strong>
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
                  <strong class="percent">예매율<span>0.1%</span></strong>
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
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86454/86454_320.jpg"
                      alt="아르코라이브 무용 물속 골리앗 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age12">12</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">아르코라이브 무용 물속 골리앗</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
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
          </ol>

          <h4><span class="hidden">상영예정작</span>2022.11.17(목)</h4>
          <ol>
            <li>
              <div class="box-image">
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
                  <strong class="percent">예매율<span>1.6%</span></strong>
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
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86145/86145_320.jpg"
                      alt="[씨네뮤지엄] 누구나 알지만 아무도 잘 모른다, 피카소 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age15">15</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title"
                    >[씨네뮤지엄] 누구나 알지만 아무도 잘 모른다, 피카소</strong
                  >
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.2%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">?</span>
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
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86423/86423_320.jpg"
                      alt="파이어버드 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age15">15</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">파이어버드</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.1%</span></strong>
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
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86484/86484_320.jpg"
                      alt="트랜스 포스터"
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
                  <strong class="title">트랜스</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">?</span>
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
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86432/86432_320.jpg"
                      alt="맨 온 엣지 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age15">15</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">맨 온 엣지</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">?</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11.17
                    <span>개봉</span>
                    <em class="dday">D-2</em>
                  </strong>
                </span>
                <span class="like"> </span>
              </div>
            </li>
          </ol>

          <h4><span class="hidden">상영예정작</span>2022.11.18(금)</h4>
          <ol>
            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86495/86495_320.jpg"
                      alt="자이언트 임팩트 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc ageAll">All</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="/movies/detail-view/?midx=86495">
                  <strong class="title">자이언트 임팩트</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">?</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11.18
                    <span>개봉</span>
                    <em class="dday">D-3</em>
                  </strong>
                </span>
                <span class="like">
                  <a class="link-reservation" href="#">예매</a>
                </span>
              </div>
            </li>
          </ol>

          <h4><span class="hidden">상영예정작</span>2022.11.20(일)</h4>
          <ol>
            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86491/86491_320.jpg"
                      alt="[아트&다이닝]LOVE or HATE, 런던 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc ageAll">All</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">[아트&다이닝]LOVE or HATE, 런던</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.1%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">?</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11.20
                    <span>개봉</span>
                    <em class="dday">D-5</em>
                  </strong>
                </span>
                <span class="like">
                  <a class="link-reservation" href="#">예매</a>
                </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86025/86025_320.jpg"
                      alt="[콘서트&다이닝]달리의 식탁 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc ageAll">All</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">[콘서트&다이닝]달리의 식탁</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.1%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">?</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11.20
                    <span>개봉</span>
                    <em class="dday">D-5</em>
                  </strong>
                </span>
                <span class="like">
                  <a class="link-reservation" href="#">예매</a>
                </span>
              </div>
            </li>
          </ol>

          <h4><span class="hidden">상영예정작</span>2022.11.21(월)</h4>
          <ol>
            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86496/86496_320.jpg"
                      alt="일놀놀일 김규림,이승희 저자 북토크 포스터"
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
                    >일놀놀일 김규림,이승희 저자 북토크</strong
                  >
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.1%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">?</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11.21
                    <span>개봉</span>
                    <em class="dday">D-6</em>
                  </strong>
                </span>
                <span class="like">
                  <a class="link-reservation" href="#">예매</a>
                </span>
              </div>
            </li>
          </ol>

          <h4><span class="hidden">상영예정작</span>2022.11.22(화)</h4>
          <ol>
            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86428/86428_320.jpg"
                      alt="[사이다경제_사계강의(가을)] 2023년 재테크 키워드는 주식과 경매입니다 포스터"
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
                    >[사이다경제_사계강의(가을)] 2023년 재테크 키워드는 주식과
                    경매입니다</strong
                  >
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">?</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11.22
                    <span>개봉</span>
                    <em class="dday">D-7</em>
                  </strong>
                </span>
                <span class="like">
                  <a class="link-reservation" href="#">예매</a>
                </span>
              </div>
            </li>
          </ol>

          <h4><span class="hidden">상영예정작</span>2022.11.23(수)</h4>
          <ol>
            <li>
              <div class="box-image">
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
                  <strong class="percent">예매율<span>8.9%</span></strong>
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
                  <strong class="percent">예매율<span>3.5%</span></strong>
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
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">?</span>
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
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86430/86430_320.jpg"
                      alt="놈이 우리 안에 있다 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age15">15</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">놈이 우리 안에 있다</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
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
                <span class="like"> </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86455/86455_320.jpg"
                      alt="뮤지컬 스페셜딜리버리 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age12">12</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">뮤지컬 스페셜딜리버리</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">?</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11.23
                    <span>개봉</span>
                    <em class="dday">D-8</em>
                  </strong>
                </span>
                <span class="like"> </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86422/86422_320.jpg"
                      alt="아마겟돈 타임 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age12">12</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">아마겟돈 타임</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
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
                <span class="like"> </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86437/86437_320.jpg"
                      alt="존 덴버 죽이기 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age12">12</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">존 덴버 죽이기</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">?</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11.23
                    <span>개봉</span>
                    <em class="dday">D-8</em>
                  </strong>
                </span>
                <span class="like"> </span>
              </div>
            </li>
          </ol>

          <h4><span class="hidden">상영예정작</span>2022.11.24(목)</h4>
          <ol>
            <li>
              <div class="box-image">
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
                  <strong class="percent">예매율<span>1.8%</span></strong>
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
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86146/86146_320.jpg"
                      alt="[씨네뮤지엄] 발칙한 아름다움, 현대미술 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age15">15</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title"
                    >[씨네뮤지엄] 발칙한 아름다움, 현대미술</strong
                  >
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.2%</span></strong>
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
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86480/86480_320.jpg"
                      alt="세이레 포스터"
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
                  <strong class="title">세이레</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
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
                <span class="like"> </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86335/86335_320.jpg"
                      alt="우수 포스터"
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
                  <strong class="title">우수</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
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
                <span class="like"> </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86456/86456_320.jpg"
                      alt="창밖은 겨울 포스터"
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
                  <strong class="title">창밖은 겨울</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
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
                <span class="like"> </span>
              </div>
            </li>
          </ol>

          <h4><span class="hidden">상영예정작</span>2022.11.25(금)</h4>
          <ol>
            <li>
              <div class="box-image">
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
                  <strong class="percent">예매율<span>3.5%</span></strong>
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

            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86487/86487_320.jpg"
                      alt="[인사이터 X CGV] 무조건 검색 트래픽 오르는 SEO, 광고하지 않아도 고객이 찾아오는 마케팅의 비밀 포스터"
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
                    >[인사이터 X CGV] 무조건 검색 트래픽 오르는 SEO, 광고하지
                    않아도 고객이 찾아오는 마케팅의 비밀</strong
                  >
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">?</span>
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

          <h4><span class="hidden">상영예정작</span>2022.11.28(월)</h4>
          <ol>
            <li>
              <div class="box-image">
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
          </ol>

          <h4><span class="hidden">상영예정작</span>2022.11.30(수)</h4>
          <ol>
            <li>
              <div class="box-image">
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
                  <strong class="percent">예매율<span>0.9%</span></strong>
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
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86499/86499_320.jpg"
                      alt="강남좀비 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc ageNotyet">미정</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">강남좀비</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">?</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11.30
                    <span>개봉</span>
                    <em class="dday">D-15</em>
                  </strong>
                </span>
                <span class="like"> </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86497/86497_320.jpg"
                      alt="그 겨울, 나는 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age15">15</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">그 겨울, 나는</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">?</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11.30
                    <span>개봉</span>
                    <em class="dday">D-15</em>
                  </strong>
                </span>
                <span class="like"> </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86493/86493_320.jpg"
                      alt="너와 사랑한 시간 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age12">12</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">너와 사랑한 시간</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
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
                <span class="like"> </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86498/86498_320.jpg"
                      alt="압꾸정 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age12">12</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">압꾸정</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
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
                <span class="like"> </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86492/86492_320.jpg"
                      alt="엔시티 드림 더 무비 : 인 어 드림 포스터"
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
                    >엔시티 드림 더 무비 : 인 어 드림</strong
                  >
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
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
                <span class="like"> </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86503/86503_320.jpg"
                      alt="오늘 밤, 세계에서 이 사랑이 사라진다 해도 포스터"
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
                    >오늘 밤, 세계에서 이 사랑이 사라진다 해도</strong
                  >
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
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
                <span class="like"> </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86373/86373_320.jpg"
                      alt="원피스 필름 레드 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age12">12</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">원피스 필름 레드</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
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
                <span class="like"> </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86510/86510_320.jpg"
                      alt="탄생 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc ageNotyet">미정</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">탄생</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
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
          </ol>

          <h4><span class="hidden">상영예정작</span>2022.11</h4>
          <ol>
            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86316/86316_320.jpg"
                      alt="기적을 믿는 소녀 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc ageAll">All</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">기적을 믿는 소녀</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">?</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11
                    <span>개봉예정</span>
                  </strong>
                </span>
                <span class="like"> </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86076/86076_320.jpg"
                      alt="스톰보이 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc ageAll">All</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">스톰보이</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">99%</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11
                    <span>개봉예정</span>
                  </strong>
                </span>
                <span class="like"> </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86436/86436_320.jpg"
                      alt="영화감독 노동주 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc ageAll">All</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">영화감독 노동주</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">?</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.11
                    <span>개봉예정</span>
                  </strong>
                </span>
                <span class="like"> </span>
              </div>
            </li>
          </ol>

          <h4><span class="hidden">상영예정작</span>2022.12.01(목)</h4>
          <ol>
            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86421/86421_320.jpg"
                      alt="동행-10년의 발걸음 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc ageAll">All</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">동행-10년의 발걸음</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">?</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.12.01
                    <span>개봉</span>
                    <em class="dday">D-16</em>
                  </strong>
                </span>
                <span class="like"> </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86461/86461_320.jpg"
                      alt="만인의 연인 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age15">15</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">만인의 연인</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">?</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.12.01
                    <span>개봉</span>
                    <em class="dday">D-16</em>
                  </strong>
                </span>
                <span class="like"> </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86479/86479_320.jpg"
                      alt="양성인간 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age15">15</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">양성인간</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">?</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.12.01
                    <span>개봉</span>
                    <em class="dday">D-16</em>
                  </strong>
                </span>
                <span class="like"> </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86504/86504_320.jpg"
                      alt="요정 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age12">12</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">요정</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">?</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.12.01
                    <span>개봉</span>
                    <em class="dday">D-16</em>
                  </strong>
                </span>
                <span class="like"> </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86486/86486_320.jpg"
                      alt="청춘시련 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age18">18</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">청춘시련</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">?</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.12.01
                    <span>개봉</span>
                    <em class="dday">D-16</em>
                  </strong>
                </span>
                <span class="like"> </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86508/86508_320.jpg"
                      alt="헤이지니&럭키강이 비밀의 문 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc ageNotyet">미정</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">헤이지니&럭키강이 비밀의 문</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">?</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.12.01
                    <span>개봉</span>
                    <em class="dday">D-16</em>
                  </strong>
                </span>
                <span class="like"> </span>
              </div>
            </li>
          </ol>

          <h4><span class="hidden">상영예정작</span>2022.12.02(금)</h4>
          <ol>
            <li>
              <div class="box-image">
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
          </ol>

          <h4><span class="hidden">상영예정작</span>2022.12.07(수)</h4>
          <ol>
            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86490/86490_320.jpg"
                      alt="더 메뉴 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age15">15</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">더 메뉴</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">99%</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.12.07
                    <span>개봉</span>
                    <em class="dday">D-22</em>
                  </strong>
                </span>
                <span class="like">
                  <a class="link-reservation" href="#">예매</a>
                </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86507/86507_320.jpg"
                      alt="크리스마스 캐럴 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age18">18</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">크리스마스 캐럴</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">?</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.12.07
                    <span>개봉</span>
                    <em class="dday">D-22</em>
                  </strong>
                </span>
                <span class="like"> </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86340/86340_320.jpg"
                      alt="프레이 포 더 데블 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age15">15</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">프레이 포 더 데블</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">99%</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.12.07
                    <span>개봉</span>
                    <em class="dday">D-22</em>
                  </strong>
                </span>
                <span class="like">
                  <a class="link-reservation" href="#">예매</a>
                </span>
              </div>
            </li>
          </ol>

          <h4><span class="hidden">상영예정작</span>2022.12.08(목)</h4>
          <ol>
            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86434/86434_320.jpg"
                      alt="더 게임 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age15">15</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">더 게임</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">?</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.12.08
                    <span>개봉</span>
                    <em class="dday">D-23</em>
                  </strong>
                </span>
                <span class="like"> </span>
              </div>
            </li>
          </ol>

          <h4><span class="hidden">상영예정작</span>2022.12</h4>
          <ol>
            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86488/86488_320.jpg"
                      alt="몬스터 신부-101번째 프로포즈 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc ageAll">All</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">몬스터 신부-101번째 프로포즈</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">?</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.12
                    <span>개봉예정</span>
                  </strong>
                </span>
                <span class="like"> </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86072/86072_320.jpg"
                      alt="아바타-물의 길 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc ageNotyet">미정</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">아바타-물의 길</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">99%</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.12
                    <span>개봉예정</span>
                  </strong>
                </span>
                <span class="like"> </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000083/83203/83203_320.jpg"
                      alt="영웅 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc ageNotyet">미정</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">영웅</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">99%</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.12
                    <span>개봉예정</span>
                  </strong>
                </span>
                <span class="like"> </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86509/86509_320.jpg"
                      alt="지옥의 화원 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age15">15</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">지옥의 화원</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">?</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.12
                    <span>개봉예정</span>
                  </strong>
                </span>
                <span class="like"> </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86303/86303_320.jpg"
                      alt="트윈 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc age15">15</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">트윈</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">99%</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.12
                    <span>개봉예정</span>
                  </strong>
                </span>
                <span class="like"> </span>
              </div>
            </li>

            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86506/86506_320.jpg"
                      alt="혜옥이 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc ageNotyet">미정</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">혜옥이</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">?</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2022.12
                    <span>개봉예정</span>
                  </strong>
                </span>
                <span class="like"> </span>
              </div>
            </li>
          </ol>

          <h4><span class="hidden">상영예정작</span>2023.01</h4>
          <ol>
            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86489/86489_320.jpg"
                      alt="프린스 챠밍 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc ageAll">All</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">프린스 챠밍</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">?</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2023.01
                    <span>개봉예정</span>
                  </strong>
                </span>
                <span class="like"> </span>
              </div>
            </li>
          </ol>

          <h4><span class="hidden">상영예정작</span>2023.05.03(수)</h4>
          <ol>
            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86341/86341_320.jpg"
                      alt="슈퍼 마리오 브라더스 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc ageNotyet">미정</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">슈퍼 마리오 브라더스</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">99%</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2023.05.03
                    <span>개봉</span>
                    <em class="dday">D-169</em>
                  </strong>
                </span>
                <span class="like"> </span>
              </div>
            </li>
          </ol>

          <h4><span class="hidden">상영예정작</span>2023</h4>
          <ol>
            <li>
              <div class="box-image">
                <a href="#">
                  <span class="thumb-image">
                    <img
                      src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86153/86153_320.jpg"
                      alt="던전앤 드래곤-도적들의 명예 포스터"
                      onerror="errorImage(this)"
                    />
                    <i class="cgvIcon etc ageNotyet">미정</i>
                  </span>
                </a>
                <span class="screentype"> </span>
              </div>

              <div class="box-contents">
                <a href="#">
                  <strong class="title">던전앤 드래곤-도적들의 명예</strong>
                </a>

                <div class="score">
                  <strong class="percent">예매율<span>0.0%</span></strong>
                  <div class="egg-gage small">
                    <span class="sprite_preegg default"></span>
                    <span class="percent">99%</span>
                  </div>
                </div>

                <span class="txt-info">
                  <strong>
                    2023
                    <span>개봉예정</span>
                  </strong>
                </span>
                <span class="like"> </span>
              </div>
            </li>
          </ol>
        </div>
      </div>
    </div>
  </body>
</html>
