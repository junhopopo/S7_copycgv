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
    <link rel="stylesheet" href="../../../Resources/css/reset.css" />
    <link rel="stylesheet" href="../../../Resources/css/reserve.css" />
    <script src="../../script/jquery-3.6.1.js"></script>
    <link
      rel="stylesheet"
      href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css"
    />
    <script src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
    <!-- <link rel='stylesheet' href='./css/ti1-2.css'> -->
    <script>
      $(function () {
        var url = "popup.jsp";
        var title = "마스크 착용";
        var setting = "width=450px, height=450px";
        window.open(url, title, setting);
      });
      $(function () {
        let y = new Date();
        y.setDate(y.getDate() - 1);
        let str =
          y.getFullYear() +
          "-" +
          ("0" + (y.getMonth() + 1)).slice(-2) +
          "-" +
          ("0" + y.getDate()).slice(-2);
        $("#date").attr("max", str);

        // 버튼의 클릭 이벤트
        $("#mybtn").click(function () {
          let d = $("#date").val(); //YYYY-MM-dd
          const regex = /-/g;
          let d_str = d.replace(regex, ""); //YYYYMMdd

          let url =
            "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=" +
            d_str;

          $.getJSON(url, function (data) {
            let movieList = data.boxOfficeResult.dailyBoxOfficeList;
            $("#movie-name").empty();
            //  $("#movie-name").append(d);
            for (let i in movieList) {
              $("#movie-name").append(
                "<div class='movie' id=" +
                  movieList[i].movieCd +
                  ">" +
                  movieList[i].movieNm +
                  "</div>"
              );
              console.log(movieList[i].movieCd);
            }
            addEventForAddedNode(
              "#movie-name > .movie",
              movieClickHandler,
              "click"
            );
            // addEventForChangeColor("#movie-name > .movie", nameClickHandler, "change");
          });
        }); //button click

        // 영화 제목 클릭시
        // $("#movie-name").on("click",".movie", function(){
        //     $(this).css('background-color', '#333333');
        //     $(this).css('color', 'white');
        //     // let url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.json?key=f5eef3421c602c6cb7ea224104795888&movieCd="+movieCd;
        // });
      });

      //             function addEventForChangeColor(nodeSelector, afunction, typeOfEvent) {
      //                 $(nodeSelector).on(typeOfEvent, afunction);
      //             }

      //              movieName.addEventListener('click', function () {

      // });

      function addEventForAddedNode(nodeSelector, cbfunction, typeOfEvent) {
        $(nodeSelector).on(typeOfEvent, cbfunction);
      }
      function movieClickHandler() {
        console.log("영화클릭!!!!");
        console.log(this);
        console.log("영화id: " + $(this).prop("id"));
        console.log("영화제목: " + $(this).jsp());
      }

      // movieName.forEach(list => {
      //     list.addEventListener('click', function () {
      //         const movieNameActive = document.querySelectorAll('.movie-active');
      //         movieNameActive.forEach(li => {
      //             li.classList.remove('movie-active');
      //         });
      //         list.classList.add('movie-active');
      //         console.log(list.innerHTML);
      //         inputRunningTime.value = list.innerHTML;
      //     });
      // });
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
    <div id="ticket">
      <button
        type="button"
        class="btn_chart"
        onclick="location.href='//www.cgv.co.kr/reserve/show-times/?'"
        ;
      ></button>
      <button
        type="button"
        class="btn_restart"
        onClick="window.location.reload()"
      ></button>
    </div>
    <div class="reserve-container">
      <div class="movie-part">
        <div class="reserve-title">영화</div>
        <div class="sort-wrapper">
          <div class="sort-rate sort-selected">예매율순</div>
          <div class="sort-korean">가나다순</div>
        </div>
        <div class="movie-list-wrapper">
          <div class="movie-list">
            <!-- <div class="movie-list-age">15</div>
                      <div class="movie-list-title">1917</div> -->

            <!-- 영화 날짜 / 확인버튼 -->
            <div>
              <input type="date" id="date" />
              <button id="mybtn">click!</button>
            </div>

            <div id="movie-name"></div>
          </div>
        </div>
      </div>
      <div class="theater-part">
        <div class="reserve-title">극장</div>
        <div class="theater-container">
          <div class="theater-wrapper">
            <div class="theater-location-wrapper">
              <button class="theater-location">서울(30)</button>
              <button class="theater-location">경기(43)</button>
              <button class="theater-location">인천(10)</button>
              <button class="theater-location">강원(5)</button>
            </div>
            <div class="theater-place-wrapper">
              <button class="theater-place">천호</button>
              <button class="theater-place">강변</button>
              <button class="theater-place">건대입구</button>
              <button class="theater-place">구로</button>
              <button class="theater-place">대학로</button>
              <button class="theater-place">동대문</button>
              <button class="theater-place">목동</button>
              <button class="theater-place">명동</button>
              <button class="theater-place">미아</button>
              <button class="theater-place">불광</button>
              <button class="theater-place">상봉</button>
              <button class="theater-place">송파</button>
              <button class="theater-place">수유</button>
              <button class="theater-place">압구정</button>
              <button class="theater-place">여의도</button>
              <button class="theater-place">영등포</button>
              <button class="theater-place">왕십리</button>
              <button class="theater-place">중계</button>
            </div>
          </div>
        </div>
      </div>
      <div class="day-part">
        <div class="reserve-title">날짜</div>
        <div class="reserve-date"></div>
      </div>
      <div class="time-part">
        <div class="reserve-title">시간</div>
        <div class="reserve-time">
          <div class="reserve-where">4관(Laser) 6층(총 240석)</div>
          <div class="reserve-time-wrapper">
            <button class="reserve-time-button">
              <span class="reserve-time-want">12:20</span>
              <span class="reserve-time-remain">240석</span>
            </button>
            <button class="reserve-time-button">
              <span class="reserve-time-want">14:20</span>
              <span class="reserve-time-remain">240석</span>
            </button>
            <button class="reserve-time-button">
              <span class="reserve-time-want">16:20</span>
              <span class="reserve-time-remain">240석</span>
            </button>
            <button class="reserve-time-button">
              <span class="reserve-time-want">18:20</span>
              <span class="reserve-time-remain">240석</span>
            </button>
          </div>
          <div class="reserve-time">
            <div class="reserve-where">2관(Laser) 6층(총 240석)</div>
            <div class="reserve-time-wrapper">
              <button class="reserve-time-button">
                <span class="reserve-time-want">10:20</span>
                <span class="reserve-time-remain">240석</span>
              </button>
              <button class="reserve-time-button">
                <span class="reserve-time-want">13:10</span>
                <span class="reserve-time-remain">240석</span>
              </button>
              <button class="reserve-time-button">
                <span class="reserve-time-want">17:30</span>
                <span class="reserve-time-remain">240석</span>
              </button>
              <button class="reserve-time-button">
                <span class="reserve-time-want">20:20</span>
                <span class="reserve-time-remain">240석</span>
              </button>
            </div>
          </div>
          <div>
            <form class="moveSeatForm" action="moveSeat.do" method="post">
              <input type="hidden" class="title" name="title" />
              <input type="hidden" class="movieAge" name="movieAge" />
              <input
                type="hidden"
                class="selectedTheater"
                name="selectedTheater"
              />
              <input type="hidden" class="reserveDate" name="movieDate" />
              <input type="hidden" class="runningTime" name="runningTime" />
              <button
                href="ticket_select.jsp"
                class="moveSeatButton"
                type="button"
              >
                예약하기
              </button>
            </form>
          </div>
        </div>
      </div>
    </div>
    <div id="ticket_tnb">
      <div class="tnb step1">
        <div class="info movie">
          <span class="movie_poster"><img src="#" alt="영화 포스터" /></span>
          <div class="placeholder"></div>
        </div>
        <div class="info theater">
          <div class="row name">
            <span class="header">극장</span>
            <span class="data letter-spacing-min ellipsis-line1"
              ><a href="#">극장정보상세보기</a></span
            >
          </div>
          <div class="row date">
            <span class="header">일시</span>
          </div>
          <div class="row screen">
            <span class="header">상영관</span>
          </div>
          <div class="row number">
            <span class="header">인원</span>
          </div>
          <div class="placeholder"></div>
        </div>
        <div class="info path">
          <div class="row colspan4">
            <span class="path-step2">&nbsp;</span>
            <span class="path-step3">&nbsp;</span>
          </div>
        </div>
        <a class="btn-right" href="#"></a>
      </div>
    </div>
    <div style="clear: both"></div>

    <div include-html="../../component/footer.jsp">
      <script>
        includeHTML();
      </script>
    </div>
    <script>
      const date = new Date();
      // console.log(date.getFullYear());
      const lastDay = new Date(date.getFullYear(), date.getMonth() + 1, 0);
      const reserveDate = document.querySelector(".reserve-date");
      const theaterPlace = document.querySelectorAll(".theater-place");
      const reserveTimeWant = document.querySelectorAll(".reserve-time-want");
      const inputTitle = document.querySelector(".movie");
      const inputSelectedTheater = document.querySelector(".selectedTheater");
      const inputReserveDate = document.querySelector(".reserveDate");
      const inputRunningTime = document.querySelector(".runningTime");
      const moveSeatForm = document.querySelector(".moveSeatForm");
      const moveSeatButton = document.querySelector(".moveSeatButton");
      const movieAge = document.querySelector(".movieAge");
      // const movieName = document.querySelector('.movie');

      let movieListAge = "";
      let year = 0;
      let month = 0;
      add();
      document.addEventListener("DOMContentLoaded", () => {
        add();
        addDate();
      });

      // 데이터 가져오기
      function add() {
        $.ajax({
          // url: 'crawling.do',
          // type: 'get',
          success: function (data) {
            // crawlingData = setData(data);
            // console.log(crawlingData);
            // document.querySelector('.movie-list-wrapper').append(crawlingData);
            //            poster.setAttribute('src', crawlingData[randomNumber].img)crawlingData;
            // setList(data);
            // movieListAge = document.querySelectorAll('.movie-list-age');
            // movieListAge.forEach(li => {
            //     if (li.innerHTML === '15세 이상') {
            //         li.classList.add('fifteen');
            //     } else if (li.innerHTML === '청소년 관람불가') {
            //         li.classList.add('eighteen');
            //         li.innerHTML = '청불';
            //     } else if (li.innerHTML === '전체') {
            //         li.classList.add('all');
            //     }
            // });
            // if (crawlingData.length === 0) {
            //     location.href = 'moveReserve.do';
            // }
            document.querySelectorAll(".movie-list-title").forEach((li) => {
              li.addEventListener("click", function () {
                const movieListTitleActvie = document.querySelectorAll(
                  ".movie-list-title-active"
                );
                movieListTitleActvie.forEach((li) => {
                  li.classList.remove("movie-list-title-active");
                });
                li.parentNode.classList.add("movie-list-title-active");
                console.log(li.innerHTML);
                console.log(li.parentElement);
                console.log(li.parentElement.childNodes[1].innerHTML);
                //form에 넘기기 위한
                movieAge.value = li.parentElement.childNodes[1].innerHTML;
                inputTitle.value = li.innerHTML;
              });
            });
          },
        });
      }

      function setData(data) {
        data = JSON.parse(data);

        return data;
      }

      function setList(data) {
        document.querySelector(".movie-list-wrapper").innerHTML = JSON.parse(
          data
        ).reduce((html = "", item, index = 0) => {
          html += getMovieList(item);

          return html;
        }, " ");
      }

      //             function getMovieList(item) {
      //                 console.log(item);
      //                 return `<div class="movie-list">
      //     <div class="movie-list-age">${item.movieAge}</div>
      //     <button class="movie-list-title">${item.movieTitle}</button>
      // </div>`;
      //             }

      function addDate() {
        const weekOfDay = ["일", "월", "화", "수", "목", "금", "토"];
        year = date.getFullYear();
        month = date.getMonth();
        reserveDate.append(year + "/" + month);
        for (i = date.getDate(); i <= lastDay.getDate(); i++) {
          const button = document.createElement("button");
          const spanWeekOfDay = document.createElement("span");
          const spanDay = document.createElement("span");

          //class넣기
          button.classList = "movie-date-wrapper";
          spanWeekOfDay.classList = "movie-week-of-day";
          spanDay.classList = "movie-day";

          //weekOfDay[new Date(2020-03-날짜)]
          const dayOfWeek =
            weekOfDay[new Date(year + "-" + month + "-" + i).getDay()];

          //요일 넣기
          if (dayOfWeek === "토") {
            spanWeekOfDay.classList.add("saturday");
            spanDay.classList.add("saturday");
          } else if (dayOfWeek === "일") {
            spanWeekOfDay.classList.add("sunday");
            spanDay.classList.add("sunday");
          }
          spanWeekOfDay.innerHTML = dayOfWeek;
          button.append(spanWeekOfDay);
          //날짜 넣기
          spanDay.innerHTML = i;
          button.append(spanDay);
          //button.append(i);

          reserveDate.append(button);

          dayClickEvent(button);
        }
      }

      function dayClickEvent(button) {
        button.addEventListener("click", function () {
          const movieDateWrapperActive = document.querySelectorAll(
            ".movie-date-wrapper-active"
          );
          movieDateWrapperActive.forEach((list) => {
            list.classList.remove("movie-date-wrapper-active");
          });
          button.classList.add("movie-date-wrapper-active");
          console.log(button.childNodes[1].innerHTML);
          inputReserveDate.value =
            year +
            "." +
            month +
            "." +
            button.childNodes[1].innerHTML +
            "(" +
            button.childNodes[0].innerHTML +
            ")";
          console.log(inputReserveDate.value);
        });
      }

      theaterPlace.forEach((list) => {
        list.addEventListener("click", function () {
          const theaterPlaceWrapper = document.querySelectorAll(
            ".theater-place-active"
          );
          theaterPlaceWrapper.forEach((li) => {
            li.classList.remove("theater-place-active");
          });
          list.classList.add("theater-place-active");
          console.log(list.innerHTML);
          inputSelectedTheater.value = list.innerHTML;
        });
      });

      reserveTimeWant.forEach((list) => {
        list.addEventListener("click", function () {
          const reserveTimeActive = document.querySelectorAll(
            ".reserve-time-active"
          );
          reserveTimeActive.forEach((li) => {
            li.classList.remove("reserve-time-active");
          });
          list.classList.add("reserve-time-active");
          console.log(list.innerHTML);
          inputRunningTime.value = list.innerHTML;
        });
      });

      moveSeatButton.addEventListener("click", function () {
        if (
          $(".movie") &&
          !!inputSelectedTheater.value &&
          !!inputReserveDate.value &&
          !!inputRunningTime.value
        ) {
          moveSeatButton.onclick = window.location = "ticket_select.jsp";
        } else {
          toastr.options = {
            positionClass: "toast-top-full-width",
            progressBar: true,
            timeOut: 1000,
          };
          toastr.error(
            '<div style="color:white">모든 항목을 체크해 주세요</div>',
            '<div style="color:white">경고</div>',
            {
              timeOut: 3000,
            }
          );
        }
      });

      // 영화 제목 클릭시
      $("#movie-name").on("click", ".movie", function () {
        $(this).css("background-color", "#333333");
        $(this).css("color", "white");
      });
    </script>
  </body>
</html>
