<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>파일 업로드 폼</title>
	</head>
	<body>
		<h3>파일 업로드</h3>
		<form id="fileUploadForm" method="post" action="<c:url value='/fileUpload' />" enctype="multipart/form-data">
			파일 : <input type="file" id="uploadFile" name="uploadFile">
			<input type="submit" value="업로드"><br><br>
		</form>
		
		<h3>여러 개의 파일 업로드</h3>
		<form id="fileUploadFormMulti" method="post" action="<c:url value='/fileUploadMultiple' />" enctype="multipart/form-data">
			파일 : <input type="file" multiple="multiple" id="uploadFileMulti" name="uploadFileMulti">
			<input type="submit" value="업로드"><br><br>
		</form>
		
		<h3>파일명 변경하지 않고 파일 업로드</h3>
		<form id="fileOriginUploadForm" method="post" action="<c:url value='/fileOriginNameUpload' />" enctype="multipart/form-data">
			파일 : <input type="file" id="uploadFile" name="uploadFile">
			<input type="submit" value="업로드"><br><br>
		</form>
		<a href="/">메인 화면으로 이동</a><br><br>
	</body>
</html>