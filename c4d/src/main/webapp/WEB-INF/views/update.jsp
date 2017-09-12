<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>C4D - Prototype</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

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
<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css"> -->

<!--HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries
   WARNING: Respond.js doesn't work if you view the page via file://
   [if lt IE 9]>
   <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
   <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
   <![endif]-->

<!-- Favicon and touch icons -->
<!-- <link rel="shortcut icon" href="ico/favicon.png"> -->

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
<script>
$(function(){
	
	/* 로그아웃  */
	$("#logout").click(function(){
		location.href="logout";
	});
	/* 회원정보 수정  */
	$("#resumeForm").click(function(){
		location.href="resume";
	});
	$("#indexForm").click(function(){
		location.href="main";
	})
});
</script>
<title>C4D - Prototype</title>
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
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#index" id="indexForm">Main</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#logout" id="logout">Logout</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#update" >Update</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#resume" id="resumeForm">Resume</a></li>
				</ul>
			</div>
		</div>
	</nav>


	<!-- Header -->
	<header class="masthead">
		<div class="container">
			<div class="intro-text">
				<div class="intro-lead-in">C4D - Prototype</div>
				<div class="intro-heading">Resume</div>
				<a class="btn btn-xl js-scroll-trigger" href="#services">Tell Me
					More</a>
			</div>
		</div>
	</header>


	<div class="container">
		<h1>Edit Profile</h1>
		<hr>
		<div class="row">
			<!-- edit form column -->
			<div class="col-md-9 personal-info">
				<div class="alert alert-info alert-dismissable">
					<a class="panel-close close" data-dismiss="alert">×</a> <i
						class="fa fa-coffee"></i> This is an <strong>.alert</strong>. Use
					this to show important messages to the user.
				</div>
				<h3>Personal info</h3>

				<form class="form-horizontal" action="update"
					enctype="multipart/form-data" method="post" role="form">
					<div class="form-group">
						<label class="col-md-3 control-label">Userid: </label>
						<div class="col-md-8">
							<input class="form-control" type="text" value="${user.id }"
								disabled="disabled">
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">Username:</label>
						<div class="col-md-8">
							<input class="form-control" type="text" value="${user.name }"
								disabled="disabled">
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">Email:</label>
						<div class="col-md-8">
							<input class="form-control" type="text" value="${user.email }"
								disabled="disabled">
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label">Birthdate:</label>
						<c:if test="${user.birthdate == null}">
							<div class="col-lg-8">
								<input class="form-control" name="birthdate" type="date"
									>
							</div>
						</c:if>
						
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label">Address:</label>
						<div class="col-lg-8">
							<input class="form-control" name="address" type="text"
								value="${user.address}">
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label">Tel:</label>
						<div class="col-lg-8">
							<input class="form-control" name="tel" type="text"
								value="${user.tel}">
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label">Gender:</label>
						<c:if test="${user.gender == '남'}">
							<div class="col-lg-8">
								<input type="radio" name="gender" value="남" checked="checked" disabled="disabled">남
								<input type="radio" name="gender" value="여" disabled="disabled">여
							</div>
						</c:if>
						<c:if test="${user.gender == '여' }">
							<div class="col-lg-8">
								<input type="radio" name="gender" value="남" disabled="disabled">남 <input
									type="radio" name="gender" value="여" checked="checked" disabled="disabled">여
							</div>
						</c:if>
						<c:if test="${user.gender == null }">
							<div class="col-lg-8">
								<input type="radio" name="gender" value="남">남 <input
									type="radio" name="gender" value="여">여
							</div>
						</c:if>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label">Field:</label>
						<div class="col-lg-8">
							<input class="form-control" name="field" type="text"
								value="${user.field}">
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label">Language:</label>
						<div class="col-lg-8">
							<input class="form-control" name="language" type="text"
								value="${user.language}">
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label">Age:</label>
						<div class="col-lg-8">
							<input class="form-control" name="age" type="text"
								value="${user.age}">
						</div>
					</div>
					<!-- left column -->
					<div class="col-md-3">
						image:
						<div class="text-center">
							<c:if test="${user.image != null}">
								<img src="download2" width="150px" class="avatar img-circle"
									alt="${user.id}">
							</c:if>
							<c:if test="${user.image == null}">
								<img src="//placehold.it/150" class="avatar img-circle"
									alt="avatar">
							</c:if>
							<h6>Upload a different photo...</h6>
							<input type="file" name="upload" class="form-control">
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label"></label>
						<div class="col-md-8">
							<input type="submit" class="btn btn-primary" value="Save Changes">
							<span></span> <input type="reset" class="btn btn-default"
								value="Cancel">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<hr>
</body>
</html>