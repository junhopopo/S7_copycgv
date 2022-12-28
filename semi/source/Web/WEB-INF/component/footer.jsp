<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>footer</title>
    <style>
      @import url("https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap");

      * {
        margin: 0;
      }

      footer {
        font-family: "Noto Sans KR";
        background-color: #f8f8f8;
        padding-left: 10px;
        padding-bottom: 40px;
      }

      #f_container {
        width: 980px;
        margin: 0 auto;
      }
      #f_container nav ul {
        margin: 0 10px;
        padding: 23px 0;
      }

      #f_container nav li {
        list-style: none;
        display: inline-block;
        line-height: 1.462em;
        text-align: center;
      }

      #f_container li > a {
        text-decoration: none;
        color: #666;
        font-weight: 1000;
        font-size: 13px;
        padding-left: 20px;
      }

      #f_container div > nav {
        text-align: center;
      }

      #f_container dt {
        float: left;
        padding-right: 5px;
      }

      #f_container dd {
        float: left;
        display: block;
        padding-right: 5px;
      }

      #information {
        margin: 0 30px;
        padding: 23px 0;
        list-style: none;
        font-size: 13px;
        color: #666;
        padding-left: 120px;
      }

      #f_container address {
        font-style: normal;
      }

      #check {
        color: #666;
      }

      #f_container hr {
        border-top: 1px;
      }

      #personal {
        color: #222;
        text-decoration: underline;
      }

      #f_container form {
        float: right;
      }

      #f_container form > select {
        background-color: transparent;
        width: 200px;
        height: 34px;
        color: #666;
        border: 1px solid #b4b3aa;
        font-family: "Noto Sans KR";
      }

      #f_container button {
        width: 36px;
        height: 34px;
        font-size: 14px;
        color: #fff;
        background-color: #9e9e9e;
        border: 1px solid #b4b3aa;
        font-family: "Noto Sans KR";
      }
    </style>
  </head>

  <body></body>
  <footer>
    <div id="f_container">
      <div>
        <nav>
          <ul>
            <li><a href="#">회사소개</a></li>
            <li><a href="#">IR</a></li>
            <li><a href="#">채용정보</a></li>
            <li><a href="#">광고/제휴/출점문의</a></li>
            <li><a href="#">이용약관</a></li>
            <li><a href="#">편성기준</a></li>
            <li><a id="personal" href="#">개인정보처리방침</a></li>
            <li><a href="#">법적고지</a></li>
            <li><a href="#">이메일주소무단수집거부</a></li>
            <li><a href="#">윤리경영</a></li>
            <li><a href="#">사이버감사실</a></li>
          </ul>
        </nav>
      </div>
      <hr />
      <div id="information">
        <address>
          (04377)서울특별시 용산구 한강대로 23길 55, 아이파크몰 6층(한강로동)
        </address>
        <dl>
          <dt>대표이사 :</dt>
          <dd>허민회</dd>
          <dt>사업자등록번호 :</dt>
          <dd>104-81-45690</dd>
          <dt>통신판매업신고번호 :</dt>
          <dd>2017-서울용산-0662</dd>
          <a href="#" id="check">사업자정보확인</a>
          <br />
          <dt>호스팅사업자 :</dt>
          <dd>CJ올리브네트웍스</dd>
          <dt>개인정보보호 책임자 :</dt>
          <dd>심준범</dd>
          <dt>대표이메일 :</dt>
          <dd>cjcgvmaster@cj.net</dd>
        </dl>
        <br />
        <p>&copy;CJ CGV. All Rights Reserved</p>
        <div class="select">
          <form action="#" method="post">
            <select name="계열사 바로가기" id="계열사 바로가기">
              <optgroup label="CJ그룹">
                <option>CJ주식회사</option>
              </optgroup>
              <optgroup label="식품 & 식품서비스">
                <option value="">CJ제일제당</option>
                <option value="">CJ푸드빌</option>
                <option value="">CJ프레시웨이</option>
              </optgroup>
              <optgroup label="생명공학">
                <option value="">CJ제일제당 BIO사업부문</option>
                <option value="">CJ Feed&Card</option>
              </optgroup>
              <optgroup label="물류 & 신유통">
                <option value="">CJ대한통운</option>
                <option value="">CJ대한통운 건설부문</option>
                <option value="">CJ올리브영</option>
                <option value="">CJ올리브네트웍스</option>
                <option value="">CJ ENM 커머스부문</option>
              </optgroup>
              <optgroup label="엔터테이먼트 & 미디어">
                <option value="">CJ ENM 엔터테인먼트부문</option>
                <option value="">CJ CGV</option>
              </optgroup>
            </select>
            <button type="submit"><b>GO</b></button>
          </form>
        </div>
      </div>
    </div>
  </footer>
</html>