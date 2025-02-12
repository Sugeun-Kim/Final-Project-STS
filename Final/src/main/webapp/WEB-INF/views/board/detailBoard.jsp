<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../resources/css/BasicFrame.css">
<link rel="stylesheet" href="../../resources/css/myPage.css">
<link rel="stylesheet" href="../../resources/css/global.css">
<link rel="stylesheet" href="../../resources/css/detailBoard.css">
<!-- 유니콘 아이콘 사이트 -->
<link rel="stylesheet"
	href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
<title>HotFix</title>
</head>

<body>
	<%@ include file="/WEB-INF/views/header/header.jsp"%>

	<div class="container">
		<!-- ======================== 작업 섹션 ======================= -->
		<div class="common_section">

			<!-- 메인섹션 -->
			<div class="main">
				<!-- 
                *22-08-22 HIKARI
                *** 테스트시  <div class="main"> 하고 테스트 할 것
            -->
				<!-- ==============작업공간============== -->

				<div class="detailBoard_container">
					<div class="detailSubTitle">
						<span><i class="fas fa-feather-alt"></i></span> <span>200<i
							class="fas fa-bolt"></i></span> <span>${data.Post_writer}</span> <span>${data.Post_cr_date}</span>
					</div>
					<div class="detailContent">
						<h1>${data.Post_title}</h1>
						<p>${data.Post_contents}</p>

					</div>
					<div class="detailTag">
						<span>${data.Tags_Board}</span>

						<div class="detailLike">
							<span class="Likedown"><i class="uil uil-angle-down"></i></span>
							<span class="LikeCnt">0</span> <span class="Likeup"><i
								class="uil uil-angle-up"></i></span>

						</div>
					</div>

					<div class="detailCommentBox">
						<span>9개의 댓글</span>
						<div style="width: 800px; text-align: center">
							<textarea rows="4" cols="80" placeholder="댓글작성" id="reply_text"></textarea>
							<input type="text" id="Comment_writer">
							<button type="button" id="btnReply">댓글쓰기</button>
						</div>
						<div id="listReply"></div>
						<div id="modifyReply"></div>

					</div>
					<div class="detailSubTitle">
						<span><i class="fas fa-feather-alt"></i></span> <span>200<i
							class="fas fa-bolt"></i></span> <span>나나콘</span> <span>약 5시간전</span>
						<div class="commentCon">
							<p>세상에.. 요즘 프론트로 전향하고 싶어서 여기저기 알아보고 있었는데 좋은 글을 만났네요..</p>
							<p>감사합니다^^</p>
						</div>
					</div>

					<div class="detail_btn">
						<button
							onclick="location.href='/update?Post_num=${data.Post_num}'">수정</button>
						<form method="POST" action="/delete">
							<input type="hidden" name="Post_num" value="${data.Post_num}" />
							<input type="submit" value="삭제" />
						</form>
					</div>
				</div>
			</div>

			<!-- ==============작업공간============== -->
		</div>




	</div>



	</div>
	<!-- 푸터 -->
	<div class="common_footer">푸터임다 d</div>

</body>

<script src="../../resources/js/BasicFrame.js"></script>
<!-- <script src="..../../resources/js/mypage_new_real.js"></script> -->

</html>