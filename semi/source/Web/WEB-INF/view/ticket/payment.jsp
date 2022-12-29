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
    <link rel="stylesheet" href="../../../Resources/css/reset.css" type="text/css" />
    <link rel="stylesheet" href="../../../Resources/css/webcontent.css" />
    <style>
      #container {
        position: relative;
        margin: 0 auto;
        width: 996px;
        z-index: 1;
      }

      #ticket .navi {
        position: relative;
        width: 996px;
        height: 74px;
      }

      #ticket .navi > span.right a {
        position: relative;
        display: block;
        float: left;
        margin-left: 5px;
        width: 81px;
        height: 30px;
        overflow: hidden;
        background-image: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/top_buttons.png);
        background-repeat: no-repeat;
        background-position: 0 0;
      }

      #ticket .navi > span.right a {
        position: relative;
        display: block;
        float: left;
        margin-left: 5px;
        width: 81px;
        height: 30px;
        overflow: hidden;
        background-image: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/top_buttons.png);
        background-repeat: no-repeat;
        background-position: 0 0;
      }

      .ticket_payment_method {
        float: left;
        width: 744px;
        min-height: 600px;
      }

      .tpm_wrap {
        width: 744px;
        margin-top: 5px;
        background-color: #f2f0e5;
        position: relative;
        margin-bottom: 30px;
      }

      .ts3_titlebar {
        width: 744px;
        display: block;
        position: relative;
        height: 33px;
        line-height: 33px;
        background-color: #333;
        color: #e0e0e0;
        clear: both;
        margin-bottom: 3px;
      }

      .tpm_wrap .tpm_header {
        position: relative;
        height: 43px;
        line-height: 43px;
        color: #333;
        font-size: 15px;
        font-weight: bold;
        letter-spacing: -1px;
        text-indent: 14px;
        box-shadow: inset 0 0 4px rgb(161 160 153 / 10%);
        background-color: #dfded6;
        cursor: pointer;
      }

      .tpm_wrap.tpm_last_pay .tpm_body .payment_select {
        position: relative;
        width: 709px;
        line-height: 41px;
        margin: 0 auto;
        border-bottom: 2px solid #d7d6cf;
      }

      .tps_wrap .tps_body {
        background-color: #fff;
        padding-bottom: 15px;
        padding-top: 19px;
        box-shadow: 0px 2px 3px #ccc;
        width: 216px;
      }

      #discCoupon {
        float: left;
      }

      .ticket_payment_summary {
        float: right;
      }
    </style>
  </head>
  <body>
	<div id="component">
<%@include file="/WEB-INF/view/component/header.jsp"%>
<%@include file="/WEB-INF/view/component/category.jsp"%>
	</div>

    <div style="clear: both"></div>
    <div id="container">
      <div id="ticket">
        <div class="navi">
          <div class="newsletter">
            <p style="display: none">
              <a href="#">Click here</a> if you want to receive newsletter about
              English subtitle movies
            </p>
          </div>
          <span class="right">
            <a class="button button-english" href="#"></a>
            <a class="button button-schedule" href="#"></a>
            <a class="button button-reservation-restart" href="#"></a>
          </span>
        </div>
        <!-- 할인쿠폰 -->
        <div>
          <div class="tpm_wrap" id="discCoupon">
            <h4 class="ts3_titlebar ts3_t1">
              <span class="header">STEP 1. </span>
              <a href="#"><span>다시하기</span> </a>
            </h4>
            <div class="tpm_header">
              <h4>할인쿠폰</h4>
              <a class="tpmh_btn"><span>펼치기</span></a>
            </div>

            <!-- 관람권/기프트콘 -->
            <div class="tpm_wrap" id="payCoupons">
              <h4 class="ts3_titlebar ts3_t1">
                <span class="header">STEP 2. </span>
                <a href="#"><span>다시하기</span> </a>
              </h4>
              <div class="tpm_header">
                <h4>관람권/기프트콘</h4>
              </div>
            </div>
            <!-- 포인트/상품권 -->
            <div class="tpm_wrap" id="payPoints">
              <h4 class="ts3_titlebar ts3_t1">
                <span class="header">STEP 3. </span>
                <a href="#"><span>다시하기</span> </a>
              </h4>
              <div class="tpm_header">
                <h4>포인트 및 기타결제 수단</h4>
              </div>
              <div class="tpm_body" style="display: none">
                <div class="guide_wrap"></div>
              </div>
              <!-- guide_wrap -->
              <div class="tpm_discount">
                <div class="background"></div>
              </div>
            </div>
            <!-- tpm_body -->
          </div>
          <div class="ticket_payment_summary">
            <div class="tps_wrap" style="top: 0px">
              <div class="tps_body">
                <div class="summary_box total_box">
                  <div class="payment_header">결제하실 금액</div>
                  <div class="payment_footer">
                    <div class="result">
                      <span class="num verdana" id="summary_total_amount"
                        >15,000</span
                      ><span class="won">원</span>
                    </div>
                  </div>
                </div>
                <div class="summary_box discount_box" id="tps_discount_box">
                  <div class="payment_header">할인내역</div>
                  <div class="payment_body" id="summary_discount_list"></div>
                  <div class="payment_footer">
                    <div class="label">
                      <span>총 할인금액</span>
                    </div>
                    <div class="result">
                      <span class="num verdana" id="summary_discount_total"
                        >0</span
                      ><span class="won">원</span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="tps_footer no_english">
            <ul>
              <li>
                <a
                  href="#"
                  target="_blank"
                  onmousedown="javascript:logClick('신용카드 프로모션 텍스트배너');"
                  ><img
                    src="http://img.cgv.co.kr/Ria/RiaBanner/16249345262810.png"
                    alt="10포인트부터 티켓 전액 결제가능!"
                  /><span class="desc"
                    >10포인트부터 티켓 전액 결제가능!</span
                  ></a
                >
              </li>
              <li>
                <a
                  href="#"
                  target="_blank"
                  onmousedown="javascript:logClick('신용카드 프로모션 텍스트배너');"
                  ><img
                    src="http://img.cgv.co.kr/Ria/RiaBanner/16249345262650.png"
                    alt="현금처럼 꿀머니 사용 가능!"
                  /><span class="desc">현금처럼 꿀머니 사용가능!</span></a
                >
              </li>
              <li>
                <a
                  href="#"
                  target="_blank"
                  onmousedown="javascript:logClick('신용카드 프로모션 텍스트배너');"
                  ><img
                    src="http://img.cgv.co.kr/Ria/RiaBanner/16249334008850.png"
                    alt="M포인트 사용하고 즉시 할인받자"
                  /><span class="desc">M포인트 사용하고 즉시 할인받자</span></a
                >
              </li>
            </ul>
          </div>
          <div class="ticket_payment_clear"></div>
        </div>
        <!-- 최종결제 -->
        <div id="lastPayMethod">
          <h4 class="ts3_titlebar ts3_t1">
            <span class="header">STEP 4. </span>
            <span class="title">최종결제 수단</span>
          </h4>
          <div class="tpm_wrap tpm_last_pay">
            <div class="tpm_body">
              <div>
                <div class="payment_select radio_group" id="lastPayCon">
                  <span style="opacity: 1">
                    <input
                      type="radio"
                      id="last_pay_radio0"
                      name="last_pay_radio"
                      value="0"
                      checked="checked"
                    />
                    <label for="last_pay_radio0">신용카드 </label>
                  </span>
                  <span style="opacity: 1">
                    <input
                      type="radio"
                      id="last_pay_radio1"
                      name="last_pay_radio"
                      value="1"
                    />
                    <label for="last_pay_radio1">휴대폰 결제</label>
                  </span>
                  <span style="display: none; opacity: 1">
                    <input
                      type="radio"
                      id="last_pay_radio2"
                      name="last_pay_radio"
                      value="2"
                    />
                    <label for="last_pay_radio2">계좌이체</label>
                  </span>
                  <span style="opacity: 1">
                    <input
                      type="radio"
                      id="last_pay_radio3"
                      name="last_pay_radio"
                      value="3"
                    />
                    <label for="last_pay_radio3">간편결제</label>
                  </span>
                  <span style="opacity: 1"
                    ><input
                      type="radio"
                      name="last_pay_radio"
                      value="4"
                      id="SettleBank_btn"
                    /><label for="SettleBank_btn">내통장결제</label></span
                  ><span style="opacity: 1"
                    ><input
                      type="radio"
                      name="last_pay_radio"
                      value="5"
                      id="toss_btn"
                    /><label for="toss_btn">토스</label></span
                  >
                </div>
                <div class="payment_input_exp" id="savePointCon">
                  <span
                    >※ 신용카드 결제 가능 최소 금액은 1,000원 이상입니다.</span
                  >
                  <span>
                    <span class="desc">
                      <a href="#" onclick="return false;" class="btn_savePoint"
                        >삼성U포인트 적립</a
                      >&nbsp;&nbsp;<a
                        href="#"
                        onclick="return false;"
                        class="btn_savePoint"
                        >OK캐쉬백 적립</a
                      >&nbsp;&nbsp;&nbsp;&nbsp; </span
                    ><br />
                    <span class="option">
                      (삼성U포인트, OK캐쉬백 포인트는 포인트 중복 적립 불가)
                    </span>
                  </span>
                </div>
              </div>
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
  </body>
</html>
