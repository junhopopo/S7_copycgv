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
    <title>CGV &lt; 로그인 | 영화 그 이상의 감동. CGV</title>
    <script src="../../../Resources/js/includeHTML.js"></script>
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
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
    <script type="text/javascript">
      $(document).ready(function () {
        $(".specialHall_list a").on({
          mouseenter: function (e) {
            var target = e.target;
            var idx = $(target).closest("li").index();

            var arrimgUrl = [
              "https://img.cgv.co.kr//Front/Main/2021/1209/16390080561620.png",
              "https://img.cgv.co.kr//Front/Main/2022/0616/16553622935690.png",
              "https://img.cgv.co.kr//Front/Main/2021/1130/16382612660240.png",
              "https://img.cgv.co.kr//Front/Main/2021/1130/16382612660560.png",
            ];

            $(target)
              .closest("li")
              .addClass("active")
              .siblings("li")
              .removeClass("active");
            $(".specialHall_link").attr("href", target.href); // 링크 주소 넣을 곳
            $(".specialHall_link img").attr("src", arrimgUrl[idx]);
            $(".specialHall_link img").attr(
              "alt",
              $(target).children("strong").text()
            );
          },
        });
      });
    </script>
    <script type="text/javascript">
      $(document).ready(function () {
        var movieChartSwiper = new Swiper("#movieChart_list", {
          slidesPerView: 5, // 레이아웃 뷰 갯수
          spaceBetween: 32, // 뷰 여백
          slidesPerGroup: 5, // 레이아웃 그룹
          loopFillGroupWithBlank: true,
          navigation: {
            nextEl: ".swiper-button-next", // 다음 버튼
            prevEl: ".swiper-button-prev", // 이전 버튼
          },
        });
      });
    </script>
    <script type="text/javascript">
      $(document).ready(function () {
        $("#btnMovie").click(function () {
          $("#movieChart_list").show();
          $("#movieChart_list_Reser").hide();
          $("#btnMovie").css("color", "black");
          $("#btnReserMovie").css("color", "#666666");
        });
        $("#btnReserMovie").click(function () {
          $("#movieChart_list").hide();
          $("#movieChart_list_Reser").show();
          $("#btnReserMovie").css("color", "black");
          $("#btnMovie").css("color", "#666666");
        });
        var movieChartSwiper2 = new Swiper("#movieChart_list_Reser", {
          slidesPerView: 5,
          spaceBetween: 14,
          slidesPerGroup: 5,
          navigation: {
            nextEl: ".swiper-button-next",

            prevEl: ".swiper-button-prev",
          },
        });
        $("#movieChart_list_Reser").hide(); //swiper 랜더링 완료 후 숨기기해야함
      });
    </script>
    <link rel="stylesheet" href="../../../Resources/css/webcontent.css" />
    <link rel="stylesheet" href="../../../Resources/css/reset.css" type="text/css" />
    
  </head>
  
  <body class="">

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

<div class="skipnaiv">
	<a href="#contents" id="skipHeader">메인 컨텐츠 바로가기</a>
</div>    
<div id="cgvwrap">
    
    
    <div class="cgv-ad-wrap" id="cgv_main_ad">
        <div id="TopBarWrapper" class="sect-head-ad">
            <div class="top_extend_ad_wrap">
                <div class="adreduce" id="adReduce">                    
                    <iframe src="//ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@TopBar_EX" width="100%" height="80" title="" frameborder="0" scrolling="no" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" name="TopBanner" id="TopBanner"></iframe>
                </div> 
                <div class="adextend" id="adExtend"></div>
            </div><!-- //.top_extend_ad_wrap -->
        </div>    
    </div>    
	
      <!-- S Header
        Description
        - class 'nav' 에 class 'active' 추가시 서브메뉴노출
        - class 'nav' 에 class 'fixed' 추가시 상단고정되며 스타일 변경됨
     -->
	<div class="header">			
            <!-- 서비스 메뉴 --> 
            
<div class="header_content">
    <div class="contents">
        <h1 onclick=""><a href="/"><img src="https://img.cgv.co.kr/R2014/images/common/logo/logoRed.png" alt="CGV" /></a><span>CULTUREPLEX</span></h1>
        <ul class="memberInfo_wrap">
            <!-- Advertisement -->
            
			<div class="ad-partner">
                <a href="http://www.cgv.co.kr/culture-event/event/detailViewUnited.aspx?seq=31426&menu=006"  >
                    <img src="https://img.cgv.co.kr/WingBanner/2022/0303/16462658373950.png" alt="현대M포인트" />
                </a>					
			</div>
            
            <!-- /Advertisement -->

            
            <li><a href="/user/login/?returnURL=https%3a%2f%2fwww.cgv.co.kr%2fuser%2flogin%2fdefault.aspx%3freturnURL%3dhttps%3a%2f%2fwww.cgv.co.kr%2fdefault.aspx"><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginPassword.png" alt="로그인" /><span>로그인</span></a></li>
            <li><a href="/user/join/"><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginJoin.png" alt="회원가입" /><span>회원가입</span></a></li>
            
            
            <li><a href="/user/mycgv/"><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginMember.png" alt="MY CGV" /><span>MY CGV</span></a></li>
            <li><a href="/support/default.aspx"><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginCustomer.png" alt="고객센터" /><span>고객센터</span></a></li>
        </ul>
    </div>
</div>

<script>
    //TopMenu 영역 LOG
    //빨강 CGV클릭
    $('.header_content > .contents > h1 > a').on({
        click: function (e) {
            gaEventLog('PC_GNB', '홈', '');
        }
    });
    //서비스 메뉴
    $('.header_content > .contents > ul > li > a').on({
        click: function (e) {
            gaEventLog('PC_GNB', '서비스메뉴_'+this.text, '');
        }
    });

</script>
            <!-- 서비스 메뉴 -->
           
			<!-- 서브 메뉴 -->
			
<script type="text/javascript">
    $(document).ready(function () {
        $('.nav_menu > li > h2 > a').on({
            mouseenter: function (e) {
                var target = e.target;
                $(target).parents('.nav_menu').find('.nav_overMenu').slideDown(function () {
                    $('.nav').addClass('active');
                });
            },
            click: function (e) {
                var target = e.target;
                if (!$('.nav').hasClass('active')) {
                    $(this).trigger('mouseenter');
                } else {
                    $('.nav').trigger('mouseleave');
                }
            }
        });

        /********************************************************
        //서브메뉴 구글 GA Analytics 로그 처리 - 2022.01.12 myilsan
        ********************************************************/
        //cgv화이트 메뉴클릭
        $('.nav > .contents > h1 > a').on({
             click: function (e) {
                 gaEventLog('PC_GNB', '홈', '');
            }
        });

        //주메뉴 클릭
        $('.nav_menu > li > h2 > a').on({
            click: function (e) {
                gaEventLog('PC_GNB', '주메뉴_' + this.text, '');
            }
        });

        //주메뉴 하위메뉴 클릭
        $('.nav_overMenu > dd > h3 > a').on({
            click: function (e) {
                var target = e.target;
                var parText = $(target).parents('.nav_overMenu').find('dt')[0].innerText;
                gaEventLog('PC_GNB', parText + '_' + this.text, '');
            }
        });

        //하위메뉴 최상위 클릭
        $(".nav_overMenu > dt > h2 > a").on({
            click: function (e) {
                gaEventLog('PC_GNB',this.text + '_' + this.text, '');
            }
        });

        //------------------end----------------------- [@,.o]>

        $('.nav').on({
            mouseleave: function (e) {
                $(this).find('.nav_overMenu').slideUp(200, function () {
                    $('.nav').removeClass('active');
                });
            }
        });

        $('.totalSearch_wrap input[type=text]').on({
            focusin: function () {
                $('.totalSearch_wrap').addClass("active");
            }
        });

        $('.btn_totalSearchAutocomplete_close').on({
            click: function () {
                $('.totalSearch_wrap').removeClass("active");
            },
            focusout: function (e) {
                //     $('.totalSearch_wrap').removeClass("active");

            }
        });

        $(this).on({
            scroll: function (e) {
                /* S GNB fixed */
                var headerOffsetT = $('.header').offset().top;
                var headerOuterH = $('.header').outerHeight(true);
                var fixedHeaderPosY = headerOffsetT + headerOuterH;
                var scrollT = $(this).scrollTop();
                var scrollL = $(this).scrollLeft();

                if (scrollT >= fixedHeaderPosY) {
                    $('.nav').addClass('fixed');
                    $('.fixedBtn_wrap').addClass('topBtn');
                } else {
                    $('.nav').removeClass('fixed');
                    $('.fixedBtn_wrap').removeClass('topBtn');
                }

                /* S > GNB fixed 좌우 스크롤
                Description
                - GNB가 fixed 되었을때 좌우 스크롤 되게 처리
                */
                if ($('.nav').hasClass('fixed')) {
                    $('.nav').css({ 'left': -1 * scrollL })
                } else {
                    $('.nav').css({ 'left': 0 })
                }
                /* E > GNB fixed 좌우 스크롤 */
                /* S GNB fixed */
            }
        });

        $('.btn_gotoTop').on({
            click: function () {
                $('html, body').stop().animate({
                    scrollTop: '0'
                }, 400);
            }
        });

        //통합검색 상단 검색 버튼
        $('#btn_header_search').on('click', function () {

           
            if ($('#header_ad_keyword').val() != "")
                goSearch($('#header_ad_keyword'));      //광고
            else
                goSearch($('#header_keyword'));

            
            return false;
        });

        //통합검색 검색어 입력창
        $('#header_keyword').keyup(function (e) {
            if (e.keyCode == 13) goSearch($('#header_keyword'));
        });

         //검색 입력창 클릭 시 광고값 reset
        $('#header_keyword').on('click', function () {
            $(this).attr('placeholder', '');
            $('#header_ad_keyword').val('');
        });

    });

    //통합검색
    function goSearch($objKeyword) {

        if ($objKeyword.val() == "") {
            alert("검색어를 입력해 주세요");
            $objKeyword.focus();
            return false;
        }

        //GA 검색로그
        gaEventLog('PC_GNB', '검색', $objKeyword.val());
        location = "/search/?query=" + escape($objKeyword.val());
    }

   

    //상단 키워드 광고 (S)
    function AdSearchExt(txt, SearchText) {
        $('#header_keyword').attr('placeholder', txt);
        $('#header_ad_keyword').val(SearchText);
    }

    function hdIcoSet(left, sh) { }
    //상단 키워드 광고 (E)

    //상단광고닫기
    function hideCgvTopAd() {
        $(".cgv-ad-wrap").hide();
        $('#wrap_main_notice').parent('div').css('top', 280);
    }

    //비즈스프링 클릭로그
    function setClickLog(title) {
        // eval("try{trk_clickTrace('EVT', '" + title + "')}catch(_e){}");
    }

</script>
<div class="nav">
    <div class="contents">
        <h1><a href="/" tabindex="-1"><img src="https://img.cgv.co.kr/R2014/images/common/logo/logoWhite.png" alt="CGV" /></a></h1>
        <ul class="nav_menu">
            <li>
                <h2><a href="/movies/?lt=1&ft=0">영화</a></h2>
                <dl class="nav_overMenu">
                    <dt><h2><a href="/movies/?lt=1&ft=0" tabindex="-1">영화</a></h2></dt>
                    <dd><h3><a href="/movies/?lt=1&ft=0">무비차트</a></h3></dd>
                    <dd><h3><a href="/arthouse/">아트하우스</a></h3></dd>
                    <dd><h3><a href="/culture-event/event/detailViewUnited.aspx?seq=30717">ICECON</a></h3></dd>
                </dl>
            </li>
            <li>
                <h2><a href="/theaters/">극장</a></h2>
                <dl class="nav_overMenu">
                    <dt><h2><a href="/theaters/" tabindex="-1">극장</a></h2></dt>
                    <dd><h3><a href="/theaters/">CGV 극장</a></h3></dd>
                    <dd><h3><a href="/theaters/special/defaultNew.aspx">특별관</a></h3></dd>
                </dl>
            </li>
            <li>
                <h2><a href="/ticket/"><strong>예매</strong></a></h2>
                <dl class="nav_overMenu">
                    <dt><h2><a href="/ticket/" tabindex="-1">예매</a></h2></dt>
                    <dd><h3><a href="/ticket/">빠른예매</a></h3></dd>
                    <dd><h3><a href="/reserve/show-times/">상영스케줄</a></h3></dd>
                    <dd><h3><a href="/ticket/eng/newdefault.aspx">English Ticketing</a></h3></dd>
                    <dd><h3><a href="/reserve/show-times/eng/">English Schedule</a></h3></dd>
                </dl>
            </li>
            <li>
                <h2><a href="/culture-event/popcorn-store/">스토어</a></h2>
                <dl class="nav_overMenu">
                    <dt><h2><a href="/culture-event/popcorn-store/" tabindex="-1">스토어</a></h2></dt>
                    
                            <dd><h3><a href="/culture-event/popcorn-store/store-category.aspx?CategoryIdx=2">영화관람권</a></h3></dd>
                        
                            <dd><h3><a href="/culture-event/popcorn-store/store-category.aspx?CategoryIdx=3">기프트카드</a></h3></dd>
                        
                            <dd><h3><a href="/culture-event/popcorn-store/store-category.aspx?CategoryIdx=4">콤보</a></h3></dd>
                        
                            <dd><h3><a href="/culture-event/popcorn-store/store-category.aspx?CategoryIdx=5">팝콘</a></h3></dd>
                        
                            <dd><h3><a href="/culture-event/popcorn-store/store-category.aspx?CategoryIdx=6">음료</a></h3></dd>
                        
                            <dd><h3><a href="/culture-event/popcorn-store/store-category.aspx?CategoryIdx=7">스낵</a></h3></dd>
                        
                            <dd><h3><a href="/culture-event/popcorn-store/store-category.aspx?CategoryIdx=10">플레이존</a></h3></dd>
                        
                    <dd><h3><a href="https://brand.naver.com/cgv" class="arrowR" target="_blank">씨네샵</a></h3></dd>
                </dl>
            </li>
            <li>
                <h2 onclick="gaEventLog('PC_GNB','주메뉴_이벤트','')"><a href="/culture-event/event/defaultNew.aspx">이벤트</a></h2>
                <dl class="nav_overMenu">
                    <dt><h2><a href="/culture-event/event/defaultNew.aspx?mCode=001" tabindex="-1">이벤트</a></h2></dt>
                    <dd><h3><a href="/culture-event/event/defaultNew.aspx?mCode=001">SPECIAL</a></h3></dd>
                    <dd><h3><a href="/culture-event/event/defaultNew.aspx?mCode=004">영화/예매</a></h3></dd>
                    <dd><h3><a href="/culture-event/event/defaultNew.aspx?mCode=008">멤버십/CLUB</a></h3></dd>
                    <dd><h3><a href="/culture-event/event/defaultNew.aspx?mCode=005">CGV 극장별</a></h3></dd>
                    <dd><h3><a href="/culture-event/event/defaultNew.aspx?mCode=006">제휴할인</a></h3></dd>
                    <dd><h3><a href="/user/mycgv/event/result_list.aspx">당첨자 발표</a></h3></dd>
                    <dd><h3><a href="/culture-event/event/end-list.aspx">종료된 이벤트</a></h3></dd>
                </dl>
            </li>
            <li>
                <h2 onclick="gaEventLog('PC_GNB','주메뉴_해택','')"><a href="/discount/discountlist.aspx">혜택</a></h2>
                <dl class="nav_overMenu">
                    <dt><h2><a href="/discount/discountlist.aspx" tabindex="-1">혜택</a></h2></dt>
                    <dd><h3><a href="/discount/discountlist.aspx">CGV 할인정보</a></h3></dd>
                    <dd><h3><a href="https://www.cgv.co.kr/user/memberShip/ClubService.aspx">CLUB 서비스</a></h3></dd>
                    <dd><h3><a href="/user/vip-lounge/">VIP 라운지</a></h3></dd>
                </dl>
            </li>
        </ul>
        <div class="totalSearch_wrap">
            <label for="totalSearch">
                <input type="text" id="header_keyword" value="" />
                <input type="hidden" id="header_ad_keyword" name="header_ad_keyword" />
            </label>
            <button type="button" class="btn_totalSearch" id="btn_header_search">검색</button>
            <iframe src="//ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/main@Search_txt" width="0" height="0" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" allowfullscreen="allowfullscreen" mozallowfullscreen="mozallowfullscreen" msallowfullscreen="msallowfullscreen" oallowfullscreen="oallowfullscreen" webkitallowfullscreen="webkitallowfullscreen"></iframe>
            <!--<div class="totalSearchAutocomplete_wrap">
                <dl class="totalSearchAutocomplete_list">
                    <dt>영화</dt>
                    <dd><a href="#none"><strong>전지</strong>적 작가시점</a></dd>
                    <dd><a href="#none">내언니 <strong>전지</strong>현과 나</a></dd>
                    <dd><a href="#none">수호<strong>전지</strong> 영웅본색</a></dd>
                </dl>
                <dl class="totalSearchAutocomplete_list">
                    <dt>인물</dt>
                    <dd><a href="#none"><strong>전지</strong>현</a></dd>
                    <dd><a href="#none"><strong>전지</strong>희</a></dd>
                    <dd><a href="#none">이<strong>전지</strong></a></dd>
                </dl>
                <a href="#none" class="btn_totalSearchAutocomplete_close">닫기</a>
            </div>//-->
        </div>
    </div>
</div>
            <!-- 서브 메뉴 -->			
	</div>
	<!-- E Header -->

	<!-- Contaniner -->
	<div id="contaniner"  class=""><!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->
        

		<!-- Contents Area -->
		 <div id="contents" class="">
        
            
            <!-- Contents Start -->
			

<!-- 실컨텐츠 시작 -->
<div class="wrap-login">
    <div class="sect-login">
        <ul class="tab-menu-round">
            <li class="on">
                <a href="/user/login/">로그인</a>
            </li>
            <li>
                <a href="/user/guest/login-agreement.aspx">비회원 예매</a>
            </li>
            <li>
                <a href="/user/guest/login.aspx">비회원 예매확인</a>
            </li>
        </ul>
        <div class="box-login">
            <h3 class="hidden">회원 로그인</h3>
            <form id="form1" method="post" action="#" novalidate="novalidate" onsubmit="return false">
            <fieldset>
                <legend>회원 로그인</legend>
                <p>아이디 비밀번호를 입력하신 후, 로그인 버튼을 클릭해 주세요.</p>
                <div class="login">
                    <input type="text" title="아이디" id="txtUserId" name="txtUserId" data-title="아이디를 " data-message="입력하세요." required="required" />
                    <input type="password" title="패스워드" id="txtPassword" name="txtPassword" data-title="패스워드를 " data-message="입력하세요." required="required" />
                </div>
                <div class="save-id"> <input type="checkbox" id="loginSet"  /><label for="save_id">아이디 저장</label></div>

              
                <button type="submit" id="submit" title="로그인"><span>로그인</span></button>
                <div class="login-option">
                    <a href="/user/login/find-account.aspx">아이디 찾기</a>
                    <a href="/user/login/find-pw.aspx?act=pw">비밀번호 찾기</a>
                </div>
            </fieldset>
            </form>  
			<div>
				<a href="javascript:getNaverLoginURL();" class="btn_loginNaver"><img src="https://img.cgv.co.kr/image_gt/login/btn_loginNaver.jpg" alt="네이버 로그인"></a>
			</div>
        </div>
    </div>    
    <div class="sect-loginguide">
        <div class="box-useguide">
            <strong>CJ ONE 회원이 아니신가요?</strong>
            <span>회원가입하시고 다양한 혜택을 누리세요!</span>
            <strong>
                <a title="새창" target="_blank" href="https://www.cjone.com/cjmweb/join.do?coopco_cd=7010&brnd_cd=1000" class="round red"><span>CJ ONE 회원가입하기</span></a>
            </strong>
            <em>
                
            </em>
            <em>
                <a href="http://www.cjone.com/cjmweb/about-cjone.do" class="round black" target="_blank"><span>CJ ONE 멤버십이란?</span></a>
            </em>
        </div>
    </div>
    <div class="sect-loginad"  style="background:#d2cbbe;">
        <div>
           <iframe src="https://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@Login_bigbanner" width="350" height="300" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="Login_bigbanner" id="Login_bigbanner"></iframe>
        </div>
    </div>
</div>
<!-- 실컨텐츠 끝 --> 

<!-- LogIn -->
<form name="loginform" id="loginform" method="post" action="https://www.cgv.co.kr/user/login/login.aspx" novalidate="novalidate">
	<input type="hidden" name="id" id="id" />
	<input type="hidden" name="password" id="password" />
    <input type="hidden" name="id_save" id="id_save" />
	<input type="hidden" name="returnURL" value="https://www.cgv.co.kr/default.aspx" />
</form>
<!-- //LogIn -->

<script type="text/javascript" src="https://img.cgv.co.kr/R2014//js/system/crypto.js"></script>
<script type="text/javascript">
//<![CDATA[
    (function ($) {
        $(function () {


            var $frm = $('#form1');
            $frm.validate({
                submitHandler: function (form) {
                    var $loginFrm = $('#loginform');


                    $loginFrm.find('#id').val(app.crypto.AESEncryptToBase64($frm.find('#txtUserId').val()));
                    $loginFrm.find('#password').val(app.crypto.AESEncryptToBase64($frm.find('#txtPassword').val()));

                    $loginFrm.submit();
                    return false;
                }
            });



            // 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.
            var userInputId = getCookie("cgv.cookie.UserID_RE=UserID_RE");
            $("input[name='txtUserId']").val(userInputId);

            if (userInputId != '') {
                $("#loginSet").prop('checked', true);
                $("#loginSet").attr('checked', true);
            }

            $("#loginSet").change(function () {
                if ($("#loginSet").is(":checked")) {
                    if ($("input[name='txtUserId']").val() == '') {
                        alert("아이디를 입력하세요.");
                        $("#loginSet").prop('checked', false);
                        $("#loginSet").attr('checked', false);                   
                        return false;
                    }

                    setCookie("cgv.cookie.UserID_RE=UserID_RE", $("#txtUserId").val(), 7);
                }
                else {
                    setCookie("cgv.cookie.UserID_RE=UserID_RE", "", -1);
                    $("input[name='txtUserId']").val('');
                }
            });

            function setCookie(cookieName, value, exdays) {

                var exdate = new Date();
                exdate.setDate(exdate.getDate() + exdays);
                var cookieValue = escape(value) + ((exdays == null) ? "" : "; expires=" + exdate.toGMTString());
                document.cookie = cookieName + "=" + cookieValue;
            }

            function deleteCookie(cookieName) {
                var expireDate = new Date();

                expireDate.setDate(expireDate.getDate() - expireDate.getDate());
                document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
            }

            function getCookie(cookieName) {
                cookieName = cookieName + '=';
                var cookieData = document.cookie;
                var start = cookieData.indexOf(cookieName);
                var cookieValue = '';
                if (start != -1) {
                    start += cookieName.length;
                    var end = cookieData.indexOf(';', start);
                    if (end == -1) end = cookieData.length;
                    cookieValue = cookieData.substring(start, end);
                }
                return unescape(cookieValue);
            }
        });
	})(jQuery);

	//네이버 로그인 연동 설정
	function getNaverLoginURL() {
		var menutype = "login";
		var currentURL = "https://www.cgv.co.kr/default.aspx";
		var auth = "naver";

		var apiURL = "http://www.cgv.co.kr/user/login/authorize.aspx?authtype="
			+ auth + "&redirect_uri=" + currentURL + "&menutype=" + menutype;
	
		location.href = apiURL;
	}
//]]>
</script>

            
            <!--/ Contents End -->
		 </div>
		<!-- /Contents Area -->
	</div>
    <!-- E Contaniner -->
    
    <!-- S Popup -->
    <div class="com_pop_wrap">
        <div class="com_pop_fog"></div>
    </div>
    <div class="pop_wrap">
    <!-- S > [팝업] 지원 OS 업데이트 유도-->
        <div id="pop_supportOS" class="popup" style="display:none">
            <div class="pop_iexp_wrap" style="position:fixed; left:50%; top:50%; width:600px; margin:-165px 0 0 -300px; z-index:1000;">
                <div class="pi_headline">
                    <img src="https://img.cgv.co.kr/images/popup/1606_iexp/pop_iexp_headline2.jpg" alt="CGV 홈페이지는 고객님께서 사용중인 MS Windows XP에서 정상적인 서비스 이용이 어려울 수 있으며, OS업데이트를 권장합니다." />
                </div>
                <div class="down_app">
                    <p><img src="https://img.cgv.co.kr/images/popup/1606_iexp/pop_iexp_downtxt.jpg" alt="OS 업데이트가 어려운 경우 모바일앱을 이용하세요!!!" /></p>
                    <a class="btn" href="https://itunes.apple.com/kr/app/id370441190?mt=8" target="_blank"><img src="https://img.cgv.co.kr/images/popup/1606_iexp/btn_down_ios.jpg" alt="Ios down" /></a>
                    <a class="btn" href="https://play.google.com/store/apps/details?id=com.cgv.android.movieapp" target="_blank"><img src="https://img.cgv.co.kr/images/popup/1606_iexp/btn_down_android.jpg" alt="Android down" /></a>
                </div>
                <a class="btn_close">닫기</a>
            </div>
         </div>
    <!-- S > [팝업] 지원 브라우저 다운로드 유도-->
         <div id="pop_supportBrower" class="popup" style="display:none">
            <div class="pop_iexp_wrap" style="position:fixed; left:50%; top:50%; width:600px; margin:-265px 0 0 -300px; z-index:1000;">
                <div class="pi_headline">
                    <img src="https://img.cgv.co.kr/images/popup/1606_iexp/pop_iexp_headline1.jpg" alt="CGV 홈페이지는 Internet Explorer 9이상에서 최적의 서비스 이용이 가능합니다. IE9 이하 브라우저에서 이용 시 정상적인 서비스 이용이 어려울 수 있으며, 브라우저 업그레이드 하시기를 권장합니다." />
                </div>
                <ul class="down_browser">
                    <li><a href="https://www.microsoft.com/ko-kr/edge" target="_blank"><img src="https://img.cgv.co.kr/images/popup/1606_iexp/btn_down_ie.jpg" alt="Internet Explorer 다운받기" /></a></li>
                    <li><a href="https://www.google.com/chrome/browser/desktop/index.html" target="_blank"><img src="https://img.cgv.co.kr/images/popup/1606_iexp/btn_down_chrome.jpg" alt="Chrome 다운받기" /></a></li>
                </ul>
                <div class="down_app">
                    <p><img src="https://img.cgv.co.kr/images/popup/1606_iexp/pop_iexp_downtxt.jpg" alt="OS 업데이트가 어려운 경우 모바일앱을 이용하세요!" /></p>
                    <a class="btn" href="https://itunes.apple.com/kr/app/id370441190?mt=8" target="_blank"><img src="https://img.cgv.co.kr/images/popup/1606_iexp/btn_down_ios.jpg" alt="Ios down" /></a>
                    <a class="btn" href="https://play.google.com/store/apps/details?id=com.cgv.android.movieapp " target="_blank"><img src="https://img.cgv.co.kr/images/popup/1606_iexp/btn_down_android.jpg" alt="Android down" /></a>
                </div>
                <a class="btn_close">닫기</a>
            </div>
        </div>
	</div>

    <!-- E Popup -->
    
    <!-- S 예매하기 및 TOP Fixed 버튼 -->
    <div class="fixedBtn_wrap">
     
        <a href="/ticket/" class="btn_fixedTicketing">예매하기</a>
        
        <a href="#none" class="btn_gotoTop"><img src="https://img.cgv.co.kr/R2014/images/common/btn/gotoTop.png" alt="최상단으로 이동" /></a>
    </div>

		<div include-html="../../component/footer.jsp">
			<script>
				includeHTML();
			</script>
		</div>
	</body>
</html>