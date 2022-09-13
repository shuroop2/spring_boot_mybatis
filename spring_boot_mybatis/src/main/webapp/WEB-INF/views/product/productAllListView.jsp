<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>전체 상품 조회</title>
		<style>
			#wrap {margin:0 auto; width:100%; text-align: center;}
			table {margin:0 auto; width:800px;}
			table th {background-color: #BBBBBB;}
		</style>
	</head>
	<body>
		<div id="wrap">
			<h3>전체 상품 조회</h3>
			<table border="1">
				<tr><th>상품번호</th><th>상품명</th><th>가격</th><th>제조사</th><th>재고</th><th>제조일</th><th>사진</th></tr>
				<c:forEach var="data" items="${prdList }">
					<tr>
						<td><a href="<c:url value='/product/productDetailView/${data.prdNo }' />">${data.prdNo }</a></td>
						<td>${data.prdName }</td>
						<td>${data.prdPrice }</td>
						<td>${data.prdCompany }</td>
						<td>${data.prdStock }</td>
						<td><fmt:formatDate pattern="yyyy-MM-dd" value="${data.prdDate}" /></td>
						<td><img src="<c:url value='/images/${data.prdNo }.png'/>" width="30" height="20"></td>
					</tr>
				</c:forEach>
			</table> <br><br>
			<a href="<c:url value='/' />">메인 화면으로 이동</a><br><br>
		</div>
	</body>
</html>