<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 보기</title>
</head>
<body>
	<div class="container">
	<h1>게시글 조회</h1>
		<table class="table">
			<tr>
				<th>글번호</th>
				<td>${ boardInfo.bno }</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>${ boardInfo.title }</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>${ boardInfo.writer }</td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea cols="10" style="width : 100%" readonly>${ boardInfo.contents }</textarea></td>
			</tr>
			<tr>
				<th>작성일</th>
				<td><fmt:formatDate value="${ boardInfo.regdate }" pattern="yyyy년 MM월 dd일"></fmt:formatDate></td>
			</tr>
			<tr>
				<th>최근수정일</th>
				<td><fmt:formatDate value="${ boardInfo.updatedate }" pattern="yyyy년 MM월 dd일"></fmt:formatDate></td>
			</tr>
			<tr>
				<th>이미지</th>
				<td><img src="<c:url value="/resources/${boardInfo.image}"/>"></td>
			</tr>
		</table>
		<div>
				<button type="button" onclick="location.href='boardList'" class="btn btn-outline-secondary">목록으로</button>
				<button type="button" onclick="location.href='boardUpdate'" class="btn btn-outline-success">수정</button>
			</div>
	</div>
	
</body>
</html>