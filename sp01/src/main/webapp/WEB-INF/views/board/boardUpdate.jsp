<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
</head>
<body>
	<div class="container">
		<form>
			<div class="mb-3 row">
		    <label for="bno" class="col-sm-2 col-form-label">글번호</label>
		    <div class="col-sm-10">
		      <input type="number" class="form-control" name="bno" value="${ boardInfo.bno }" id="bno">
		    </div>
		  </div>
		
		<div class="mb-3 row">
		    <label class="col-sm-2 col-form-label" for="title">제목</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" name="title" value="${ boardInfo.title }" id="title">
		    </div>
		  </div>
		
		<div class="mb-3 row">
		    <label class="col-sm-2 col-form-label" for="contents">내용</label>
		    <div class="col-sm-10">
		      <textarea class="form-control" aria-label="With textarea" name="contents" cols="10">${ boardInfo.contents }</textarea>
		    </div>
		  </div>
		
		<div class="mb-3 row">
		    <label class="col-sm-2 col-form-label" for="regdate">작성일</label>
		    <div class="col-sm-10">
		      <input type="date" class="form-control" name="regdate" value='<fmt:formatDate value="${boardInfo.regdate }" pattern="yyyy-MM-dd"/>' id="regdate">
		    </div>
		  </div>

		<div class="mb-3 row">
		    <label class="col-sm-2 col-form-label" for="updatedate">최근수정일</label>
		    <div class="col-sm-10">
		      <input type="date" class="form-control" name="updatedate" value='<fmt:formatDate value="${boardInfo.updatedate }" pattern="yyyy-MM-dd"/>' id="updatedate">
		    </div>
		  </div>
		
		<div class="mb-3 row">
		    <label class="col-sm-2 col-form-label" for="image">이미지</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" name="image" value="${ boardInfo.image }" id="image">
		    </div>
		  </div>
		
				
			<div>
				<button type="button" onclick="location.href='boardList'" class="btn btn-outline-secondary">목록으로</button>
				<button type="button" id="updateBtn" class="btn btn-outline-success">수정</button>
				<button type="button" onclick="location.href='boardDelete?bno=${empInfo.employeeId}'" class="btn btn-outline-danger">삭제</button>
			</div>
		</form>
	</div>
	
</body>
</html>