<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

   
<title>사원 정보 등록</title>
</head>


<body>
<div class="container">
	<form action="empInsert" method="post">
		<div class="mb-3 row">
		    <label for="inputPassword" class="col-sm-2 col-form-label">employee_id</label>
		    <div class="col-sm-10">
		      <input type="number" class="form-control" name="employeeId" >
		    </div>
		</div>
		
		<div class="mb-3 row">
		    <label class="col-sm-2 col-form-label">last_name</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" name="lastName" >
		    </div>
		  </div>
		
		<div class="mb-3 row">
		    <label class="col-sm-2 col-form-label">email</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" name="email" >
		    </div>
		  </div>
		
		<div class="mb-3 row">
		    <label class="col-sm-2 col-form-label">hire_date</label>
		    <div class="col-sm-10">
		      <input type="date" class="form-control" name="hireDate" >
		    </div>
		  </div>
		
		<div class="mb-3 row">
		    <label class="col-sm-2 col-form-label">job_id</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" name="jobId" >
		    </div>
		  </div>
		
		<div class="mb-3 row">
		    <label class="col-sm-2 col-form-label">salary</label>
		    <div class="col-sm-10">
		      <input type="number" class="form-control" name="salary" >
		    </div>
		  </div>
		  <div>
				<button type="button" onclick="location.href='empList'" class="btn btn-outline-secondary">목록으로</button>
				<button type="submit" class="btn btn-outline-success">등록</button>
			</div>
  	</form>
  </div>


</body>
</html>