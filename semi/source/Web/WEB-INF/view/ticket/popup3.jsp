<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="../combine_source/css/reset.css" rel="stylesheet">
    <style>
        ft_layer_popup.popup_alert {
    width: 550px;
    margin-left: -275px;
}
.ft_layer_popup {
    display: none;
    background-color: #f6f6f4;
    border: 5px solid #333;
    position: fixed;
    top: 10%;
    width: 624px;
    left: 50%;
    margin-left: -312px;
    z-index: 20000;
    text-align: left;
}
.ft_layer_popup .hd {
    border-bottom: 4px solid #333;
    height: 51px !important;
    background-color: #333 !important;
    padding-top: 0 !important;
    padding-left: 0 !important;
    margin-bottom: 0 !important;
}
.ft_layer_popup .hd .title_area h4 {
    float: none !important;
    width: auto !important;
    margin-right: 0 !important;
    background: none !important;
    color: #f2f0e5;
    border: 1px solid #707070;
    height: 35px !important;
    padding-top: 14px;
    padding-left: 20px;
    font-family: Nanum Gothic, 나눔고딕, Apple SD Gothic Neo, AppleGothic, 돋움, dotum, Sans-serif;
    font-size: 22px;
    line-height: 22px;
    letter-spacing: -1px;
    margin: 0;
}
.ft_layer_popup .hd a.layer_close {
    display: block;
    position: absolute;
    top: 17px;
    right: 20px;
    width: 18px;
    height: 18px;
    background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/popup/btn_close_x.png) no-repeat;
    overflow: hidden;
    text-indent: -1000px;
}
.ft_layer_popup.popup_alert .alert_msg {
    color: #666;
    text-align: left;
    line-height: 16px;
    font-family: 'Tahoma','돋움',dotum,Nanum Gothic,sans-serif;
    font-size: 12px;
    font-weight: normal;
}
a:link, a:active {
    text-decoration: none;
}
.ft_layer_popup .bd {
    padding-top: 45px;
}
.ft_layer_popup .bd {
    max-height: 710px;
    overflow-y: hidden;
}
.ft_layer_popup .bd {
    position: relative;
    margin: 0 auto;
    padding: 40px 40px 20px 40px;
    overflow: hidden;
    background-color: #f6f6f4;
}


.ft_layer_popup .ft {
    text-align: center;
    padding: 30px 40px;
    background-color: #f6f6f4;
}
.ft_layer_popup a.btn {
    margin-right: 3px;
    text-decoration: none;
    color: #fff;
    letter-spacing: -1px;
    font-weight: bold;
    background-color: #333;
    border-radius: 4px;
    display: inline-block;
    *display: inline;
    zoom: 1;
    width: 54px;
    height: 29px;
    vertical-align: middle;
}

.ft_layer_popup a.btn.btn_white {
    color: #fff;
}
    </style>
</head>
<body>
    <div class="ft_layer_popup popup_alert ko" style="top: 152px; position: absolute; display: block;">
        <div class="hd">
            <div class="title_area">
                <h4 class="alert_title">관람 할인 안내</h4>
            </div>
            <a href="#" onclick="return false;" class="layer_close">닫기</a>
        </div><!-- //hd -->
        <div class="bd">
            <p class="alert_msg" style="width: 475px;"><div style="margin-bottom: 40px;"><h3>할인 안내</h3><table style="margin: 10px 0; border-top:1px solid #999; width: 100%;">	<colgroup><col width="120" align="left" valign="middle">				<col width="*">			</colgroup>			<tbody>				<tr>					<th style="text-align: left; padding-left: 5px; border-bottom: 1px solid #bbb; border-right: 1px solid #bbb;">장애우대할인</th><td style="text-align: left; border-bottom: 1px solid #bbb; padding-left: 10px;">현장에서 복지카드를 소지한 장애인<br>(장애 1~3등급: 동반 1인까지 적용 / 4~6등급: 본인에 한함 / <br>일반 2D, 3D, 4DX 영화에 한함)				</td></tr>				<tr>					<th style="text-align: left; padding-left: 5px; border-bottom: 1px solid #bbb; border-right: 1px solid #bbb;">심야할인</th>					<td style="text-align: left; border-bottom: 1px solid #bbb; padding-left: 10px;">극장별 심야할인 이벤트는 각 극장에 문의				</td></tr>				<tr>					<th style="text-align: left; padding-left: 5px; border-bottom: 1px solid #bbb; border-right: 1px solid #bbb;">청소년 할인</th>					<td style="text-align: left; border-bottom: 1px solid #bbb; padding-left: 10px;">만 18세&nbsp;미만을&nbsp;증명할수 있는 신분증 제시<br>(만 4세 이상 ~ 만 18세&nbsp;미만의 학생 또는 청소년(어린이)에<br>한함)				</td></tr>			</tbody>		</table></div></p>
        </div><!-- //bd -->
        <div class="ft">
            <a title="확인" href="#" onclick="return false;" class="btn btn_ok"><span>확인</span></a>
            <a title="취소" href="#" onclick="return false;" class="btn btn_white btn_close"><span>취소</span></a>
        </div><!-- //ft -->     
    </div>
</body>
</html>