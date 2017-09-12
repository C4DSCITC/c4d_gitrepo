<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>C4D - Prototype</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700'
	rel='stylesheet' type='text/css'>

<!-- Custom styles for this template -->
<link href="css/agency.min.css" rel="stylesheet">

<!-- CSS -->
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
<link rel="stylesheet" href="css/style.css">
<!-- <link rel="stylesheet" href="css/form-elements.css"> -->

<style>
@import url('http://fonts.googleapis.com/css?family=Open+Sans:200,300');

.modal-header-info {
	color: #fff;
	padding: 9px 15px;
	border-bottom: 1px solid #eee;
	background-color: #5bc0de;
	-webkit-border-top-left-radius: 5px;
	-webkit-border-top-right-radius: 5px;
	-moz-border-radius-topleft: 5px;
	-moz-border-radius-topright: 5px;
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
	text-align: left;
}
</style>

<!--HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries
    WARNING: Respond.js doesn't work if you view the page via file://
    [if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<!-- Favicon and touch icons -->
<!-- <link rel="shortcut icon" href="ico/favicon.png"> -->
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="ico/apple-touch-icon-57-precomposed.png">

<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/popper/popper.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- Plugin JavaScript -->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Contact form JavaScript -->
<script src="js/jqBootstrapValidation.js"></script>
<script src="js/contact_me.js"></script>

<!-- Custom scripts for this template -->
<script src="js/agency.min.js"></script>

<!-- Javascript -->
<script src="js/jquery.backstretch.js"></script>
<script src="js/scripts.js"></script>

<!-- [if lt IE 10]>
        <script src="js/placeholder.js"></script>
    <![endif] -->
<!--리스트 css  -->

<script>
	$(function() {

		getList();
		$(".resumeSort").click(getList);

		/* 로그아웃  */
		$("#logout").click(function() {
			location.href = "logout";
		});
		/* 회원정보 수정  */
		$("#updateForm").click(function() {
			location.href = "update";
		});
		$("#indexForm").click(function() {
			location.href = "main";
		})

		$("#select1").on("change", select1);

	});

	function getList() {

		var sort = $(this).attr("data-listSort");

		if (sort == null) {

			sort = "all";
		}

		$.ajax({

			url : "resumeList",
			method : "get",
			data : "sort=" + sort,
			success : showList
		})

	}

	function showList(resp) {

		var list = "<div class='container'>";
		list += "<div class='panel-heading' style='text-align:left;'>"
		list += "	<img src='ico/plus.png' id='resumeInsertBtn' class='img-responsive resumeInsertBtn' width='50px'/>";
		list += "	<img src='ico/negative.png' class='img-responsive resumeDeleteBtn' width='50px'/>";
		list += "</div>";
		list += "<div class='table-responsive table-sm'>";
		list += "	<div style='width:100%; height:550px; overflow-y:auto'>";
		list += "		<table class='table table-condensed table-hover' style='text-align:left;'>";
		list += "			<tr>";
		list += "				<th>";
		list += "					<input type='checkbox' id='allCheck'>";
		list += "				</th>";
		list += "				<th style='text-align:center;'>sort</th>";
		list += "				<th style='text-align:center;'>Title</th>";
		list += "				<th style='text-align:center;'>Content</th>";
		list += "				<th style='text-align:center;'>수정</th>";
		list += "			</tr>";
		list += "			<tbody>";

		for (var i = 0; i < resp.length; i++) {

			list += "<tr>";
			list += "	<td><input type='checkbox' class='deleteCheck'></td>";
			list += "	<td data-type=sort>" + resp[i].res_ans_sort + "</td>";
			list += "	<td data-type=title>" + resp[i].res_ans_title + "</td>";
			list += "	<td>";
			list += "		<a href='#demo"+i+"' data-toggle='collapse'>"
					+ resp[i].res_ans_content2 + "</a>";
			list += "	</td>";
			list += "	<td>";
			list += "		<button type='button' class='btn btn-info btn-sm resumeUpdateBtn' style='padding: 0.25rem 0.5rem; font-size: 0.875rem; line-height: 1.5; border-radius: 0.2rem;' value="+resp[i].res_ans_num+">수정하기</button>";
			list += "	</td>";
			list += "</tr>";
			list += "<tr>";
			list += "	<td></td>";
			list += "	<td></td>";
			list += "	<td colspan='3'>";
			list += "		<div id='demo"+i+"' class='collapse'>"
					+ resp[i].res_ans_content + "</div>";
			list += "	</td>";
			list += "</tr>";
		}

		list += "</tbody></table></div></div></div>";

		$("#resumeList").html(list);

		$("#resumeInsertBtn").click(function() {
			$("#resumeInsertModal").modal("show");
		})
		$(".resumeUpdateBtn").click(getResume);
		
		$("#allCheck").change(allCheck);
		
		$(".resumeDeleteBtn").click(deleteResume);
	}

	function select1() {

		var value = $("#select1").val();
		var select2 = $("#select2");

		if (value == "none") {
			alert("선택해주세요");
		}

		if (value == "basic") {

			var list = "<option value='자기 소개'>자기 소개</option>";

			list += "<option value='장점과 단점'>장점과 단점</option>";
			list += "<option value='개성과 특기'>개성과 특기</option>";
			list += "<option value='취미 및 스트래스 해소법'>취미 및 스트래스 해소법</option>";
			list += "<option value='10억이 있다면?'>10억이 있다면?</option>";
			list += "<option value='인상 깊게 보거나 읽은 영화나 책'>인상 깊게 보거나 읽은 영화나 책</option>";
			list += "<option value='존경하는 인물'>존경하는 인물</option>";
			list += "<option value='생활 신조, 좌우명'>생활신조, 좌우명</option>";
			list += "<option value='삶에서 가장 중요하게 생각하는 3가지'>삶에서 가장 중요하게 생각하는 3가지</option>";
			list += "<option value='전공을 선택한 이유'>전공을 선택한 이유</option>";
			list += "<option value='최근 관심사'>최근 관심사</option>";
			list += "<option value='우리사회의 가장 큰 문제점과 해결책'>우리사회의 가장 큰 문제점과 해결책</option>";
			list += "<option value='남들에게 평가받는 나 자신'>남들에게 평가 받는 나 자신</option>";
			list += "<option value='기억에 남는 광고'>기억에 남는 광고</option>";
			list += "<option value='물건을 구입할 때의 기준'>물건을 구입할 때의 기준</option>";
			list += "<option value='어떤 스포츠를 좋아하는가'>어떤 스포츠를 좋아하는가</option>";
			list += "<option value='대인관계에서 가장 중요한것'>대인관계에서 가장 중요한것</option>";
			list += "<option value='많은 지원자 중 자신이 합격해야 하는 이유'>많은 지원자 중 자신이 합격해야 하는 이유</option>";
			list += "<option value='자신이 떨어진다면 그 이유'>자신이 떨어진다면 그 이유</option>";
			list += "<option value='자신만의 경쟁력'>자신만의 경쟁력</option>";

			select2.html(list);
		}

		if (value == "experience") {

			var list = "<option value='이분야에 관심을 가지게 된 계기'>이 분야에 관심을 가지게 된 계기</option>";

			list += "<option value='인생에서 가장 좌절/실패한 경험'>인생에서 가장 좌절/실패한 경험</option>";
			list += "<option value='리더/조력자로서의 경험'>리더/조력자로서의 경험</option>";
			list += "<option value='인생에서 가장 성공한 경험'>인생에서 가장 성공한 경험</option>";
			list += "<option value='고등학교/대학교 시절에 가장 열심히 했던 일'>고등학교/대학교 시절에 가장 열심히 했던 일</option>";
			list += "<option value='아르바이트 경험'>아르바이트 경험</option>";
			list += "<option value='봉사활동 경험'>봉사활동 경험</option>";
			list += "<option value='같이 일하기 싫은 사람과 일했던 경험'>같이 일하기 싫은 사람과 일했던 경험</option>";
			list += "<option value='노력에 비해서 성과가 나오지 않았을 때'>노력에 비해서 성과가 나오지 않았을 때</option>";
			select2.html(list);

		}

		if (value == "career") {

			var list = "<option value='지원동기 및 포부'>지원동기 및 포부</option>";

			list += "<option value='앞으로의 커리어와 목표'>앞으로의 커리어와 목표</option>";
			list += "<option value='10년후의 자신의 모습을 상상한다면'>10년후의 자신의 모습을 상상한다면</option>";
			list += "<option value='이상적인 상사'>이상적인 상사</option>";
			list += "<option value='개인과 회사의 목표가 다르다면'>개인과 회사의 목표가 다르다면</option>";
			list += "<option value='상사의 부정을 알게된다면'>상사의 부정을 알게된다면</option>";
			list += "<option value='개인적으로 중요한 일과 회사의 일이 겹친다면'>개인적으로 중요한 일과 회사의 일이 겹친다면</option>";
			select2.html(list);
		}

	}
	
	function getResume(){
		
		var num = $(this).val();
		
		$.ajax({
			
			url : "resumeOne"
			, method : "get"
			, data : "res_ans_num="+num
			, success : resumeUpdateForm
		})
	}
	
	function resumeUpdateForm(resp){
		
		var sort = resp.res_ans_sort;
		var title = resp.res_ans_title;
		var content = resp.res_ans_content2;
		var num = resp.res_ans_num;
		
	 	$("#sort").html(sort);
		$("#title").html(title);
		$("#content").html(content);
		$("#num").attr("value", num);
		
		$("#resumeUpdateModal").modal("show");
		
	}
	
	function allCheck(){
		
		if(this.checked){
			
			$(".deleteCheck").prop('checked',true);
			
		} else{
			
			$(".deleteCheck").prop('checked',false);
		}
		
	}
	
	function resumeDeleteBtn() {
		
		
		
		if($(".deleteCheck").checked){
			
			
		}
	}
</script>

</head>

<body id="page-top">

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="#page-top">C4D</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fa fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<c:if test="${not empty loginId}">
						<li class="nav-item"><a class="nav-link js-scroll-trigger"
							href="#index" id="indexForm">Main</a></li>
						<li class="nav-item"><a class="nav-link js-scroll-trigger"
							href="#update" id="updateForm">Update</a></li>
						<li class="nav-item"><a class="nav-link js-scroll-trigger"
							href="#logout" id="logout">Logout</a></li>
						<li class="nav-item"><a class="nav-link js-scroll-trigger"
							href="#resume" id="resumeForm">Resume</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Header -->
	<!-- <header class="masthead">
      <div class="container">
        <div class="intro-text">
          <div class="intro-lead-in">C4D - Prototype</div>
          <div class="intro-heading">Resume</div>
          <a class="btn btn-xl js-scroll-trigger" href="#resume">Tell Me More</a>
        </div>
      </div>
    </header> -->
	
	<!-- 대답 입력 09.10  -->
	<div class="modal fade" id="resumeInsertModal">
		<div class="container col-sm-13">
			<div class="modal-dialog"></div>
				<div class="modal-content">
					<div class="modal-header modal-header-info">
						<h4 class="modal-title">
							<span class="glyphicon glyphicon-pencil"></span> Answer insert
						</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
					</div>
					<div class="modal-body" style="text-align: left;">
						<form role="form" action="resumeInsert" class="form-horizontal">
							<div class="form-group">
								<label class="col-sm-5" for="inputSubject"><span
									class="glyphicon glyphicon-search"></span>Subject</label>
								<div class="col-sm-10">
									<select id="select1" name="res_ans_sort" class="form-control">
										<option value="none" selected="selected">None</option>
										<option value="basic">Basic</option>
										<option value="experience">Experience</option>
										<option value="career">Career</option>
									</select> <select id="select2" name="res_ans_title" class="form-control">
										<option value="none">none</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-5" for="inputBody"><span
									class="glyphicon glyphicon-list-alt"></span>Answer</label>
								<div class="col-sm-13">
									<textarea class="form-control" id="inputBody"
										name="res_ans_content" cols="100px" rows="8px"></textarea>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default pull-left"
									data-dismiss="modal">Cancel</button>
								<button type="submit" class="btn btn-primary ">
									Save <i class="fa fa-arrow-circle-right fa-lg"></i>
								</button>
							</div>
						</form>
					</div>
				</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>

	<!-- 대답 수정 09.10  -->
	<div class="modal fade" id="resumeUpdateModal">
		<div class="container col-sm-13">
			<div class="modal-dialog"></div>
			<div class="modal-content">
				<div class="modal-header modal-header-info">
					<h4 class="modal-title">
						<span class="glyphicon glyphicon-pencil"></span> Answer update
					</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
				</div>
				<div class="modal-body" style="text-align: left;">
					<form role="form" action="resumeUpdate" class="form-horizontal">
						<input type="hidden" id="num" name="res_ans_num">
						<div class="form-group">
							<label class="col-sm-5" for="inputSubject" id="sort"> <span
								class="glyphicon glyphicon-search"></span>Subject : 
							</label>
						</div>
						<div class="form-group">
							<label class="col-sm-5" for="inputBody" id="title"><span
								class="glyphicon glyphicon-list-alt"></span>Title : </label>
							<div class="col-sm-13">
								<textarea class="form-control" for="inputBody"
									name="res_ans_content" id="content" cols="40px" rows="20px"></textarea>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default pull-left"
								data-dismiss="modal">Cancel</button>
							<button type="submit" class="btn btn-primary ">
								Save <i class="fa fa-arrow-circle-right fa-lg"></i>
							</button>
						</div>
					</form>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>

	<!-- 09.02 resume -->
	<section id="resume">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading">자기소개서 대답</h2>
					<h3 class="section-subheading text-muted">자기소개서 작성을 위해 질문에
						대답해보세요.</h3>
				</div>
			</div>
			<div class="row text-center">
				<div class="col-md-3">
					<span class="fa-stack fa-4x"> <img src="ico/library.png"
						class="resumeSort img-responsive" data-listSort="all" /> <!-- <i class="fa fa-shopping-cart fa-stack-1x fa-inverse"></i> -->
					</span>
					<h4 class="service-heading">종합</h4>
					<p class="text-muted">유저의 모든 대답 리스트를 보여줍니다.</p>
				</div>
				<div class="col-md-3">
					<span class="fa-stack fa-4x"> <img src="ico/brainstorm.png"
						class="resumeSort img-responsive" data-listSort="basic" />
					</span>
					<h4 class="service-heading">자신</h4>
					<p class="text-muted">성격및 자신에 관련된 대답리스트를 보여줍니다.</p>
				</div>
				<div class="col-md-3">
					<span class="fa-stack fa-4x"> <img src="ico/book.png"
						class="resumeSort img-responsive" data-listSort="experience" />
					</span>
					<h4 class="service-heading">경험</h4>
					<p class="text-muted">경험에 대한 대답리스트를 보여줍니다.</p>
				</div>
				<div class="col-md-3">
					<span class="fa-stack fa-4x"> <img src="ico/student.png"
						class="resumeSort img-responsive" data-listSort="career" />
					</span>
					<h4 class="service-heading">회사 및 커리어</h4>
					<p class="text-muted">회사및 커리어에 관련된 대답리스트를 보여줍니다.</p>
				</div>
			</div>
		</div>
		<!-- 09.04 list  -->
		<div id="resumeList"></div>

	</section>

	<!-- Footer -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<span class="copyright">Copyright &copy; Your Website 2017</span>
				</div>
				<div class="col-md-4">
					<ul class="list-inline social-buttons">
						<li class="list-inline-item"><a href="#"> <i
								class="fa fa-twitter"></i>
						</a></li>
						<li class="list-inline-item"><a href="#"> <i
								class="fa fa-facebook"></i>
						</a></li>
						<li class="list-inline-item"><a href="#"> <i
								class="fa fa-linkedin"></i>
						</a></li>
					</ul>
				</div>
				<div class="col-md-4">
					<ul class="list-inline quicklinks">
						<li class="list-inline-item"><a href="#">Privacy Policy</a></li>
						<li class="list-inline-item"><a href="#">Terms of Use</a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>
</html>
