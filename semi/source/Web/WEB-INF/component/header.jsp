<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../../Resources/css/reset.css" />
    <title>Document</title>
    <style>
      header {
        width: 980px;
        height: 100px;
        display: flex;
        align-items: center;
        justify-content: space-between;
        margin: 10px auto;
      }
      header > .logo {
        display: flex;
        align-items: flex-end;
      }

      header > nav {
        width: 600px;
        height: 100%;
      }

      .headr {
        display: flex;
        justify-content: end;
        align-items: flex-end;
        height: 100px;
      }

      header ul {
        display: flex;
      }

      header ul > li {
        font-size: 15px;
        display: flex;
        align-items: center;
        margin-left: 10px;
      }
      p {
        padding: 35px 180px 0 0;
      }
    </style>
  </head>
  <body>
    <header>
      <div class="logo">
        <a href="../main_display/main.jsp">
          <img
            src="https://img.cgv.co.kr/R2014/images/common/logo/logoRed.png"
            width="130"
            title="회사로고"
          />
        </a>

        <p>C U L T U R E P L E X</p>
      </div>
      <nav>
        <div class="headr">
          <ul>
            <li>
              <a href="#"
                ><img
                  src="https://img.cgv.co.kr/WingBanner/2022/0303/16462658373950.png"
                  width="130"
              /></a>
            </li>
            <li>
              <a href="#"
                ><img
                  src="https://img.cgv.co.kr/R2014/images/common/ico/loginPassword.png"
                  width="45"
                /><br />로그인</a
              >
            </li>
            <li>
              <a href="#"
                ><img
                  src="https://img.cgv.co.kr/R2014/images/common/ico/loginJoin.png"
                  width="45"
                /><br />회원가입</a
              >
            </li>
            <li>
              <a href="#"
                ><img
                  src="https://img.cgv.co.kr/R2014/images/common/ico/loginMember.png"
                  width="45"
                /><br />MY CGV</a
              >
            </li>
            <li>
              <a href="#"
                ><img
                  src="https://img.cgv.co.kr/R2014/images/common/ico/loginCustomer.png"
                  width="45"
                /><br />고객센터</a
              >
            </li>
          </ul>
        </div>
      </nav>
    </header>
  </body>
</html>
