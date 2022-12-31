<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/reset.css" type="text/css" />
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/header.css"	type="text/css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/category.css"	type="text/css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/footer.css"	type="text/css" />
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/movie_content.css" />
    <script src="<%=request.getContextPath() %>/script/jquery-3.6.1.js"></script>
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.2.0/chart.min.js"></script>
    <script>
      $(function () {
        $(".num_select")
          .find("a")
          .click(function () {
            var kk = $(this).text();
            $(this).siblings(".selected").removeClass("selected");
            $(this).addClass("selected");
            $(".review_box")
              .find("span, p:first-child")
              .text(kk + "번째 페이지");
          });
      });
    </script>
  </head>
  <body>
	<div id="component">
<%@include file="/WEB-INF/view/component/header.jsp"%>
<%@include file="/WEB-INF/view/component/category.jsp"%>
	</div>
    <div style="clear: both"></div>
[[[[[[[${movievo }]]]]]]]]
    <div id="contents" class="">
      <!-- 실컨텐츠 시작 -->
      <div class="wrap-movie-detail" id="select_main">
        <div class="sect-base-movie">
          <h3><strong>블랙 팬서-와칸다 포에버</strong>기본정보</h3>
          <div class="box-image">
            <a href="#" title="포스터 크게 보기 새창" target="_blank">
              <span class="thumb-image">
                <img
                  src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86119/86119_320.jpg"
                  alt="블랙 팬서-와칸다 포에버 포스터 새창"
                  onerror="errorImage(this)"
                />
                <span class="ico-posterdetail">포스터 크게 보기</span>
                <!-- 영상물 등급 노출 변경 2022.08.24 -->
                <i class="cgvIcon etc age12">12</i>
                <!--<span class="ico-grade 12"> 12</span> -->
              </span>
            </a>
          </div>
          <div class="box-contents">
            <div class="title">
              <strong>${movievo.movienm }</strong>
              <em class="round lightblue"><span>현재상영중</span></em>
              <p>Black Panther: Wakanda Forever</p>
            </div>
            <div class="score">
              <strong class="percent">예매율&nbsp;<span>65.5%</span></strong>
              <!-- 2020.05.07 개봉전 프리에그 노출, 개봉후 골든에그지수 노출변경 -->
              <img src="../../images/egg.jpeg" alt="" style="width: 20px" />
            </div>
            <!-- 떨어지는 얘 이전 요소에 class=on을 넣는다 -->
            <div class="spec">
              <dl>
                <dt>감독 :&nbsp;</dt>
                <dd>
                  <a href="#">라이언 쿠글러</a>
                </dd>
                <dd></dd>
                <dt>&nbsp;/ 배우 :&nbsp;</dt>
                <dd class="on">
                  <a href="#">레티티아 라이트</a>
                  ,&nbsp;
                  <a href="#">루피타 뇽오</a>
                  ,&nbsp;
                  <a href="#">다나이 구리라</a>
                  ,&nbsp;
                  <a href="#">안젤라 바셋</a>
                  ,&nbsp;
                  <a href="#">테노치 우에르타 메히아</a>
                  ,&nbsp;
                  <a href="#">윈스턴 듀크</a>
                  ,&nbsp;
                  <a href="#">마틴 프리먼</a>
                  ,&nbsp;
                  <a href="#">도미니크 손</a>
                </dd>
                <dt>장르 :&nbsp;액션</dt>
                <dd></dd>
                <dt>&nbsp;/ 기본 :&nbsp;</dt>
                <dd class="on">12,&nbsp;161분,&nbsp;미국</dd>
                <dt>개봉 :&nbsp;</dt>
                <dd class="on">2022.11.09</dd>
              </dl>
            </div>
            <span class="screentype">
              <a
                href="#"
                class="imax"
                title="IMAX 상세정보 바로가기"
                data-regioncode="07"
                >IMAX</a
              >
              <a
                href="#"
                class="forDX"
                title="4DX 상세정보 바로가기"
                data-regioncode="4D14"
                >4DX</a
              >
            </span>
            <span class="like">
              <!-- 2020.05.07 영화찜하기 -> 프리에그 선택 변경(조회하여 노출) -->
              <a class="link-count" href="#" style="position: relative"
                ><i class="sprite_preegg btn_md default"></i>
                <img src="../../images/egg.jpeg" alt="" />
                프리에그</a
              >

<c:choose>
	<c:when test="${islike == 0}">
            <button class="btn like" data-aaa="wishlike">좋아요</button>
	</c:when>
	<c:otherwise>
			<button class="btn like" data-aaa="dislike">해제</button>
	</c:otherwise>
</c:choose>
            </span>
<script >
// 좋아요
$(".btn.like").on("click", like);
function like(){
	var dataLike = $(this).data("aaa");
	console.log(dataLike);
	
	$.ajax({
	    url: "Likes.ajax",
	    type: "POST",
	    data: {like: dataLike, moviecd: '${movievo.moviecd }' },  
	    success: 
	    function(data){ 
	    	console.log("결과는"+ data); //ajax통신 성공시 넘어오는 데이터 통째 이름 =data
	    	if(data == 1){
		    	alert("'좋아요'가 반영되었습니다!") ;  // data중 put한 것의 이름 like
		    	$(".btn.like").html("좋아요");
		    	$(".btn.like").data("aaa", "dislike");
	    	}else {
	    		alert("'좋아요'가 해제되었습니다!") ;  // data중 put한 것의 이름 like
	    		$(".btn.like").html("해제");
	    		$(".btn.like").data("aaa", "wishlike");
	    	}
//            $("#like_result").html(data.like);  //id값이 like_result인 html을 찾아서 data.like값으로 바꿔준다.
	    },   
	    
	    error: 
	    function (request, status, error){  
	      alert("ajax실패")                  
	    }
	  });
}
</script>
            
            <form id="like_form">
				<table id="list">
					<input type="hidden" name="command" value="like_it">
					<input type="hidden" name="board_num" value="${board.num}">
					<tr><input type="button" value="좋아요!" onclick="return like()" > </tr>
					<tr><div id="like_result">${board.like_it}</div> </tr>
				</table>
			</form>
            
          </div>
        </div>
        <!-- .sect-base -->

        <!-- 프리에그 팝업 -->
        <div
          class="layer-wrap"
          id="movie-pre-select"
          style="top: 100px; display: none"
        >
          <div
            class="popwrap"
            style="width: 516px; margin-top: 0px; margin-left: -268px"
          >
            <h1>프리에그 선택</h1>
            <div class="pop-contents">
              <!-- Contents Addon -->
              <div class="movie-pre-select">
                <div class="header">
                  <p class="main"></p>
                </div>
                <div class="box">
                  <div class="desc">
                    <div class="main">이 영화가 기대되시나요?</div>
                    <div class="sub">
                      <em>'기대돼요!'</em>를 선택하시면
                      <em>'기대되는 영화'에 추가</em>됩니다.
                    </div>
                  </div>
                  <div class="wrap_btn">
                    <a href="#" class="btn good">
                      <span class="sprite_preegg big favor"></span>
                      <span>기대돼요!</span>
                    </a>
                    <a href="#" class="btn bad">
                      <span class="sprite_preegg big hate"></span>
                      <span>글쎄요..</span>
                    </a>
                    <input type="hidden" id="preegg_useyn" value="" />
                  </div>
                </div>
              </div>
              <!-- //Contents Addon -->
              <div class="set-btn fix-width">
                <button type="submit" id="btnSave" class="round inred">
                  <span>확인</span>
                </button>
              </div>
            </div>
            <button type="button" class="btn-close">프리에그 팝업 닫기</button>
          </div>
        </div>
        <!-- //프리에그 팝업 -->
        <script type="text/javascript">
          _TRK_PNC = "86119";
          _TRK_PNC_NM = "블랙 팬서-와칸다 포에버";
          _TRK_PNG = "영화";
          _TRK_PI = "PDV";
          _TRK_CP = "/영화/영화상세/{0}/블랙 팬서-와칸다 포에버";
        </script>

        <div class="cols-content" id="menu">
          <div class="col-detail">
            <!-- 메뉴가 선택되면 a 에 title="선택" 이라고 넣는다 -->
            <ul class="tab-menu">
              <li class="on">
                <a title="현재 선택됨" href="#">주요정보 </a>
              </li>
              <li><a href="#">트레일러</a></li>
              <li><a href="#">스틸컷</a></li>
              <li><a href="#">평점/리뷰</a></li>
              <li class="last"><a href="#">상영시간표</a></li>
            </ul>
            <div class="sect-story-movie">
              <strong
                >&ldquo;와칸다를 지켜라!&rdquo;<br />
                거대한 두 세계의 충돌, 운명을 건 최후의 전투가 시작된다!</strong
              ><br />
              <br />
              국왕이자 &lsquo;블랙 팬서&rsquo;인 &#39;티찰라&#39;의 죽음 이후<br />
              수많은 강대국으로부터 위협을 받게 된 &#39;와칸다&#39;.<br />
              &#39;라몬다&#39;, &#39;슈리&#39; 그리고 &#39;나키아&#39;,
              &#39;오코예, &#39;음바쿠&#39;는<br />
              각자 사명감을 갖고 &#39;와칸다&#39;를 지키기 위해 외로운 싸움을
              이어간다.<br />
              <br />
              한편, 비브라늄의 패권을 둘러싼 미스터리한 음모와 함께<br />
              깊은 해저에서 모습을 드러낸 최강의 적 &#39;네이머&#39;와
              &#39;탈로칸&#39;의 전사들은<br />
              &#39;와칸다&#39;를 향해 무차별 공격을 퍼붓기 시작하는데&hellip;<br />
              &nbsp;
            </div>
            <!-- .sect-story -->
            <!-- 2020.05.07 성별예매분포, 연령별예매분포 UI 변경 -->
            <div
              id="ctl00_PlaceHolderContent_Section_Chart"
              class="sect-graph sect-graph-emotion"
            >
              <ul class="graph">
                <li>
                  <strong>성별 예매 분포</strong>
                  <div id="jqplot_sex" class="chart"></div>
                </li>
                <li>
                  <strong>연령별 예매 분포</strong>
                  <div id="jqplot_age" class="chart"></div>
                </li>
              </ul>
            </div>
            <!-- .sect-graph -->
          </div>
        </div>
      </div>
    </div>
    <div class="trailer_wrap">
      <div id="Content_Section_Trailer" class="sect-trailer">
        <div class="heading">
          <h4>트레일러</h4>
          <span id="Content_TrailerTotalCount" class="count">3건</span
          ><a class="link-more" href="#">더보기</a>
        </div>
        <ul>
          <li>
            <div class="box-image">
              <a href="#" class="movie_player_popup" data-gallery-idx="207699">
                <span class="thumb-image">
                  <img
                    id="first_img"
                    src="https://img.cgv.co.kr/Movie/Thumbnail/Trailer/86119/86119207699_1024.jpg"
                    alt="[블랙 팬서-와칸다 포에버]&#39;영원한 히어로&#39; 영상"
                  />
                  <span class="ico-play1">영상보기</span>
                </span>
              </a>
            </div>
            <div class="box-contents">
              <a href="#" class="movie_player_popup" data-gallery-idx="207699">
                <strong class="title">
                  <span class="ico-trailer hd">HD</span>
                  &#39;영원한 히어로&#39; 영상
                </strong>
              </a>
              <span class="txt-info">2022.10.21</span>
            </div>
          </li>

          <li>
            <div class="box-image">
              <a href="#" class="movie_player_popup" data-gallery-idx="207236">
                <span class="thumb-image">
                  <img
                    src="https://img.cgv.co.kr/Movie/Thumbnail/Trailer/86119/86119207236_1024.jpg"
                    alt="[블랙 팬서-와칸다 포에버]메인 예고편"
                  />
                  <span class="ico-play2">영상보기</span>
                </span>
              </a>
            </div>
            <div class="box-contents">
              <a
                href="#"
                title="새창"
                class="movie_player_popup"
                data-gallery-idx="207236"
              >
                <strong class="title">
                  <span class="ico-trailer hd">HD</span>
                  메인 예고편
                </strong>
              </a>
            </div>
          </li>

          <li>
            <div class="box-image">
              <a
                href="#"
                title="새창"
                class="movie_player_popup"
                data-gallery-idx="205278"
              >
                <span class="thumb-image">
                  <img
                    src="https://img.cgv.co.kr/Movie/Thumbnail/Trailer/86119/86119205278_1024.jpg"
                    alt="[블랙 팬서-와칸다 포에버]티저 예고편"
                  />
                  <span class="ico-play3">영상보기</span>
                </span>
              </a>
            </div>
            <div class="box-contents">
              <a
                href="#"
                title="새창"
                class="movie_player_popup"
                data-gallery-idx="205278"
              >
                <strong class="title">
                  <span class="ico-trailer hd">HD</span>
                  티저 예고편
                </strong>
              </a>
              <span class="txt-info">2022.08.02</span>
            </div>
          </li>
        </ul>
      </div>
      <div id="Content_Section_Still_Cut" class="sect-stillcut">
        <div class="heading">
          <h4>스틸컷</h4>
          <span class="count"
            ><strong id="stillcut_current">1</strong>/22건</span
          ><a class="link-more" href="still-cut.aspx?midx=86119">더보기</a>
        </div>
        <div id="slideShow">
          <ul class="slides">
            <li>
              <img
                src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000086/86119/86119207598_727.jpg"
                alt=""
              />
            </li>
            <li>
              <img
                src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000086/86119/86119207603_727.jpg"
                alt=""
              />
            </li>
            <li>
              <img
                src="https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000086/86119/86119207599_727.jpg"
                alt=""
              />
            </li>
          </ul>
        </div>
        <p class="controller">
          <span class="prev">&lang;</span><span class="next">&rang;</span>
        </p>
      </div>
    </div>
    <div id="a_container">
      <div class="row">
        <hr />
        <div class="fl-box">
          <h1>
            영상미가 빛난<br />
            몰입하여 보게 되는 영화
          </h1>
          <div class="empty-box"></div>
          <div class="egg-box">
            <img src="../../images/egg.jpeg" alt="" />
            <div class="block-egg-box">
              <h2>preegg</h2>
              <h3>99%</h3>
            </div>
          </div>
          <hr />
          <div class="egg-box">
            <img src="../../images/egg.jpeg" alt="" />
            <div class="block-egg-box">
              <h2>preegg</h2>
              <h3>99%</h3>
            </div>
          </div>
        </div>
        <div class="ch-fl-box">
          <div class="ch-box-wrap">
            <div class="ch-box">
              <h1>매력 포인트</h1>
              <canvas id="radar-chart" width="300px" height="300px"> </canvas>
            </div>
          </div>
          <div class="ch-box-wrap">
            <div class="ch-box">
              <h1>감정 포인트</h1>
              <canvas id="radar1-chart" width="300px" height="300px"> </canvas>
            </div>
          </div>
        </div>
        <div class="announce-box-wrap">
          <div class="announce-box">
            <div class="text-box">
              <h1>
                관람일 포함 7일 이내 관람평을 남기시면 CJ ONE 20P가 적립됩니다.
              </h1>
              <h2>727 명의 실관람객이 평가해주셨습니다.</h2>
            </div>
            <div class="empty-box"></div>
            <div class="button-box">
              <button class="red-white">평점작성</button>
              <button class="gray-white">평점작성</button>
            </div>
          </div>
        </div>
        <div class="audience-review-wrap">
          <div class="sort-review">
            <a href="#">최신순</a>
            <hr />
            <a href="#">추천순</a>
          </div>
          <div class="audience-review">
            <ul class="audience-review-ul">
              <ul class="col-1">
                <li>
                  <img
                    src="../../images/profile.jpeg"
                    alt="프로파일"
                    id="profile"
                  />
                  <div class="review_box">
                    <p>라면니</p>
                    <span>
                      초반엔 빌드업 슬슬 하다가, 중반에 똬!!! 하고
                      진공청소기처럼 관객을 단숨에 빨아들인 후, 후반까지 막
                      후두루챱챱 롤러코스터를 태우는 영화. 너무 재밌었습니다!
                    </span>
                    <div class="ddabong_box">
                      <p>2022.11.18</p>
                      <hr />
                      <p>👍 20</p>
                    </div>
                  </div>
                  <img src="../../images/dotdotdot.jpeg" alt="" id="dot" />
                </li>
                <li>
                  <img
                    src="../../images/profile.jpeg"
                    alt="프로파일"
                    id="profile"
                  />
                  <div class="review_box">
                    <p>라면니</p>
                    <span>
                      초반엔 빌드업 슬슬 하다가, 중반에 똬!!! 하고
                      진공청소기처럼 관객을 단숨에 빨아들인 후, 후반까지 막
                      후두루챱챱 롤러코스터를 태우는 영화. 너무 재밌었습니다!
                    </span>
                    <div class="ddabong_box">
                      <p>2022.11.18</p>
                      <hr />
                      <p>👍 20</p>
                    </div>
                  </div>
                  <img src="../../images/dotdotdot.jpeg" alt="" id="dot" />
                </li>
                <li>
                  <img
                    src="../../images/profile.jpeg"
                    alt="프로파일"
                    id="profile"
                  />
                  <div class="review_box">
                    <p>라면니</p>
                    <span>
                      초반엔 빌드업 슬슬 하다가, 중반에 똬!!! 하고
                      진공청소기처럼 관객을 단숨에 빨아들인 후, 후반까지 막
                      후두루챱챱 롤러코스터를 태우는 영화. 너무 재밌었습니다!
                    </span>
                    <div class="ddabong_box">
                      <p>2022.11.18</p>
                      <hr />
                      <p>👍 20</p>
                    </div>
                  </div>
                  <img src="../../images/dotdotdot.jpeg" alt="" id="dot" />
                </li>
              </ul>
              <ul class="col-2">
                <li>
                  <img
                    src="../../images/profile.jpeg"
                    alt="프로파일"
                    id="profile"
                  />
                  <div class="review_box">
                    <p>라면니</p>
                    <span>
                      초반엔 빌드업 슬슬 하다가, 중반에 똬!!! 하고
                      진공청소기처럼 관객을 단숨에 빨아들인 후, 후반까지 막
                      후두루챱챱 롤러코스터를 태우는 영화. 너무 재밌었습니다!
                    </span>
                    <div class="ddabong_box">
                      <p>2022.11.18</p>
                      <hr />
                      <p>👍 20</p>
                    </div>
                  </div>
                  <img src="../../images/dotdotdot.jpeg" alt="" id="dot" />
                </li>
                <li>
                  <img
                    src="../../images/profile.jpeg"
                    alt="프로파일"
                    id="profile"
                  />
                  <div class="review_box">
                    <p>라면니</p>
                    <span>
                      초반엔 빌드업 슬슬 하다가, 중반에 똬!!! 하고
                      진공청소기처럼 관객을 단숨에 빨아들인 후, 후반까지 막
                      후두루챱챱 롤러코스터를 태우는 영화. 너무 재밌었습니다!
                    </span>
                    <div class="ddabong_box">
                      <p>2022.11.18</p>
                      <hr />
                      <p>👍 20</p>
                    </div>
                  </div>
                  <img src="../../images/dotdotdot.jpeg" alt="" id="dot" />
                </li>
                <li>
                  <img
                    src="../../images/profile.jpeg"
                    alt="프로파일"
                    id="profile"
                  />
                  <div class="review_box">
                    <p>라면니</p>
                    <span>
                      초반엔 빌드업 슬슬 하다가, 중반에 똬!!! 하고
                      진공청소기처럼 관객을 단숨에 빨아들인 후, 후반까지 막
                      후두루챱챱 롤러코스터를 태우는 영화. 너무 재밌었습니다!
                    </span>
                    <div class="ddabong_box">
                      <p>2022.11.18</p>
                      <hr />
                      <p>👍 20</p>
                    </div>
                  </div>
                  <img src="../../images/dotdotdot.jpeg" alt="" id="dot" />
                </li>
              </ul>
            </ul>
            <div class="num_select">
              <a href="#1" class="numb selected">1</a>
              <a href="#2" class="numb">2</a>
              <a href="#3" class="numb">3</a>
              <a href="#4" class="numb">4</a>
              <a href="#5" class="numb">5</a>
              <a href="#6" class="numb">6</a>
              <a href="#7" class="numb">7</a>
              <a href="#8" class="numb">8</a>
              <a href="#9" class="numb">9</a>
              <a href="#10" class="numb">10</a>
              <a href="#next" id="next">
                <button>다음 10개 ></button>
              </a>
              <a href="#next2" id="next2">
                <button>>></button>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
<%@include file="/WEB-INF/view/component/footer.jsp"%>
      <script>
        includeHTML();
      </script>
    </div>
    <script>
      const slides = document.querySelector(".slides");
      const slideImg = document.querySelectorAll(".slides li");
      let currentIdx = 0;
      const slideCount = slideImg.length;
      const prev = document.querySelector(".prev");
      const next = document.querySelector(".next");
      const slideWidth = 316;
      const slideMargin = 450;

      //전체 슬라이드 컨테이너 넓이 설정
      slides.style.width = (slideWidth + slideMargin) * slideCount + "px";

      function moveSlide(num) {
        slides.style.left = -num * 316 + "px";
        currentIdx = num;
      }

      prev.addEventListener("click", function () {
        if (currentIdx !== 0) moveSlide(currentIdx - 1);
      });

      next.addEventListener("click", function () {
        if (currentIdx !== slideCount - 1) {
          moveSlide(currentIdx + 1);
        }
      });
    </script>
    <script>
      new Chart(document.getElementById("radar-chart"), {
        type: "radar",
        data: {
          labels: ["감독연출", "스토리", "영상미", "배우연기", "OST"],
          datasets: [
            {
              label: "매력포인트",
              fill: true,
              backgroundColor: "rgba(255,244,238,0.5)",
              borderColor: "rgba(251,140,67,1)",
              pointBorderColor: "#ff85b3",
              pointBackgroundColor: "rgba(255,133,179,1)",
              data: [57, 80, 60, 97, 65],
            },
          ],
        },
        options: {
          plugins: {
            legend: {
              display: false,
            },
          },
          scales: {
            r: {
              pointLabels: {
                color: "black",
                font: {
                  size: "17px",
                },
              },
              ticks: {
                beginAtZero: true,
                min: 30,
                max: 120,
                stepSize: 30,
                showLabelBackdrop: false,
              },
            },
          },
        },
      });
      new Chart(document.getElementById("radar1-chart"), {
        type: "radar",
        data: {
          labels: ["설렘", "유쾌함", "공감", "몰입감", "감동"],
          datasets: [
            {
              label: "매력포인트",
              fill: true,
              backgroundColor: "rgba(255,238,239,0.7)",
              borderColor: "rgba(251,67,87,1)",
              pointBorderColor: "#ff85b3",
              pointBackgroundColor: "rgba(255,133,179,1)",
              data: [57, 80, 60, 97, 65],
            },
          ],
        },
        options: {
          plugins: {
            legend: {
              display: false,
            },
          },
          scales: {
            r: {
              pointLabels: {
                color: "black",
                font: {
                  size: "17px",
                },
              },
              ticks: {
                beginAtZero: true,
                min: 30,
                max: 120,
                stepSize: 30,
                showLabelBackdrop: false,
              },
            },
          },
        },
      });
    </script>
  </body>
</html>
