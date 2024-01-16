<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<title>전체 사원 조회</title>
</head>
<body>
<div class="container">
	<button onclick="location.href='empInsert'" class="btn btn-outline-primary">신규등록</button>
	<table class="table">
		<thead>
			<tr>
				<th>No.</th>
				<th>employee_id</th>
				<th>last_name</th>
				<th>email</th>
				<th>hire_date</th>
				<th>job_id</th>
				<th>salary</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${ empList }" var="info" varStatus="sts">
				<tr onclick="location.href='empInfo?employeeId=${ info.employeeId }'">
					<td>${ sts.count }</td>
					<td>${ info.employeeId }</td>
					<td>${ info.lastName }</td>
					<td>${ info.email }</td>
					<td><fmt:formatDate value="${ info.hireDate }" pattern="yyyy년 MM월 dd일"></fmt:formatDate></td>
					<td>${ info.jobId }</td>
					<td>${ info.salary }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>