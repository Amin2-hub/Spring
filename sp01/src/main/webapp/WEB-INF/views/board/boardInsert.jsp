<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

   
<title>게시글 등록</title>
</head>


<body>
<div class="container">
	<h1>게시글 등록</h1>
	<form name="insertForm" action="boardInsert" method="post">
		<div class="mb-3 row">
		    <label for="title" class="col-sm-2 col-form-label">제목</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" name="title" >
		    </div>
		</div>
		
		<div class="mb-3 row">
		    <label for="writer" class="col-sm-2 col-form-label">작성자</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" name="writer" >
		    </div>
		  </div>
		
		<div class="mb-3 row">
		    <label for="contents" class="col-sm-2 col-form-label">내용</label>
		    <div class="col-sm-10">
		      <textarea class="form-control" name="contents" aria-label="With textarea" rows="10"></textarea>
		    </div>
		  </div>
		
		<div class="mb-3 row">
		    <label for="image" class="col-sm-2 col-form-label">이미지</label>
		    <div class="col-sm-10">
		      <input type="file" class="form-control" name="image" >
		    </div>
		  </div>
		
		
		  <div>
				<button type="button" onclick="location.href='boardList'" class="btn btn-outline-secondary">목록으로</button>
				<button type="submit" class="btn btn-outline-success">등록</button>
			</div>
  	</form>
  </div>

	<script>
		//자바스크립트
		document.querySelector('form[name="insertForm"]').addEventListener('submit', boardInsertJs);
		
		function boardInsertJs(event){
			//submit 이벤트 일시정지
			event.preventDefault();
			
			let title = document.getElementsByName('title')[0];
			let writer = document.getElementsByName('writer')[0];
			
			if(title.value == ''){
				alert('제목이 입력되지 않았습니다.');
				title.focus();
				return;
			}
			if(writer.value == ''){
				alert('작성자가 입력되지 않았습니다.');
				writer.focus();
				return;
			}
			insertForm.submit();
		}
		document.querySelector('form[name="insertForm"]').removeEventListener('submit', boardInsertJs);
		
		//jquery
		$('form[name="insertForm"]').on('submit', boardInsertJq);
		
		function boardInsertJq(event){
			event.preventDefault();

			let title = $('[name="title"]');
			let writer = $('[name="writer"]');

			if(title.val() == ''){
				alert('제목이 입력되지 않았습니다.');
				title.focus();
				return;
			}
			if(writer.val() == ''){
				alert('작성자가 입력되지 않았습니다.');
				writer.focus();
				return;
			}
			insertForm.submit();
		}

	</script>

</body>
</html>