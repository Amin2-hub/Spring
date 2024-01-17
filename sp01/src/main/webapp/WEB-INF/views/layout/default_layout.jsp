<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Web Site</title>
<!-- 전체적용 : css, js, 라이브러리 -->
 <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
	<style>
	.form-control-dark {
	  border-color: var(--bs-gray);
	}
	.form-control-dark:focus {
	  border-color: #fff;
	  box-shadow: 0 0 0 .25rem rgba(255, 255, 255, .25);
	}
	
	.text-small {
	  font-size: 85%;
	}
	
	.dropdown-toggle:not(:focus) {
	  outline: 0;
	}
		
	</style>
</head>
<body>
	<header>
		<tiles:insertAttribute name="header"/>

	</header>
	<main>
		<tiles:insertAttribute name="content"/>
	
	</main>
	<footer>
		<tiles:insertAttribute name="footer"/>
	
	</footer>
</body>
</html>