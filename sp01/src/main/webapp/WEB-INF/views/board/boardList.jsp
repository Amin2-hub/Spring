<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판</title>
</head>
<body>
	<div class="container">
		<h1>자유 게시판</h1>
		<button onclick="location.href='boardInsert'" class="btn btn-outline-primary">새글쓰기</button>
		<table class="table">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>내용</th>
					<th>작성자</th>
					<th>작성일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ boardList }" var="info" varStatus="sts">
					<tr onclick="location.href='boardInfo?bno=${ info.bno }'">
						<td>${ info.bno }</td>
						<td>${ info.title }</td>
						<td>${ info.contents }</td>
						<td>${ info.writer }</td>
						<td><fmt:formatDate value="${ info.regdate }" pattern="yyyy년 MM월 dd일"></fmt:formatDate></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>