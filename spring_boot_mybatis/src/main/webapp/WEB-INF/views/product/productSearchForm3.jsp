<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>상품 정보 검색</title>
		<script src="<c:url value='/js/jquery-3.6.0.min.js' />"></script>
		<script src="<c:url value='/js/prdSearch3.js' />"></script>
	</head>
	<body>
		<h3>상품 정보 검색</h3>
		<form id="prdSearchFrm">
			<select name="type">
				<option value="">검색 조건 선택</option>
				<option value="prdName">상품명</option>
				<option value="prdCompany">제조회사</option>
			</select>
			<input type="text" name="keyword">
			<input type="submit" value="검색">
		</form>
		<div id="searchResultBox"></div><br><br>
		<a href="/">메인 화면으로 이동</a><br><br>
	</body>
</html>