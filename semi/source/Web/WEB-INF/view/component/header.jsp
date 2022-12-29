<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            
            <%-- <li>
              <a href="<%=request.getContextPath() %>/login"
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
            </li> --%>
            
            		<c:choose>
						<c:when test="${empty loginSsInfo}">
							<li>
							<a href="${pageContext.request.contextPath }/login"><img
			                  src="https://img.cgv.co.kr/R2014/images/common/ico/loginPassword.png"
			                  width="45"
			                /><br />로그인</a>
							</li>
							<li>
							<a href="${pageContext.request.contextPath }/join"><img
			                  src="https://img.cgv.co.kr/R2014/images/common/ico/loginJoin.png"
			                  width="45"
			                /><br />회원가입</a>
							</li>
						</c:when>
						<c:otherwise>
							<li>
                    		<%-- ${loginSsInfo.mname } --%>
							<a href="${pageContext.request.contextPath }/logout"><img
			                  src="https://img.cgv.co.kr/R2014/images/common/ico/loginPassword.png"
			                  width="45"
			                /><br />로그아웃</a>
							</li>
						</c:otherwise>
					</c:choose>

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

