<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div class="category">
      <div class="nav">
        <div class="red_border"></div>
        <div class="contents">
          <ul class="nav_menu">
            <ul class="unover-menu">
              <li>
                <h2><a href="../../WEB-INF/view/movie/movie_0.jsp">영화</a></h2>
              </li>
              <li>
                <h2><a href="#">극장</a></h2>
              </li>
              <li>
                <h2>
                  <a href="../ticket_display/ticket_main.jsp"
                    ><strong>예매</strong></a
                  >
                </h2>
              </li>
              <li>
                <h2><a href="#">스토어</a></h2>
              </li>
              <li>
                <h2 onclick="gaEventLog('PC_GNB','주메뉴_이벤트','')">
                  <a href="#">이벤트</a>
                </h2>
              </li>
              <li>
                <h2 onclick="gaEventLog('PC_GNB','주메뉴_해택','')">
                  <a href="#">혜택</a>
                </h2>
              </li>
            </ul>
            <div class="hidden-menu">
              <ul class="nav_overMenu">
                <li>
                  <h2><a href="#" tabindex="-1">영화</a></h2>
                </li>
                <li>
                  <h3><a href="../../WEB-INF/view/movie/movie_0.jsp">무비차트</a></h3>
                </li>
                <li>
                  <h3><a href="#">아트하우스</a></h3>
                </li>
                <li>
                  <h3><a href="#">ICECON</a></h3>
                </li>
              </ul>
              <ul class="nav_overMenu">
                <li>
                  <h2><a href="#" tabindex="-1">극장</a></h2>
                </li>
                <li>
                  <h3><a href="#">CGV 극장</a></h3>
                </li>
                <li>
                  <h3><a href="#">특별관</a></h3>
                </li>
              </ul>
              <ul class="nav_overMenu">
                <li>
                  <h2>
                    <a
                      href="../../WEB-INF/view/ticket/ticket_main.jsp"
                      tabindex="-1"
                      >예매</a
                    >
                  </h2>
                </li>
                <li>
                  <h3>
                    <a href="../../WEB-INF/view/ticket/ticket_main.jsp"
                      >빠른예매</a
                    >
                  </h3>
                </li>
                <li>
                  <h3><a href="#">상영스케줄</a></h3>
                </li>
                <li>
                  <h3><a href="#">English Ticketing</a></h3>
                </li>
                <li>
                  <h3><a href="#">English Schedule</a></h3>
                </li>
              </ul>
              <ul class="nav_overMenu">
                <li>
                  <h2><a href="#" tabindex="-1">스토어</a></h2>
                </li>
                <li>
                  <h3><a href="#">영화관람권</a></h3>
                </li>
                <li>
                  <h3><a href="#">기프트카드</a></h3>
                </li>
                <li>
                  <h3><a href="#">콤보</a></h3>
                </li>
                <li>
                  <h3><a href="#">팝콘</a></h3>
                </li>
                <li>
                  <h3><a href="#">음료</a></h3>
                </li>
                <li>
                  <h3><a href="#">스낵</a></h3>
                </li>
                <li>
                  <h3><a href="#0">플레이존</a></h3>
                </li>
                <li>
                  <h3><a href="#" class="arrowR" target="_blank">씨네샵</a></h3>
                </li>
              </ul>
              <ul class="nav_overMenu">
                <li>
                  <h2><a href="#" tabindex="-1">이벤트</a></h2>
                </li>
                <li>
                  <h3><a href="#">SPECIAL</a></h3>
                </li>
                <li>
                  <h3><a href="#">영화/예매</a></h3>
                </li>
                <li>
                  <h3><a href="#">멤버십/CLUB</a></h3>
                </li>
                <li>
                  <h3><a href="#">CGV 극장별</a></h3>
                </li>
                <li>
                  <h3><a href="#">제휴할인</a></h3>
                </li>
                <li>
                  <h3><a href="#">당첨자 발표</a></h3>
                </li>
                <li>
                  <h3><a href="#">종료된 이벤트</a></h3>
                </li>
              </ul>
              <ul class="nav_overMenu">
                <li>
                  <h2><a href="#" tabindex="-1">혜택</a></h2>
                </li>
                <li>
                  <h3><a href="#">CGV 할인정보</a></h3>
                </li>
                <li>
                  <h3><a href="#">CLUB 서비스</a></h3>
                </li>
                <li>
                  <h3><a href="#">VIP 라운지</a></h3>
                </li>
              </ul>
            </div>
          </ul>
          <div class="totalSearch_wrap active">
            <label for="totalSearch">
              <input type="text" id="header_keyword" value="" placeholder="" />
            </label>
            <button
              type="button"
              class="btn_totalSearch"
              id="btn_header_search"
            >
              버튼
            </button>
          </div>
          <div class="hiddenMenu">
            <ul class="nav_overMenu">
              <li>
                <h2><a href="#" tabindex="-1">영화</a></h2>
              </li>
              <li>
                <h3><a href="#">무비차트</a></h3>
              </li>
              <li>
                <h3><a href="#">아트하우스</a></h3>
              </li>
              <li>
                <h3><a href="#">ICECON</a></h3>
              </li>
            </ul>
            <ul class="nav_overMenu">
              <li>
                <h2><a href="#" tabindex="-1">극장</a></h2>
              </li>
              <li>
                <h3><a href="#">CGV 극장</a></h3>
              </li>
              <li>
                <h3><a href="#">특별관</a></h3>
              </li>
            </ul>
            <ul class="nav_overMenu">
              <li>
                <h2><a href="#" tabindex="-1">예매</a></h2>
              </li>
              <li>
                <h3><a href="#">빠른예매</a></h3>
              </li>
              <li>
                <h3><a href="#">상영스케줄</a></h3>
              </li>
              <li>
                <h3><a href="#">English Ticketing</a></h3>
              </li>
              <li>
                <h3><a href="#">English Schedule</a></h3>
              </li>
            </ul>
            <ul class="nav_overMenu">
              <li>
                <h2><a href="#" tabindex="-1">스토어</a></h2>
              </li>
              <li>
                <h3><a href="#">영화관람권</a></h3>
              </li>
              <li>
                <h3><a href="#">기프트카드</a></h3>
              </li>
              <li>
                <h3><a href="#">콤보</a></h3>
              </li>
              <li>
                <h3><a href="#">팝콘</a></h3>
              </li>
              <li>
                <h3><a href="#">음료</a></h3>
              </li>
              <li>
                <h3><a href="#">스낵</a></h3>
              </li>
              <li>
                <h3><a href="#0">플레이존</a></h3>
              </li>
              <li>
                <h3><a href="#" class="arrowR" target="_blank">씨네샵</a></h3>
              </li>
            </ul>
            <ul class="nav_overMenu">
              <li>
                <h2><a href="#" tabindex="-1">이벤트</a></h2>
              </li>
              <li>
                <h3><a href="#">SPECIAL</a></h3>
              </li>
              <li>
                <h3><a href="#">영화/예매</a></h3>
              </li>
              <li>
                <h3><a href="#">멤버십/CLUB</a></h3>
              </li>
              <li>
                <h3><a href="#">CGV 극장별</a></h3>
              </li>
              <li>
                <h3><a href="#">제휴할인</a></h3>
              </li>
              <li>
                <h3><a href="#">당첨자 발표</a></h3>
              </li>
              <li>
                <h3><a href="#">종료된 이벤트</a></h3>
              </li>
            </ul>
            <ul class="nav_overMenu">
              <li>
                <h2><a href="#" tabindex="-1">혜택</a></h2>
              </li>
              <li>
                <h3><a href="#">CGV 할인정보</a></h3>
              </li>
              <li>
                <h3><a href="#">CLUB 서비스</a></h3>
              </li>
              <li>
                <h3><a href="#">VIP 라운지</a></h3>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>

