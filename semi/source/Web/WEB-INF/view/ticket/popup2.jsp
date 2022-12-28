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
        .ft_layer_popup.popup_alert {
    width: 550px;
    margin-left: -275px;
}
.ft_layer_popup .hd {
    border-bottom: 4px solid #333;
    height: 51px !important;
    background-color: #333 !important;
    padding-top: 0 !important;
    padding-left: 0 !important;
    margin-bottom: 0 !important;
    
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
.ft_layer_popup.popup_alert .alert_msg {
    color: #666;
    text-align: left;
    line-height: 16px;
    font-family: 'Tahoma','돋움',dotum,Nanum Gothic,sans-serif;
    font-size: 12px;
    font-weight: normal;
}
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
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
    zoom: 1;
    width: 54px;
    height: 29px;
    vertical-align: middle;
}
    </style>
</head>
<body>
    <div class="ft_layer_popup popup_alert ko" style="top: 238px; position: absolute; display: block; ">
        <div class="hd">
            <div class="title_area">
                <h4 class="alert_title">우대관람안내</h4>
                <span class="sreader">빠른예매는 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</span>
            </div>
            <a href="#" onclick="return false;" class="layer_close">닫기</a>
        </div><!-- //hd -->
        <div class="bd">
            <p class="alert_msg" style="width: 475px;">우대 발권은 장애인 고객에게 적용되며, 상영관 입장 시<br>본인확인(복지카드) 후 기준에 따라 입장이 제한될 수 있습니다.<br><br>* 장애 중증: 동반 1인포함 할인 / 장애 경증: 본인에 한하여 할인 적용<br>* 국가유공자 우대 요금은 현장에서 국가유공자증 확인 후 발권이 가능합니다.<br></p>
        </div><!-- //bd -->
        <div class="ft">
            <a title="확인" href="#" onclick="return false;" class="btn btn_ok"><span>확인</span></a>
            <a title="취소" href="#" onclick="return false;" class="btn btn_white btn_close" style="display: none;"><span>취소</span></a>
        </div><!-- //ft -->     
    </div>
    
    
</body>
</html>