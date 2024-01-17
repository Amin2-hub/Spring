<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    

<title>사원 정보 조회 및 수정</title>
</head>
<body>
	<div class="container">
		<form>
			<div class="mb-3 row">
		    <label for="inputPassword" class="col-sm-2 col-form-label" for="employeeId">employee_id</label>
		    <div class="col-sm-10">
		      <input type="number" class="form-control" name="employeeId" value="${ empInfo.employeeId }" id="employeeId">
		    </div>
		  </div>
		
		<div class="mb-3 row">
		    <label class="col-sm-2 col-form-label" for="lastName">last_name</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" name="lastName" value="${ empInfo.lastName }" id="lastName">
		    </div>
		  </div>
		
		<div class="mb-3 row">
		    <label class="col-sm-2 col-form-label" for="email">email</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" name="email" value="${ empInfo.email }" id="email">
		    </div>
		  </div>
		
		<div class="mb-3 row">
		    <label class="col-sm-2 col-form-label" for="hireDate">hire_date</label>
		    <div class="col-sm-10">
		      <input type="date" class="form-control" name="hireDate" value='<fmt:formatDate value="${empInfo.hireDate }" pattern="yyyy-MM-dd"/>' id="hireDate">
		    </div>
		  </div>
		
		<div class="mb-3 row">
		    <label class="col-sm-2 col-form-label" for="jobId">job_id</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" name="jobId" value="${ empInfo.jobId }" id="jobId">
		    </div>
		  </div>
		
		<div class="mb-3 row">
		    <label class="col-sm-2 col-form-label" for="salary">salary</label>
		    <div class="col-sm-10">
		      <input type="number" class="form-control" name="salary" value="${ empInfo.salary }" id="salary">
		    </div>
		  </div>
				
			<div>
				<button type="button" onclick="location.href='empList'" class="btn btn-outline-secondary">목록으로</button>
				<button type="button" id="updateBtn" class="btn btn-outline-success">수정</button>
				<button type="button" onclick="location.href='empDelete?eid=${empInfo.employeeId}'" class="btn btn-outline-danger">삭제</button>
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
		// -QueryString : key=value&key=value...
		fetch('empUpdate', {
			method : 'post',
			body : new URLSearchParams(empInfo)  //쿼리스트링은 이부분이랑 같이 사용된다.
		})
		.then(res => res.json())
		.then(result => {
			console.log('QueryString', result);
		})
		.catch(err => console.log(err));
		
		// -JSON : { "key" : "value", "key" : "value", ...} 그냥 나열된 문자열임 객체아님
		fetch('empUpdateAjax', {
			method : 'post',
			headers : {
						'Content-type' : 'application/json'
					},
			body : JSON.stringify(empInfo)
		})
		.then(res => res.json())
		.then(result => {
			console.log('JSON', result);
		})
		.catch(err => console.log(err));
		
		
		
	}
	
	function getEmpInfo(){
		//form input 사이의 공백은 하위요소를 의미
		let inputList = document.querySelectorAll('form input');
		
		let objData = {};
		inputList.forEach(tag => {
			objData[tag.name] = tag.value;
		});
		
		return objData;
	}
	
	
</script>

</body>
</html>