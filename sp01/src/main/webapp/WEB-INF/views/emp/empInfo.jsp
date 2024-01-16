<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<title>사원 정보 조회 및 수정</title>
</head>
<body>
	<div class="container">
		<form>
			<div class="mb-3 row">
		    <label for="inputPassword" class="col-sm-2 col-form-label">employee_id</label>
		    <div class="col-sm-10">
		      <input type="number" class="form-control" name="employeeId" value="${ empInfo.employeeId }">
		    </div>
		  </div>
		
		<div class="mb-3 row">
		    <label class="col-sm-2 col-form-label">last_name</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" name="lastName" value="${ empInfo.lastName }">
		    </div>
		  </div>
		
		<div class="mb-3 row">
		    <label class="col-sm-2 col-form-label">email</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" name="email" value="${ empInfo.email }">
		    </div>
		  </div>
		
		<div class="mb-3 row">
		    <label class="col-sm-2 col-form-label">hire_date</label>
		    <div class="col-sm-10">
		      <input type="date" class="form-control" name="hireDate" value='<fmt:formatDate value="${empInfo.hireDate }" pattern="yyyy-MM-dd"/>'>
		    </div>
		  </div>
		
		<div class="mb-3 row">
		    <label class="col-sm-2 col-form-label">job_id</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" name="jobId" value="${ empInfo.jobId }">
		    </div>
		  </div>
		
		<div class="mb-3 row">
		    <label class="col-sm-2 col-form-label">salary</label>
		    <div class="col-sm-10">
		      <input type="number" class="form-control" name="salary" value="${ empInfo.salary }">
		    </div>
		  </div>
				
			<div>
				<button type="button" onclick="location.href='empList'" class="btn btn-outline-secondary">목록으로</button>
				<button type="button" id="updateBtn" class="btn btn-outline-success">수정</button>
				<button type="button" class="btn btn-outline-danger">삭제</button>
			</div>
		</form>
	</div>

<script>
	document.querySelector('#updateBtn').addEventListener('click', updateEmpInfo);
	
	function updateEmpInfo(event){
		// form 태그 내부의 입력태그를 기반으로 정보를 가져옴
		let empInfo = getEmpInfo();
		console.log(empInfo);
		
		// 해당정보를 기반으로 Ajax
		// -QueryString
		fetch('empUpdate', {
			method : 'post',
			body : new URLSearchParams(empInfo)
		})
		.then(res => res.json())
		.then(result => {
			console.log('QueryString', result);
		})
		.catch(err => console.log(err));
	}
	
	function getEmpInfo(){
		let inputList = document.querySelectorAll('form input');
		
		let objData = {};
		inputList.forEach(tag => {
			objData[tag.name] = tag.value;
		});
		
		return objData;
	}
	
	
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>