<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="shortcut icon"	href="https://img.cgv.co.kr/theater_img/favicon.ico"	type="image/x-icon" />
<title>CGV &lt; 메인 | 영화 그 이상의 감동. CGV</title>
<script	src="<%=request.getContextPath()%>/resources/js/jquery-3.6.1.js"></script>

<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/reset.css?after"	type="text/css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/header.css"	type="text/css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/category.css"	type="text/css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/footer.css"	type="text/css" />
</head>
<body>
	<div id="component">
		<%@include file="/WEB-INF/view/component/header.jsp"%>
		<%@include file="/WEB-INF/view/component/category.jsp"%>
	</div>
	<br><h1>MY Page</h1><br>
	<%-- [[${likesmovielist }]] --%>
	<br>
	<c:forEach items="${likesmovielist }" var="like" varStatus="stt">
		<img src="https://dummyimage.com/170x234/f2f259/1d1e26" />
		<strong class="movieName">${like.movienm }</strong>
	</c:forEach>
	<br><br><br>
	<%@include file="/WEB-INF/view/component/footer.jsp"%>
</body>
</html>