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
    <title>예매 | 영화 그 이상의 감동. CGV</title>
    <script src="../../../Resources/js/includeHTML.js"></script>
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="../../../Resources/js/includeHTML.js"></script>
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <link rel="stylesheet" href="../../../Resources/css/reset.css" type="text/css" />
    <link rel="stylesheet" href="../../../Resources/css/webcontent.css" />
    <link rel="stylesheet" href="../../../Resources/css/content.css" />
    <link rel="stylesheet" href="../../../Resources/css/layout.css" />
    <link rel="stylesheet" href="../../../Resources/css/module.css" />
    <link rel="stylesheet" href="../../../Resources/css/reservation.css" />
    <link rel="stylesheet" href="../../../Resources/css/reservation_tnb.css" />
    <script type="text/javascript" src="./js/jquery-3.6.1.js"></script>

    <script
      type="text/javascript"
      src="http://img.cgv.co.kr/CGV_RIA/Ticket/Common/js/2022/1101.FAVORITE_CGV/1000/reservation.step2.js"
    ></script>

    <script>
        function openPopUp(){
            var url = "popup3.jsp";
            var title = "할인안내";
            var setting = "width=600px, height=600px";
            window.open(url, title, setting);
        }

      $(function () {
        $("[data-count]").click(function () {
          var jh = $(this);

          jh.parent().find("li").removeClass("selected");
          jh.addClass("selected");

          $("#ticket_tnb .number .data").text($(jh).text());
        });

        $("[data-left]").click(function () {
          var jh = $(this);
          var j1 = $(jh).parents(".row").text().slice(58, 59);
          var j2 = $(jh).text();

          if (!jh.hasClass("selected")) {
            jh.addClass("selected");
            $("#ticket_tnb .seat_no .ellipsis-line3").text(j1 + j2);
          } else {
            jh.removeClass("selected");
          }
        });
      });
    </script>
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

    <div style="clear: both"></div>
    <a name="t"></a>
    <div id="wrap" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
        <!-- 컨텐츠 -->
        <div id="container">
            <!-- 빠른예매 -->
            <div id="ticket" class="ticket ko guest">

                <!-- 타이틀 -->
                <div class="navi">
                    <span class="right">
                        <a class="button button-english" href="#" onmousedown="javascript:logClick('옵션/ENGLISH');"
                            onclick="switchLanguage(); return false;"><span>ENGLISH</span></a>
                        <a class="button button-schedule" href="#" onmousedown="javascript:logClick('옵션/상영시간표');"
                            onclick="openSchedulePopup();return false;" title="새창열기"><span>상영시간표</span></a>
                        <a class="button button-reservation-restart" href="ticket_main.jsp"
                            onmousedown="javascript:logClick('옵션/예매다시하기');"
                            onclick="ticketRestart(); return false;"><span>예매 다시하기</span></a>
                    </span>
                </div>
                <!-- //타이틀 -->
                <!-- 메인컨텐츠 -->
                <div class="steps">
                    <!-- step2 -->
                    <div class="step step2" style="display: block;">
                        <!-- SEAT 섹션 -->
                        <div class="section section-seat">
                            <div class="col-head" id="skip_seat_list">
                                <h3 class="sreader">인원 / 좌석</h3>
                            </div>
                            <div class="col-body">
                                <div class="person_screen">
                                    <!-- NUMBEROFPEOPLE 섹션 -->
                                    <div class="section section-numberofpeople">
                                        <div class="col-body">
                                            <div id="nopContainer" class="numberofpeople-select"
                                                style="min-width: 426px;">
                                                <div id="maximum_people"
                                                    style="padding-bottom: 5px; text-align: right; font-size: 11px !important; color: red;">
                                                    * 최대 8명 선택 가능</div>

                                                <div class="group adult" id="nop_group_adult" style="display: block;">
                                                    <span class="title">일반</span>
                                                    <ul class="kh">
                                                        <li data-count="0" class="selected" type="adult"><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">일반</span>0<span
                                                                    class="sreader">명</span></a></li>
                                                        <li data-count="1" type="adult" class=""><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">일반</span>1<span
                                                                    class="sreader">명</span></a></li>
                                                        <li data-count="2" type="adult" class=""><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">일반</span>2<span
                                                                    class="sreader">명</span></a></li>
                                                        <li data-count="3" type="adult" class=""><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">일반</span>3<span
                                                                    class="sreader">명</span></a></li>
                                                        <li data-count="4" type="adult" class=""><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">일반</span>4<span
                                                                    class="sreader">명</span></a></li>
                                                        <li data-count="5" type="adult" class=""><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">일반</span>5<span
                                                                    class="sreader">명</span></a></li>
                                                        <li data-count="6" type="adult" class=""><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">일반</span>6<span
                                                                    class="sreader">명</span></a></li>
                                                        <li data-count="7" type="adult" class=""><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">일반</span>7<span
                                                                    class="sreader">명</span></a></li>
                                                        <li data-count="8" type="adult" class=""><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">일반</span>8<span
                                                                    class="sreader">명</span></a></li>
                                                    </ul>
                                                </div>

                                                <div class="group youth" id="nop_group_youth" style="display: block;">
                                                    <span class="title">청소년</span>
                                                    <ul>
                                                        <li data-count="0" class="selected" type="youth"><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">청소년</span>0<span
                                                                    class="sreader">명</span></a></li>
                                                        <li data-count="1" type="youth"><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">청소년</span>1<span
                                                                    class="sreader">명</span></a></li>
                                                        <li data-count="2" type="youth"><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">청소년</span>2<span
                                                                    class="sreader">명</span></a></li>
                                                        <li data-count="3" type="youth"><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">청소년</span>3<span
                                                                    class="sreader">명</span></a></li>
                                                        <li data-count="4" type="youth"><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">청소년</span>4<span
                                                                    class="sreader">명</span></a></li>
                                                        <li data-count="5" type="youth"><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">청소년</span>5<span
                                                                    class="sreader">명</span></a></li>
                                                        <li data-count="6" type="youth"><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">청소년</span>6<span
                                                                    class="sreader">명</span></a></li>
                                                        <li data-count="7" type="youth" class=""><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">청소년</span>7<span
                                                                    class="sreader">명</span></a></li>
                                                        <li data-count="8" type="youth" class=""><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">청소년</span>8<span
                                                                    class="sreader">명</span></a></li>
                                                    </ul>
                                                </div>

                                                <div class="group senior" id="nop_group_senior" style="display: block;">
                                                    <span class="title">경로</span>
                                                    <ul>
                                                        <li data-count="0" class="selected" type="senior"><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">경로</span>0<span
                                                                    class="sreader">명</span></a></li>
                                                        <li data-count="1" type="senior"><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">경로</span>1<span
                                                                    class="sreader">명</span></a></li>
                                                        <li data-count="2" type="senior"><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">경로</span>2<span
                                                                    class="sreader">명</span></a></li>
                                                        <li data-count="3" type="senior"><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">경로</span>3<span
                                                                    class="sreader">명</span></a></li>
                                                        <li data-count="4" type="senior"><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">경로</span>4<span
                                                                    class="sreader">명</span></a></li>
                                                        <li data-count="5" type="senior"><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">경로</span>5<span
                                                                    class="sreader">명</span></a></li>
                                                        <li data-count="6" type="senior"><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">경로</span>6<span
                                                                    class="sreader">명</span></a></li>
                                                        <li data-count="7" type="senior" class=""><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">경로</span>7<span
                                                                    class="sreader">명</span></a></li>
                                                        <li data-count="8" type="senior" class=""><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">경로</span>8<span
                                                                    class="sreader">명</span></a></li>
                                                    </ul>
                                                </div>

                                                <div class="group special hide" id="nop_group_special"
                                                    style="display: block;">
                                                    <span class="title">우대</span>
                                                    <ul>
                                                        <li data-count="0" class="selected" type="special"><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">우대</span>0<span
                                                                    class="sreader">명</span></a></li>
                                                        <li data-count="1" type="special"><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">우대</span>1<span
                                                                    class="sreader">명</span></a></li>
                                                        <li data-count="2" type="special"><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">우대</span>2<span
                                                                    class="sreader">명</span></a></li>
                                                        <li data-count="3" type="special"><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">우대</span>3<span
                                                                    class="sreader">명</span></a></li>
                                                        <li data-count="4" type="special"><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">우대</span>4<span
                                                                    class="sreader">명</span></a></li>
                                                        <li data-count="5" type="special"><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">우대</span>5<span
                                                                    class="sreader">명</span></a></li>
                                                        <li data-count="6" type="special"><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">우대</span>6<span
                                                                    class="sreader">명</span></a></li>
                                                        <li data-count="7" type="special" class=""><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">우대</span>7<span
                                                                    class="sreader">명</span></a></li>
                                                        <li data-count="8" type="special" class=""><a href="#"
                                                                onclick="return false;"><span
                                                                    class="sreader mod">우대</span>8<span
                                                                    class="sreader">명</span></a></li>
                                                    </ul>
                                                </div>

                                            </div>
                                        </div>
                                        <a href="#" id="reservarionDiscountInfo" onclick="openPopUp()">관람 할인 안내</a>
                                    </div>
                                    <!-- NUMBEROFPEOPLE 섹션 -->
                                    <div class="section section-screen-select">
                                        <div id="user-select-info">
                                            <p class="theater-info">
                                                <span class="site">CGV 강남</span>
                                                <span class="screen">3관 8층</span>
                                                <span class="seatNum">남은좌석 <b class="restNum">162</b>/<b
                                                        class="totalNum">172</b></span>
                                            </p>
                                            <p class="playYMD-info"><b>2022.11.21</b><b class="exe">(월)</b><b>19:10 ~
                                                    22:01</b></p>
                                        </div>
                                    </div>
                                    <a class="change_time_btn" href="#"
                                        onmousedown="if(event.stopPropagation){event.stopPropagation();}return false;"
                                        onclick="ticketStep2TimeSelectPopupShow();return false;"><span>상영시간
                                            변경하기</span></a>
                                </div>
                                <!-- THEATER -->
                                <div class="theater_minimap">
                                    <div class="theater nano has-scrollbar" id="seat_minimap_nano">
                                        <div class="content" tabindex="-1" style="right: -17px; bottom: -17px;">
                                            <div class="screen" title="SCREEN" style="width: 652px;"><span
                                                    class="text"></span></div>
                                            <div class="seats" id="seats_list" style="width: 288px; height: 224px;">
                                                <div>
                                                    <div class="row" style="top:0px;">
                                                        <div class="label">A</div>
                                                        <div class="seat_group left">
                                                            <div class="group">
                                                                <div class="seat rating_economy" style="left: 16px;"
                                                                    data-left="16" data-left_zoom="24">
                                                                    <a href="#" onclick=" return false;">
                                                                        <span class="no">1</span></a></div>
                                                                <div class="seat rating_economy" style="left: 32px;"
                                                                    data-left="32" data-left_zoom="48"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">2</span><span class="sreader">
                                                                            Light</span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat rating_economy" style="left: 48px;"
                                                                    data-left="48" data-left_zoom="72"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">3</span><span class="sreader">
                                                                            Light</span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat rating_economy" style="left: 64px;"
                                                                    data-left="64" data-left_zoom="96"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">4</span><span class="sreader">
                                                                            Light</span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat rating_economy" style="left: 80px;"
                                                                    data-left="80" data-left_zoom="120"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">5</span><span class="sreader">
                                                                            Light</span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat rating_economy" style="left: 96px;"
                                                                    data-left="96" data-left_zoom="144"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">6</span><span class="sreader">
                                                                            Light</span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat rating_economy" style="left: 112px;"
                                                                    data-left="112" data-left_zoom="168"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">7</span><span class="sreader">
                                                                            Light</span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat rating_economy" style="left: 128px;"
                                                                    data-left="128" data-left_zoom="192"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">8</span><span class="sreader">
                                                                            Light</span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat rating_economy" style="left: 144px;"
                                                                    data-left="144" data-left_zoom="216"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">9</span><span class="sreader">
                                                                            Light</span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat rating_economy" style="left: 160px;"
                                                                    data-left="160" data-left_zoom="240"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">10</span><span class="sreader">
                                                                            Light</span><span
                                                                            class="sreader mod"></span></a></div>
                                                            </div>
                                                        </div>
                                                        <div class="seat_group">
                                                            <div class="group">
                                                                <div class="seat handicap" style="left: 208px;"
                                                                    data-left="208" data-left_zoom="312"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">13</span><span class="sreader">
                                                                            장애인석 Light</span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat handicap" style="left: 224px;"
                                                                    data-left="224" data-left_zoom="336"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">14</span><span class="sreader">
                                                                            장애인석 Light</span><span
                                                                            class="sreader mod"></span></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row" style="top: 16px;">
                                                        <div class="label">B</div><a href="#"
                                                            onclick="skipToNextRow(event);return false;"
                                                            class="skip_row">B열 건너뛰기</a>
                                                        <div class="seat_group">
                                                            <div class="group">
                                                                <div class="seat rating_economy" style="left: 16px;"
                                                                    data-left="16" data-left_zoom="24"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">1</span><span class="sreader">
                                                                            Light</span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat rating_economy" style="left: 32px;"
                                                                    data-left="32" data-left_zoom="48"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">2</span><span class="sreader">
                                                                            Light</span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat rating_economy" style="left: 48px;"
                                                                    data-left="48" data-left_zoom="72"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">3</span><span class="sreader">
                                                                            Light</span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat rating_economy" style="left: 64px;"
                                                                    data-left="64" data-left_zoom="96"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">4</span><span class="sreader">
                                                                            Light</span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat rating_economy" style="left: 80px;"
                                                                    data-left="80" data-left_zoom="120"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">5</span><span class="sreader">
                                                                            Light</span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat rating_economy" style="left: 96px;"
                                                                    data-left="96" data-left_zoom="144"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">6</span><span class="sreader">
                                                                            Light</span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat rating_economy" style="left: 112px;"
                                                                    data-left="112" data-left_zoom="168"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">7</span><span class="sreader">
                                                                            Light</span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat rating_economy" style="left: 128px;"
                                                                    data-left="128" data-left_zoom="192"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">8</span><span class="sreader">
                                                                            Light</span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat rating_economy" style="left: 144px;"
                                                                    data-left="144" data-left_zoom="216"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">9</span><span class="sreader">
                                                                            Light</span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat rating_economy" style="left: 160px;"
                                                                    data-left="160" data-left_zoom="240"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">10</span><span class="sreader">
                                                                            Light</span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat rating_economy" style="left: 176px;"
                                                                    data-left="176" data-left_zoom="264"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">11</span><span class="sreader">
                                                                            Light</span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat rating_economy" style="left: 192px;"
                                                                    data-left="192" data-left_zoom="288"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">12</span><span class="sreader">
                                                                            Light</span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat rating_economy" style="left: 208px;"
                                                                    data-left="208" data-left_zoom="312"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">13</span><span class="sreader">
                                                                            Light</span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat rating_economy" style="left: 224px;"
                                                                    data-left="224" data-left_zoom="336"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">14</span><span class="sreader">
                                                                            Light</span><span
                                                                            class="sreader mod"></span></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row" style="top: 32px;">
                                                        <div class="label">C</div><a href="#"
                                                            onclick="skipToNextRow(event);return false;"
                                                            class="skip_row">C열 건너뛰기</a>
                                                        <div class="seat_group">
                                                            <div class="group">
                                                                <div class="seat" style="left: 16px;" data-left="16"
                                                                    data-left_zoom="24"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">1</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 32px;" data-left="32"
                                                                    data-left_zoom="48"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">2</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 48px;" data-left="48"
                                                                    data-left_zoom="72"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">3</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 64px;" data-left="64"
                                                                    data-left_zoom="96"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">4</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 80px;" data-left="80"
                                                                    data-left_zoom="120"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">5</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 96px;" data-left="96"
                                                                    data-left_zoom="144"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">6</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 112px;" data-left="112"
                                                                    data-left_zoom="168"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">7</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 128px;" data-left="128"
                                                                    data-left_zoom="192"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">8</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 144px;" data-left="144"
                                                                    data-left_zoom="216"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">9</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 160px;" data-left="160"
                                                                    data-left_zoom="240"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">10</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 176px;" data-left="176"
                                                                    data-left_zoom="264"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">11</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 192px;" data-left="192"
                                                                    data-left_zoom="288"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">12</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 208px;" data-left="208"
                                                                    data-left_zoom="312"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">13</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 224px;" data-left="224"
                                                                    data-left_zoom="336"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">14</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row" style="top: 48px;">
                                                        <div class="label">D</div><a href="#"
                                                            onclick="skipToNextRow(event);return false;"
                                                            class="skip_row">D열 건너뛰기</a>
                                                        <div class="seat_group">
                                                            <div class="group reserved">
                                                                <div class="seat reserved" style="left: 16px;"
                                                                    data-left="16" data-left_zoom="24"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">1</span><span class="sreader">
                                                                            예매완료</span><span class="sreader mod">
                                                                            선택불가</span></a></div>
                                                                <div class="seat reserved" style="left: 32px;"
                                                                    data-left="32" data-left_zoom="48"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">2</span><span class="sreader">
                                                                            예매완료</span><span class="sreader mod">
                                                                            선택불가</span></a></div>
                                                                <div class="seat reserved" style="left: 48px;"
                                                                    data-left="48" data-left_zoom="72"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">3</span><span class="sreader">
                                                                            예매완료</span><span class="sreader mod">
                                                                            선택불가</span></a></div>
                                                                <div class="seat reserved" style="left: 64px;"
                                                                    data-left="64" data-left_zoom="96"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">4</span><span class="sreader">
                                                                            예매완료</span><span class="sreader mod">
                                                                            선택불가</span></a></div>
                                                                <div class="seat reserved" style="left: 80px;"
                                                                    data-left="80" data-left_zoom="120"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">5</span><span class="sreader">
                                                                            예매완료</span><span class="sreader mod">
                                                                            선택불가</span></a></div>
                                                                <div class="seat reserved" style="left: 96px;"
                                                                    data-left="96" data-left_zoom="144"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">6</span><span class="sreader">
                                                                            예매완료</span><span class="sreader mod">
                                                                            선택불가</span></a></div>
                                                            </div>
                                                            <div class="group">
                                                                <div class="seat" style="left: 112px;" data-left="112"
                                                                    data-left_zoom="168"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">7</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 128px;" data-left="128"
                                                                    data-left_zoom="192"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">8</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 144px;" data-left="144"
                                                                    data-left_zoom="216"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">9</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 160px;" data-left="160"
                                                                    data-left_zoom="240"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">10</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 176px;" data-left="176"
                                                                    data-left_zoom="264"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">11</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 192px;" data-left="192"
                                                                    data-left_zoom="288"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">12</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 208px;" data-left="208"
                                                                    data-left_zoom="312"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">13</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 224px;" data-left="224"
                                                                    data-left_zoom="336"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">14</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row" style="top: 64px;">
                                                        <div class="label">E</div><a href="#"
                                                            onclick="skipToNextRow(event);return false;"
                                                            class="skip_row">E열 건너뛰기</a>
                                                        <div class="seat_group">
                                                            <div class="group">
                                                                <div class="seat" style="left: 16px;" data-left="16"
                                                                    data-left_zoom="24"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">1</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 32px;" data-left="32"
                                                                    data-left_zoom="48"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">2</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 48px;" data-left="48"
                                                                    data-left_zoom="72"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">3</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 64px;" data-left="64"
                                                                    data-left_zoom="96"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">4</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 80px;" data-left="80"
                                                                    data-left_zoom="120"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">5</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 96px;" data-left="96"
                                                                    data-left_zoom="144"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">6</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 112px;" data-left="112"
                                                                    data-left_zoom="168"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">7</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 128px;" data-left="128"
                                                                    data-left_zoom="192"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">8</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 144px;" data-left="144"
                                                                    data-left_zoom="216"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">9</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 160px;" data-left="160"
                                                                    data-left_zoom="240"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">10</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 176px;" data-left="176"
                                                                    data-left_zoom="264"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">11</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 192px;" data-left="192"
                                                                    data-left_zoom="288"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">12</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 208px;" data-left="208"
                                                                    data-left_zoom="312"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">13</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 224px;" data-left="224"
                                                                    data-left_zoom="336"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">14</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row" style="top: 80px;">
                                                        <div class="label">F</div><a href="#"
                                                            onclick="skipToNextRow(event);return false;"
                                                            class="skip_row">F열 건너뛰기</a>
                                                        <div class="seat_group">
                                                            <div class="group">
                                                                <div class="seat" style="left: 16px;" data-left="16"
                                                                    data-left_zoom="24"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">1</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 32px;" data-left="32"
                                                                    data-left_zoom="48"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">2</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 48px;" data-left="48"
                                                                    data-left_zoom="72"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">3</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 64px;" data-left="64"
                                                                    data-left_zoom="96"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">4</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 80px;" data-left="80"
                                                                    data-left_zoom="120"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">5</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 96px;" data-left="96"
                                                                    data-left_zoom="144"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">6</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 112px;" data-left="112"
                                                                    data-left_zoom="168"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">7</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 128px;" data-left="128"
                                                                    data-left_zoom="192"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">8</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 144px;" data-left="144"
                                                                    data-left_zoom="216"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">9</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 160px;" data-left="160"
                                                                    data-left_zoom="240"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">10</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 176px;" data-left="176"
                                                                    data-left_zoom="264"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">11</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 192px;" data-left="192"
                                                                    data-left_zoom="288"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">12</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 208px;" data-left="208"
                                                                    data-left_zoom="312"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">13</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 224px;" data-left="224"
                                                                    data-left_zoom="336"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">14</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row" style="top: 96px;">
                                                        <div class="label">G</div><a href="#"
                                                            onclick="skipToNextRow(event);return false;"
                                                            class="skip_row">G열 건너뛰기</a>
                                                        <div class="seat_group">
                                                            <div class="group">
                                                                <div class="seat" style="left: 48px;"
                                                                    data-left="48" data-left_zoom="72"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">3</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 64px;"
                                                                    data-left="64" data-left_zoom="96"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">4</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 80px;" data-left="80"
                                                                    data-left_zoom="120"><a href="#" "="" onclick="
                                                                    return false;"><span class="no">5</span><span
                                                                        class="sreader"></span><span
                                                                        class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 96px;" data-left="96"
                                                                    data-left_zoom="144"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">6</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 112px;" data-left="112"
                                                                    data-left_zoom="168"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">7</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                            </div>
                                                            <div class="group reserved">
                                                                <div class="seat reserved" style="left: 128px;"
                                                                    data-left="128" data-left_zoom="192"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">8</span><span class="sreader">
                                                                            예매완료</span><span class="sreader mod">
                                                                            선택불가</span></a></div>
                                                            </div>
                                                            <div class="group">
                                                                <div class="seat" style="left: 144px;" data-left="144"
                                                                    data-left_zoom="216"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">9</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 160px;" data-left="160"
                                                                    data-left_zoom="240"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">10</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 176px;" data-left="176"
                                                                    data-left_zoom="264"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">11</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 192px;" data-left="192"
                                                                    data-left_zoom="288"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">12</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 208px;" data-left="208"
                                                                    data-left_zoom="312"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">13</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                            </div>
                                                            <div class="group reserved">
                                                                <div class="seat reserved" style="left: 224px;"
                                                                    data-left="224" data-left_zoom="336"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">14</span><span class="sreader">
                                                                            예매완료</span><span class="sreader mod">
                                                                            선택불가</span></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row" style="top: 112px;">
                                                        <div class="label">H</div><a href="#"
                                                            onclick="skipToNextRow(event);return false;"
                                                            class="skip_row">H열 건너뛰기</a>
                                                        <div class="seat_group">
                                                            <div class="group">
                                                                <div class="seat" style="left: 48px;" data-left="48"
                                                                    data-left_zoom="72"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">3</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 64px;" data-left="64"
                                                                    data-left_zoom="96"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">4</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 80px;" data-left="80"
                                                                    data-left_zoom="120"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">5</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 96px;" data-left="96"
                                                                    data-left_zoom="144"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">6</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 112px;" data-left="112"
                                                                    data-left_zoom="168"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">7</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 128px;" data-left="128"
                                                                    data-left_zoom="192"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">8</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 144px;" data-left="144"
                                                                    data-left_zoom="216"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">9</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 160px;" data-left="160"
                                                                    data-left_zoom="240"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">10</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 176px;" data-left="176"
                                                                    data-left_zoom="264"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">11</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 192px;" data-left="192"
                                                                    data-left_zoom="288"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">12</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 208px;" data-left="208"
                                                                    data-left_zoom="312"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">13</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 224px;" data-left="224"
                                                                    data-left_zoom="336"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">14</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row" style="top: 128px;">
                                                        <div class="label">I</div><a href="#"
                                                            onclick="skipToNextRow(event);return false;"
                                                            class="skip_row">I열 건너뛰기</a>
                                                        <div class="seat_group">
                                                            <div class="group reserved">
                                                                <div class="seat reserved" style="left: 48px;"
                                                                    data-left="48" data-left_zoom="72"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">3</span><span class="sreader">
                                                                            예매완료</span><span class="sreader mod">
                                                                            선택불가</span></a></div>
                                                                <div class="seat reserved" style="left: 64px;"
                                                                    data-left="64" data-left_zoom="96"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">4</span><span class="sreader">
                                                                            예매완료</span><span class="sreader mod">
                                                                            선택불가</span></a></div>
                                                            </div>
                                                            <div class="group">
                                                                <div class="seat" style="left: 80px;" data-left="80"
                                                                    data-left_zoom="120"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">5</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 96px;" data-left="96"
                                                                    data-left_zoom="144"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">6</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 112px;" data-left="112"
                                                                    data-left_zoom="168"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">7</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 128px;" data-left="128"
                                                                    data-left_zoom="192"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">8</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 144px;" data-left="144"
                                                                    data-left_zoom="216"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">9</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 160px;" data-left="160"
                                                                    data-left_zoom="240"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">10</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 176px;" data-left="176"
                                                                    data-left_zoom="264"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">11</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 192px;" data-left="192"
                                                                    data-left_zoom="288"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">12</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 208px;" data-left="208"
                                                                    data-left_zoom="312"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">13</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 224px;" data-left="224"
                                                                    data-left_zoom="336"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">14</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row" style="top: 144px;">
                                                        <div class="label">J</div><a href="#"
                                                            onclick="skipToNextRow(event);return false;"
                                                            class="skip_row">J열 건너뛰기</a>
                                                        <div class="seat_group">
                                                            <div class="group">
                                                                <div class="seat" style="left: 48px;" data-left="48"
                                                                    data-left_zoom="72"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">3</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 64px;" data-left="64"
                                                                    data-left_zoom="96"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">4</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 80px;" data-left="80"
                                                                    data-left_zoom="120"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">5</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 96px;" data-left="96"
                                                                    data-left_zoom="144"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">6</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 112px;" data-left="112"
                                                                    data-left_zoom="168"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">7</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 128px;" data-left="128"
                                                                    data-left_zoom="192"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">8</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 144px;" data-left="144"
                                                                    data-left_zoom="216"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">9</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 160px;" data-left="160"
                                                                    data-left_zoom="240"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">10</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 176px;" data-left="176"
                                                                    data-left_zoom="264"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">11</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 192px;" data-left="192"
                                                                    data-left_zoom="288"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">12</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 208px;" data-left="208"
                                                                    data-left_zoom="312"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">13</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 224px;" data-left="224"
                                                                    data-left_zoom="336"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">14</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row" style="top: 160px;">
                                                        <div class="label">K</div><a href="#"
                                                            onclick="skipToNextRow(event);return false;"
                                                            class="skip_row">K열 건너뛰기</a>
                                                        <div class="seat_group left">
                                                            <div class="group">
                                                                <div class="seat" style="left: 48px;" data-left="48"
                                                                    data-left_zoom="72"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">3</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 64px;" data-left="64"
                                                                    data-left_zoom="96"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">4</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 80px;" data-left="80"
                                                                    data-left_zoom="120"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">5</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 96px;" data-left="96"
                                                                    data-left_zoom="144"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">6</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 112px;" data-left="112"
                                                                    data-left_zoom="168"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">7</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 128px;" data-left="128"
                                                                    data-left_zoom="192"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">8</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 144px;" data-left="144"
                                                                    data-left_zoom="216"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">9</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 160px;" data-left="160"
                                                                    data-left_zoom="240"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">10</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 176px;" data-left="176"
                                                                    data-left_zoom="264"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">11</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 192px;" data-left="192"
                                                                    data-left_zoom="288"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">12</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 208px;" data-left="208"
                                                                    data-left_zoom="312"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">13</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 224px;" data-left="224"
                                                                    data-left_zoom="336"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">14</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                            </div>
                                                        </div>
                                                        <div class="seat_group">
                                                            <div class="group">
                                                                <div class="seat connecting stateS sweet"
                                                                    style="left: 256px;" data-left="256"
                                                                    data-left_zoom="384"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">15</span><span
                                                                            class="sreader"> sweetbox</span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat connecting sweet" style="left: 272px;"
                                                                    data-left="272" data-left_zoom="408"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">16</span><span class="sreader">
                                                                            sweetbox</span><span
                                                                            class="sreader mod"></span></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row" style="top: 176px;">
                                                        <div class="label">L</div><a href="#"
                                                            onclick="skipToNextRow(event);return false;"
                                                            class="skip_row">L열 건너뛰기</a>
                                                        <div class="seat_group left">
                                                            <div class="group">
                                                                <div class="seat" style="left: 48px;" data-left="48"
                                                                    data-left_zoom="72"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">3</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 64px;" data-left="64"
                                                                    data-left_zoom="96"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">4</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 80px;" data-left="80"
                                                                    data-left_zoom="120"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">5</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 96px;" data-left="96"
                                                                    data-left_zoom="144"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">6</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 112px;" data-left="112"
                                                                    data-left_zoom="168"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">7</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 128px;" data-left="128"
                                                                    data-left_zoom="192"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">8</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 144px;" data-left="144"
                                                                    data-left_zoom="216"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">9</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 160px;" data-left="160"
                                                                    data-left_zoom="240"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">10</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 176px;" data-left="176"
                                                                    data-left_zoom="264"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">11</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 192px;" data-left="192"
                                                                    data-left_zoom="288"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">12</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 208px;" data-left="208"
                                                                    data-left_zoom="312"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">13</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat" style="left: 224px;" data-left="224"
                                                                    data-left_zoom="336"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">14</span><span
                                                                            class="sreader"></span><span
                                                                            class="sreader mod"></span></a></div>
                                                            </div>
                                                        </div>
                                                        <div class="seat_group">
                                                            <div class="group">
                                                                <div class="seat connecting stateS sweet"
                                                                    style="left: 256px;" data-left="256"
                                                                    data-left_zoom="384"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">15</span><span
                                                                            class="sreader"> sweetbox</span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat connecting sweet" style="left: 272px;"
                                                                    data-left="272" data-left_zoom="408"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">16</span><span class="sreader">
                                                                            sweetbox</span><span
                                                                            class="sreader mod"></span></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row" style="top: 192px;">
                                                        <div class="label">M</div><a href="#"
                                                            onclick="skipToNextRow(event);return false;"
                                                            class="skip_row">M열 건너뛰기</a>
                                                        <div class="seat_group left">
                                                            <div class="group">
                                                                <div class="seat connecting stateS sweet" style="left: 48px;" data-left="48" data-left_zoom="72">
                                                                    <a href="#" onclick="">
                                                                        <span class="no">3</span><span class="sreader"> sweetbox</span>
                                                                        <span class="sreader mod"></span>
                                                                    </a>
                                                                </div>
                                                                <div class="seat connecting sweet" style="left: 64px;"
                                                                    data-left="64" data-left_zoom="96"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">4</span><span class="sreader">
                                                                            sweetbox</span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat connecting stateS sweet"
                                                                    style="left: 80px;" data-left="80"
                                                                    data-left_zoom="120"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">5</span><span
                                                                            class="sreader"> sweetbox</span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat connecting sweet" style="left: 96px;"
                                                                    data-left="96" data-left_zoom="144"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">6</span><span class="sreader">
                                                                            sweetbox</span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat connecting stateS sweet"
                                                                    style="left: 112px;" data-left="112"
                                                                    data-left_zoom="168"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">7</span><span
                                                                            class="sreader"> sweetbox</span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat connecting sweet" style="left: 128px;"
                                                                    data-left="128" data-left_zoom="192"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">8</span><span class="sreader">
                                                                            sweetbox</span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat connecting stateS sweet"
                                                                    style="left: 144px;" data-left="144"
                                                                    data-left_zoom="216"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">9</span><span
                                                                            class="sreader"> sweetbox</span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat connecting sweet" style="left: 160px;"
                                                                    data-left="160" data-left_zoom="240"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">10</span><span class="sreader">
                                                                            sweetbox</span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat connecting stateS sweet"
                                                                    style="left: 176px;" data-left="176"
                                                                    data-left_zoom="264"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">11</span><span
                                                                            class="sreader"> sweetbox</span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat connecting sweet" style="left: 192px;"
                                                                    data-left="192" data-left_zoom="288"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">12</span><span class="sreader">
                                                                            sweetbox</span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat connecting stateS sweet"
                                                                    style="left: 208px;" data-left="208"
                                                                    data-left_zoom="312"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">13</span><span
                                                                            class="sreader"> sweetbox</span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat connecting sweet" style="left: 224px;"
                                                                    data-left="224" data-left_zoom="336"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">14</span><span class="sreader">
                                                                            sweetbox</span><span
                                                                            class="sreader mod"></span></a></div>
                                                            </div>
                                                        </div>
                                                        <div class="seat_group">
                                                            <div class="group">
                                                                <div class="seat connecting stateS sweet"
                                                                    style="left: 256px;" data-left="256"
                                                                    data-left_zoom="384"><a href="#" "="" onclick="
                                                                        return false;"><span class="no">15</span><span
                                                                            class="sreader"> sweetbox</span><span
                                                                            class="sreader mod"></span></a></div>
                                                                <div class="seat connecting sweet" style="left: 272px;"
                                                                    data-left="272" data-left_zoom="408"><a
                                                                        href="#" "="" onclick=" return false;"><span
                                                                            class="no">16</span><span class="sreader">
                                                                            sweetbox</span><span
                                                                            class="sreader mod"></span></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="legend" style="width: 125px;">
                                        <div class="buttons">
                                            <a class="btn-zoom" id="seat_zoom_btn" href="#"
                                                onclick="ts2SeatZoomClickListener();return false;">크게보기</a>
                                        </div>
                                        <div class="seat-icon-desc">
                                            <span class="icon selected"><span class="icon"></span>선택</span>
                                            <span class="icon reserved"><span class="icon"></span>예매완료</span>
                                            <span class="icon notavail"><span class="icon"></span>선택불가</span>
                                        </div>
                                        <div class="seat-type">
                                            <span class="radiobutton type-rating_economy">Light석<span class="icon"></span></span>
                                            <span class="radiobutton type-handicap">장애인석<span class="icon"></span></span>
                                            <span class="radiobutton type-sweetbox">SWEETBOX<span class="icon"></span></span>
                                        </div>
                                    </div>
                                    <div class="mouse_block"></div>
                                </div>
                            </div>
                        </div>
                        <a class="btn-refresh" href="ticket_select.jsp">
                            <span>다시하기</span>
                        </a>
                    </div>
                    <!-- //step2 -->
                </div>
            </div>
            <!-- //빠른예매 -->
        </div>
        <!-- //컨텐츠 -->

        <div id="ticket_tnb" class="tnb_container ">
            <div class="tnb step2">
                <!-- btn-left -->
                <a class="btn-left" href="#" onclick="OnTnbLeftClick(); return false;" title="영화선택">이전단계로 이동</a>
                <div class="info movie">
                    <span class="movie_poster"><img
                            src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86119/86119_185.JPG" alt="영화 포스터"
                            style="display: inline;"></span>
                    <div class="row movie_title colspan2" style="display: block;">
                        <span class="data letter-spacing-min ellipsis-line2">
                            <a href="#" target="_blank" onmousedown="javascript:logClick('SUMMARY/영화상세보기');"
                                title="블랙팬서-와칸다포에버">블랙팬서-와칸다포에버</a></span>
                    </div>
                    <div class="row movie_type" style="display: block;">
                        <span class="data ellipsis-line1" title="2D">2D</span>
                    </div>
                    <div class="row movie_rating" style="display: block;">
                        <span class="data" title="12세 관람가">12세 관람가</span>
                    </div>
                    <div class="placeholder" title="영화선택" style="display: none;"></div>
                </div>
                <div class="info theater">
                    <div class="row name" style="display: block;">
                        <span class="header">극장</span>
                        <span class="data letter-spacing-min ellipsis-line1"><a target="_blank"
                                onmousedown="javascript:logClick('SUMMARY/극장상세보기');"
                                href="#" title="CGV 강남">CGV 강남</a></span>
                    </div>
                    <div class="row date" style="display: block;">
                        <span class="header">일시</span>
                        <span class="data" title="2022.11.21(월) 19:10">2022.11.21(월) 19:10</span>
                    </div>
                    <div class="row screen" style="display: block;">
                        <span class="header">상영관</span>
                        <span class="data" title="3관 8층">3관 8층</span>
                    </div>
                    <div class="row number" style="display: block;">
                        <span class="header">인원</span>
                        <span class="data" title=""></span>
                    </div>
                    <div class="placeholder" title="극장선택" style="display: none;"></div>
                </div>
                <div class="info seat">
                    <div class="row seat_name" style="height: 20px;">
                        <span class="header">좌석명</span>
                        <span class="data" title="일반석"></span>
                    </div>
                    <div class="row seat_no colspan3">
                        <span class="header">좌석번호</span>
                        <span class="data ellipsis-line3" title="G3,G4"></span>
                    </div>
                    <div class="placeholder" title="좌석선택" style="display: none;"></div>
                </div>
                <div class="info payment-ticket" style="width: 155px;">
                    <div class="row payment-adult" style="display: none;">
                        <span class="header">일반</span>
                        <span class="data"><span class="price">0</span><span class="exe"> 원 X </span><span
                                class="quantity">0</span></span>
                    </div>
                    <div class="row payment-youth" style="display: none;">
                        <span class="header">청소년</span>
                        <span class="data"><span class="price">0</span>
                        <span class="exe"> 원 X </span>
                        <span class="quantity">0</span></span>
                    </div>
                    <div class="row payment-senior" style="display: none;">
                        <span class="header">경로</span>
                        <span class="data"><span class="price">0</span><span class="exe"> 원 X </span><span
                                class="quantity">0</span></span>
                    </div>
                    <div class="row payment-special" style="display: none;">
                        <span class="header">우대</span>
                        <span class="data"><span class="price">0</span><span class="exe"> 원 X </span><span
                                class="quantity">0</span></span>
                    </div>
                    <div class="row payment-final" style="display: none;">
                        <span class="header">총금액</span>
                        <span class="data"><span class="price">28,000</span><span class="won">원</span></span>
                        <span id="priceMapInfoIco"
                            style="position: absolute; right: -17px; margin-top: 3px; cursor: pointer; display: none;"><img
                                src="http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step2/ico_circle_14.png"
                                height="14" width="14" alt="mappingIco"></span>
                        <div id="priceMappingContainer"
                            style="display: none; position: absolute; right: -80px; z-index: 100; width: 150px; height: auto; padding: 10px; background: rgb(51, 51, 51);">
                            container!<br>container!<br>container!</div>
                    </div>
                </div>
                <!-- btn-right -->
                <div class="tnb_step_btn_right_before" id="tnb_step_btn_right_before"></div>
                    <a class="btn-right on" id="tnb_step_btn_right" href="payment.jsp" onclick="OnTnbRightClick(); return false;" title="결제선택"></a>
                </div>
            </div>
        </div>

        <!-- bottom banner -->
        <div class="banner" id="ticket_bottom_banner" style="padding-top: 0px;">
            <a target="_blank" title="새창" href="#" style="background-color: rgb(255, 255, 255);"><span>popUp</span>
                <img src="https://adimg.cgv.co.kr/images/202211/Ditto/1116_996x140.jpg" alt="popUp"
                    onload="ticketNeedResize();" style="width: 996px; height: 140px;">
            </a>
        </div>

        <!-- wing banner -->
        <div id="ticket_banner" class="ticket_banner">
            <div>
                <div class="AdvertiseCon" id="RIA_Skin_Seat_L"
                    style="width: 160px; height: 300px; background: none; position: absolute; top: 75px; left: -164px; overflow: hidden; display: block;">
                    <a href="#" target="_blank" style="top: 0px;"><img
                            src="https://adimg.cgv.co.kr/images/202111/cgvgift/1221_160x300.jpg" width="160"
                            height="300" alt="광고-CGV 기프트 카드" style="width: 160px; height: 300px;"></a>
                </div>
                <div class="AdvertiseCon" id="RIA_Skin_Seat_R"
                    style="width: 160px; height: 300px; background: none; position: absolute; top: 75px; left: 1000px; overflow: hidden; display: block;">
                    <a href="#" target="_blank" style="top: 0px;"><img
                            src="https://adimg.cgv.co.kr/images/202111/cgvgift/1221_160x300.jpg" width="160"
                            height="300" alt="광고-CGV 기프트 카드" style="width: 160px; height: 300px;"></a>
                </div>
            </div>
        </div>

    </div>
    <div include-html="../../component/footer.jsp">
      <script>
        includeHTML();
      </script>
    </div>
  </body>
</html>
