<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<style>
#boardTitle {
	width: 300px;
}

.table-stripped {
	font-size: 35px;
}

#imageDisplay {
	width: 100px;
	height: 100px;
}

.ck-editor__editable {
	height: 400px;
}

.ck-content {
	font-size: 12px;
}
.image{
	height: 300px;
	text-align: center;
}
</style>
</head>
<body>
	<%@ include file="../common/menubar.jsp"%>

	<section class="banner-area organic-breadcrumb">
        <div class="container">
            <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                <div class="col-first">
                    <h1>회원가입</h1>
                    <nav class="d-flex align-items-center">
                        <a href="${contextPath }">Home<span class="lnr lnr-arrow-right"></span></a>
                        <a href="${contextPath }/memberInsert.me">회원가입</a>
                    </nav>
                </div>
            </div>
        </div>
    </section>

	<div class="container">

		<form action="${contextPath }/boardEnroll.bo" method="post" enctype="multipart/form-data">
			<br>
			<br>
			<table class="table table-stripped"
				style="text-align: center; boarder: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="4"
							style="background-color: #eeeeee; text-align: center;">게시글
							작성</th>
					</tr>
				</thead>

				<tbody>
					<tr>
						<th colspan="1" style="font-size: 15px;">제목</th>
						<td colspan="3"><input type="text" class="form-control"
							name="title" placeholder="글 제목" name="bbsTitle" maxlength="50" required></td>
					</tr>
					<tr>
						<th colspan="1" style="font-size: 15px;">내용</th>
						<td colspan="3">
							<textarea id="editor" class="form-control"
									name="content" placeholder="글 내용" name="bbsContent" maxlength="8192"
									style="height: 350px" required></textarea>
						</td>
					</tr>
					<tr>
						<th style="font-size: 15px; padding-left: 0px;">이미지</th>
						<td class="image"><div>대표이미지</div></td>
						<td class="image"><div>이미지 2</div></td>
						<td class="image"><div>이미지 3</div></td>
					</tr>
					<tr>
						<th colspan="1" style="font-size: 15px; padding-left: 0px;">첨부파일</th>
						<td><input type="file" name="uploadFile"></td>
					</tr>
				</tbody>
			</table>
			<div>
				<button type="submit" class="primary-btn pull-right" style="border-radius: 0">작성완료</button>
				<a href="${contextPath }/boardList.bo?currentPage=1" class="primary-btn pull-right" style="border-radius: 0">돌아가기</a>
			</div>
			<br><br><br>
		</form>
	</div>
	
	<br><br><br><br><br>
	<%@ include file="../common/footer.jsp"%>

</body>
</html>