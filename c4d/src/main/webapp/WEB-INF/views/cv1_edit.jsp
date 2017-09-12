<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="sesoc.global.c4d.vo.User" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="IAMX, One Page Responsive HTML Resume Template">
 	<meta name="keywords" content="onepage, resume, CV HTML template, personal Vcard, html resume, free resume template, free HTML template, free bootstrap template, personal portfolio, free html portfolio">
	<meta name="author" content="http://trendytheme.net/">

	<title>CV</title>

	<!-- Web Fonts -->
 	 <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,500,700' rel='stylesheet' type='text/css'>
	<!-- Bootstrap core CSS -->
	<link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
	<!-- Font Awesome CSS -->
	<link href="assets/css/font-awesome.min.css" rel="stylesheet" media="screen">
	<!-- Animate css -->
 	<link href="assets/css/animate.css" rel="stylesheet">
 	<!-- Magnific css -->
	<link href="assets/css/magnific-popup.css" rel="stylesheet">
	<!-- Custom styles CSS -->
	<link href="assets/css/style.css" rel="stylesheet" media="screen">
 	<!-- Responsive CSS -->
 	<link href="assets/css/responsive.css" rel="stylesheet">
 	<!-- 20170908 skillModal CSS -->
 	<link href="assets/css/skillModal.css">
 	 <link rel="shortcut icon" href="assets/images/ico/favicon.png">
	 <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/images/ico/apple-touch-icon-144-precomposed.png">
	 <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/images/ico/apple-touch-icon-114-precomposed.png">
	 <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/images/ico/apple-touch-icon-72-precomposed.png">
	 <link rel="apple-touch-icon-precomposed" href="assets/images/ico/apple-touch-icon-57-precomposed.png">
	 <!-- 20170911 roundSlider CSS -->
	 <link href="https://cdn.jsdelivr.net/npm/round-slider@1.3/dist/roundslider.min.css" rel="stylesheet" />
<style>
.skillPlus:hover{
	cursor: pointer;
}
.moreSkillPlus:hover{
	cursor: pointer;
}
.skillappend {
	margin: 0 auto;
	width: 200%;
}
.rslider {
  display: inline-block;
  margin-top: 20px;
  margin-left: 20px;
}
#slider_resp.rs-range-color  {
    background-color: #68c3a3;
}
#slider_resp.rs-path-color  {
    background-color: #ffffff;
}
#slider_resp.rs-handle  {
    background-color: #f8ce01;
}
#slider_resp.rs-border  {
    background-color: #1a1e23;
}
</style>
</head>
<body>
<<<<<<< HEAD

<!-- 20170904 jenna kim div to get all html of body -->
<div id="body_html"> 
<!-- Preloader -->
	<div id="tt-preloader">
		<div id="pre-status">
			<div class="preload-placeholder"></div>
		</div>
	</div>

	<!-- Home Section -->
	<section id="home" class="tt-fullHeight" data-stellar-vertical-offset="50" data-stellar-background-ratio="0.2">
		<div class="intro">
			<div class="intro-sub" contenteditable="true">${user.name}</div>
			<span class="editText" id="title" contenteditable="true">
			<h1 >Creative <span>PROGRAMMER</span></h1>
			</span>
			<span class="editText" id="content" contenteditable="true">
			<p>I am a fully professional freelance creative User Interface Designer &amp; Developer<br> Involving with latest web designing and technologies is a great <br> feel free to contact creative.</p>
			</span>
		</div>

		<div class="mouse-icon">
			<div class="wheel"></div>
		</div>
	</section><!-- End Home Section -->

	<!-- Navigation -->
	<header class="header">
		<nav class="navbar navbar-custom" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#custom-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
<%-- 					<c:if test="${id == cv.id }"> --%>
					<a class="navbar-brand" id="webCv_save">Save my CV</a>
<%-- 					</c:if> --%>
				</div>
		</nav>
	</header><!-- End Navigation -->


    <!-- About Section -->
    <section id="about" class="about-section section-padding">
      <div class="container">
        <h2 class="section-title wow fadeInUp" contenteditable="true">About Me</h2>

        <div class="row">

          <div class="col-md-4 col-md-push-8">
            <div class="biography">
              <div class="myphoto">
              <!-- ☆이미지 DB등록 후 변경 예정 -->
                <img src="assets/images/pf2.jpg" alt="">
              </div>
              <ul>
                <li><strong>Name:</strong> ${user.name}</li>
                <li><strong>Date of birth:</strong> ${user.birthdate}</li>
                <li><strong>Address:</strong> ${user.address}</li>
                <li><strong>Phone:</strong> ${user.tel}</li>
                <li><strong>Email:</strong> ${user.email}</li>
              </ul>
            </div>
          </div> <!-- col-md-4 -->

          <div class="col-md-8 col-md-pull-4">
            <div class="short-info wow fadeInUp">
            <span class="editText" id="object">
              <h3 contenteditable="true">Objective</h3>
            </span>
            <span class="editText" id="o_content" contenteditable="true"> 
              <p>An opportunity to work and upgrade oneself, as well as being involved in an organization that believes in gaining a competitive edge and giving back to the community. I'm presently expanding my solid experience in UI / UX design. I focus on using my interpersonal skills to build good user experience and create a strong interest in my employers. I hope to develop skills in motion design and my knowledge of the Web, and become an honest asset to the business. As an individual, I'm self-confident you’ll find me creative, funny and naturally passionate. I’m a forward thinker, which others may find inspiring when working as a team.</p>
            </span>
            </div>

            <div class="short-info wow fadeInUp">
              <span class="editText" id="whatido">
              <h3 contenteditable="true">What I Do ?</h3>
              </span>
              <span class="editText" id="w_content" contenteditable="true">
              <p>I have been working as a web interface designer since. I have a love of clean, elegant styling, and I have lots of experience in the production of CSS3 and HTML5 for modern websites. I loving creating awesome as per my clients’ need. I think user experience when I try to craft something for my clients. Making a design awesome.</p>
			  </span>
            </div>
            <div class="download-button">
              <a class="btn btn-primary btn-lg" href="cv_download?id=${id}"><i class="fa fa-download"></i>download my cv</a>
            </div>
          </div>
        </div> <!-- /.row -->
      </div> <!-- /.container -->
    </section><!-- End About Section -->

    <!-- Resume Section -->
    <section id="resume" class="resume-section section-padding">
        <div class="container">
            <h2 class="section-title wow fadeInUp" contenteditable="true">이력</h2>
            <div class="row">
                <div class="col-md-12">
                    <div class="resume-title">
                        <h3>학력</h3>
                    </div>
                    <div class="resume">
                        <ul class="timeline edulist">
                           <c:forEach var = "edu" items="${elist}" varStatus="stat">
                           <c:choose>
	                           <c:when test="${stat.count%2==0}">
	                           		<li class="timeline-inverted">
                                	<div class="posted-date">
                                    <span class="month" >${edu.edu_startdate}<span>-</span>${edu.edu_enddate}</span>
                             	   </div><!-- /posted-date -->

                                <div class="timeline-panel wow fadeInUp">
                                    <div class="timeline-content">
                                        <div class="timeline-heading">
                                            <h3>${edu.edu_school}</h3>
                                            <span>${edu.edu_major}</span>
                                        </div><!-- /timeline-heading -->

                                        <div class="timeline-body" contenteditable="true">
                                            <p>클릭하여 어필하고 싶은 부분을 입력해주세요.</p>
                                        </div><!-- /timeline-body -->
                                    </div> <!-- /timeline-content -->
                                </div> <!-- /timeline-panel -->
                            </li>
	                           </c:when>
	                           <c:otherwise>
	                           	 <li>
                                <div class="posted-date">
                                    <span class="month">${edu.edu_startdate}<span>-</span>${edu.edu_enddate}</span>
                                </div><!-- /posted-date -->

                                <div class="timeline-panel wow fadeInUp">
                                    <div class="timeline-content">
                                        <div class="timeline-heading">
                                            <h3>${edu.edu_school}</h3>
                                            <span>${edu.edu_major}</span>
                                        </div><!-- /timeline-heading -->

                                        <div class="timeline-body" contenteditable="true">
                                            <p>클릭하여 어필하고 싶은 부분을 입력해주세요.</p>
                                        </div><!-- /timeline-body -->
                                    </div> <!-- /timeline-content -->
                                </div><!-- /timeline-panel -->
                            </li>
	                           </c:otherwise>
                           </c:choose>
                           </c:forEach>
                        </ul>
                    </div>
                </div>
            </div><!-- /row -->

            <div class="row">
                <div class="col-md-12">
                    <div class="resume-title">
                        <h3 contenteditable="true">경력</h3>
                    </div>
                    <div class="resume">
                        <ul class="timeline">
	                          <c:forEach var = "career" items="${clist}" varStatus="stat">
                           <c:choose>
	                           <c:when test="${stat.count%2==0}">
	                           		<li class="timeline-inverted">
                                	<div class="posted-date">
                                    <span class="month" >${career.career_startdate}<span>-</span>${career.career_enddate}</span>
                             	   </div><!-- /posted-date -->

                                <div class="timeline-panel wow fadeInUp">
                                    <div class="timeline-content">
                                        <div class="timeline-heading">
                                            <h3>${career.career_org}</h3>
                                            <span>${career.career_dept}<span>직급: ${career.career_title}</span>
                                        </div><!-- /timeline-heading -->

                                        <div class="timeline-body" contenteditable="true">
                                            <p>클릭하여 어필하고 싶은 부분을 입력해주세요.</p>
                                        </div><!-- /timeline-body -->
                                    </div> <!-- /timeline-content -->
                                </div> <!-- /timeline-panel -->
                            </li>
	                           </c:when>
	                           <c:otherwise>
	                           	 <li>
                                <div class="posted-date">
                                    <span class="month">${career.career_startdate}<span>-</span>${career.career_enddate}</span>
                                </div><!-- /posted-date -->

                                <div class="timeline-panel wow fadeInUp">
                                    <div class="timeline-content">
                                        <div class="timeline-heading">
                                            <h3>${career.career_org}</h3>
                                            <span>${career.career_dept}<span>직급: ${career.career_title}</span>
                                        </div><!-- /timeline-heading -->

                                        <div class="timeline-body" contenteditable="true">
                                            <p>클릭하여 어필하고 싶은 부분을 입력해주세요.</p>
                                        </div><!-- /timeline-body -->
                                    </div> <!-- /timeline-content -->
                                </div><!-- /timeline-panel -->
                            </li>
	                           </c:otherwise>
                           </c:choose>
                           </c:forEach>
                        </ul>
                    </div>
                </div>
            </div><!-- /row -->
        </div><!-- /.container -->
    </section><!-- End Resume Section -->


    <!-- Skills Section -->
    <section id="skills" class="skills-section section-padding">
      <div class="container">
      
        <h2 class="section-title wow fadeInUp skillPlus" data-toggle="modal" data-target="#skillModal">Skills</h2>
        	<div class="row">
         		<div class="col-md-6">
         	
					<div class="skillappend"></div><!-- 사용자가 입력한 스킬이 들어갈 부분 -->
			
				</div><!-- /.col-md-6 -->
			</div><!-- /.row -->
        <div class="skill-chart text-center">
          <h3 class="section-title wow fadeInUp">More skills</h3>
        </div>
        <div class="row more-skill text-center">

           <div class="col-xs-12 col-sm-4 col-md-2">
              <div class="chart moreSkillPlus" data-percent="91" data-color="e74c3c" data-toggle="modal" data-target="#moreSkillModal">
                    <span class="percent"></span>
                    <div class="chart-text">
                      <span contenteditable="true" >Responsibility</span>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-4 col-md-2">
              <div class="chart" data-percent="23" data-color="2ecc71">
                    <span class="percent"></span>
                    <div class="chart-text">
                      <span contenteditable="true">Leadership</span>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-4 col-md-2">
              <div class="chart" data-percent="68" data-color="3498db">
                    <span class="percent"></span>
                    <div class="chart-text">
                      <span contenteditable="true">Cooperation</span>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-4 col-md-2">
              <div class="chart" data-percent="68" data-color="3498db">
                    <span class="percent"></span>
                    <div class="chart-text">
                      <span contenteditable="true">Management</span>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-4 col-md-2">
              <div class="chart" data-percent="68" data-color="3498db">
                    <span class="percent"></span>
                    <div class="chart-text">
                      <span contenteditable="true">Communication</span>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-4 col-md-2">
              <div class="chart" data-percent="68" data-color="3498db">
                    <span class="percent"></span>
                    <div class="chart-text">
                      <span contenteditable="true">Motivation</span>
                    </div>
                </div>
            </div>
        </div>

      </div><!-- /.container -->
    </section><!-- End Skills Section -->


    <!-- Works Section -->
    <section id="works" class="works-section section-padding">
      <div class="container">
        <h2 class="section-title wow fadeInUp" contenteditable="true">Works</h2>

        <ul class="list-inline" id="filter">
            <li><a class="active" data-group="all">All</a></li>
            <li><a data-group="design" >Design</a></li>
            <li><a data-group="web" >Web</a></li>
            <li><a data-group="interface">Interface</a></li>
            <li><a data-group="identety">Identity</a></li>
        </ul>

        <div class="row">
          <div id="grid">
            <div class="portfolio-item col-xs-12 col-sm-4 col-md-3" data-groups='["all", "identety", "interface"]'>
              <div class="portfolio-bg">
                <div class="portfolio">
                  <div class="tt-overlay"></div>
                  <div class="links">
                    <a class="image-link" href="assets/images/works/portfolio-1.jpg"><i class="fa fa-search-plus"></i></a>
                    <a href="#"><i class="fa fa-link"></i></a>                          
                  </div><!-- /.links -->
                  <img src="assets/images/works/portfolio-1.jpg" alt="image"> 
                  <div class="portfolio-info">
                    <h3>Portfolio Title</h3>
                  </div><!-- /.portfolio-info -->
                </div><!-- /.portfolio -->
              </div><!-- /.portfolio-bg -->
            </div><!-- /.portfolio-item -->


            <div class="portfolio-item col-xs-12 col-sm-4 col-md-3" data-groups='["all", "identety", "web"]'>
              <div class="portfolio-bg">
                <div class="portfolio">
                  <div class="tt-overlay"></div>
                  <div class="links">
                    <a class="image-link" href="assets/images/works/portfolio-2.jpg"><i class="fa fa-search-plus"></i></a>
                    <a href="#"><i class="fa fa-link"></i></a>                          
                  </div><!-- /.links -->
                  <img src="assets/images/works/portfolio-2.jpg" alt="image"> 
                  <div class="portfolio-info">
                    <h3>Portfolio Title</h3>
                  </div><!-- /.portfolio-info -->
                </div><!-- /.portfolio -->
              </div><!-- /.portfolio-bg -->
            </div><!-- /.portfolio-item -->
            <div class="portfolio-item col-xs-12 col-sm-4 col-md-3" data-groups='["all", "interface"]'>
              <div class="portfolio-bg">
                <div class="portfolio">
                  <div class="tt-overlay"></div>
                  <div class="links">
                    <a class="image-link" href="assets/images/works/portfolio-3.jpg"><i class="fa fa-search-plus"></i></a>
                    <a href="#"><i class="fa fa-link"></i></a>                          
                  </div><!-- /.links -->
                  <img src="assets/images/works/portfolio-3.jpg" alt="image"> 
                  <div class="portfolio-info">
                    <h3>Portfolio Title</h3>
                  </div><!-- /.portfolio-info -->
                </div><!-- /.portfolio -->
              </div><!-- /.portfolio-bg -->
            </div><!-- /.portfolio-item -->
            <div class="portfolio-item col-xs-12 col-sm-4 col-md-3" data-groups='["all", "identety", "design"]'>
              <div class="portfolio-bg">
                <div class="portfolio">
                  <div class="tt-overlay"></div>
                  <div class="links">
                    <a class="image-link" href="assets/images/works/portfolio-4.jpg"><i class="fa fa-search-plus"></i></a>
                    <a href="#"><i class="fa fa-link"></i></a>                          
                  </div><!-- /.links -->
                  <img src="assets/images/works/portfolio-4.jpg" alt="image"> 
                  <div class="portfolio-info">
                    <h3>Portfolio Title</h3>
                  </div><!-- /.portfolio-info -->
                </div><!-- /.portfolio -->
              </div><!-- /.portfolio-bg -->
            </div><!-- /.portfolio-item -->
            <div class="portfolio-item col-xs-12 col-sm-4 col-md-3" data-groups='["all", "identety", "design"]'>
              <div class="portfolio-bg">
                <div class="portfolio">
                  <div class="tt-overlay"></div>
                  <div class="links">
                    <a class="image-link" href="assets/images/works/portfolio-5.jpg"><i class="fa fa-search-plus"></i></a>
                    <a href="#"><i class="fa fa-link"></i></a>                          
                  </div><!-- /.links -->
                  <img src="assets/images/works/portfolio-5.jpg" alt="image"> 
                  <div class="portfolio-info">
                    <h3>Portfolio Title</h3>
                  </div><!-- /.portfolio-info -->
                </div><!-- /.portfolio -->
              </div><!-- /.portfolio-bg -->
            </div><!-- /.portfolio-item -->
            <div class="portfolio-item col-xs-12 col-sm-4 col-md-3" data-groups='["all", "identety", "design"]'>
              <div class="portfolio-bg">
                <div class="portfolio">
                  <div class="tt-overlay"></div>
                  <div class="links">
                    <a class="image-link" href="assets/images/works/portfolio-6.jpg"><i class="fa fa-search-plus"></i></a>
                    <a href="#"><i class="fa fa-link"></i></a>                          
                  </div><!-- /.links -->
                  <img src="assets/images/works/portfolio-6.jpg" alt="image"> 
                  <div class="portfolio-info">
                    <h3>Portfolio Title</h3>
                  </div><!-- /.portfolio-info -->
                </div><!-- /.portfolio -->
              </div><!-- /.portfolio-bg -->
            </div><!-- /.portfolio-item -->
            <div class="portfolio-item col-xs-12 col-sm-4 col-md-3" data-groups='["all", "identety", "web"]'>
              <div class="portfolio-bg">
                <div class="portfolio">
                  <div class="tt-overlay"></div>
                  <div class="links">
                    <a class="image-link" href="assets/images/works/portfolio-7.jpg"><i class="fa fa-search-plus"></i></a>
                    <a href="#"><i class="fa fa-link"></i></a>                          
                  </div><!-- /.links -->
                  <img src="assets/images/works/portfolio-7.jpg" alt="image"> 
                  <div class="portfolio-info">
                    <h3>Portfolio Title</h3>
                  </div><!-- /.portfolio-info -->
                </div><!-- /.portfolio -->
              </div><!-- /.portfolio-bg -->
            </div><!-- /.portfolio-item -->
            <div class="portfolio-item col-xs-12 col-sm-4 col-md-3" data-groups='["all", "design"]'>
              <div class="portfolio-bg">
                <div class="portfolio">
                  <div class="tt-overlay"></div>
                  <div class="links">
                    <a class="image-link" href="assets/images/works/portfolio-8.jpg"><i class="fa fa-search-plus"></i></a>
                    <a href="#"><i class="fa fa-link"></i></a>                          
                  </div><!-- /.links -->
                  <img src="assets/images/works/portfolio-8.jpg" alt="image"> 
                  <div class="portfolio-info">
                    <h3>Portfolio Title</h3>
                  </div><!-- /.portfolio-info -->
                </div><!-- /.portfolio -->
              </div><!-- /.portfolio-bg -->
            </div><!-- /.portfolio-item -->
          </div><!-- /#grid -->
        </div><!-- /.row -->
      </div><!-- /.container -->
    </section><!-- End Works Section -->


    <!-- Facts Section -->
    <section id="facts" class="facts-section text-center" data-stellar-vertical-offset="50" data-stellar-background-ratio="0.2">
      <div class="tt-overlay-bg">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
            <center>
              <div class="count-wrap">
                <div class="col-sm-3 col-xs-6">
                  <i class="fa fa-flask"></i>
                  <h3 class="timer">
                  <span class="editText" id="years_Exp">${workyears}</span>
                  </h3>
                  <p contenteditable="true">Years of Experience</p>
                </div>
                <div class="col-sm-3 col-xs-6"> 
                  <i class="fa fa-thumbs-up"></i>
                  <h3 class="timer">
                  <span class="editText" id="number_prj"> 651</span>
                  </h3>                
                  <p contenteditable="true">Projects Done</p>
                </div>
                 <div class="col-sm-3 col-xs-6">
                  <i class="fa fa-trophy"></i>
                  <h3 class="timer">
                  <span class="editText" id="number_won"> 5 </span>
                  </h3> 
                  <p contenteditable="true">Available Language</p>
                </div> 
                <div class="col-sm-3 col-xs-6">
                  <i class="fa fa-users"></i>
                  <!-- ☆오늘 방문자수 입력예정 -->
                  <h3 class="timer">251</h3> 
                  <p contenteditable="true">Visited Today</p>
                </div>
              </div><!-- /count-wrap -->
              </center>
            </div><!-- /.col-md-12 -->
          </div><!-- /.row -->
        </div><!-- /.container -->
      </div>
    </section> <!-- End Facts Section -->

	<!-- Footer Section -->
    <footer class="footer-wrapper">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="copyright text-center">
              <p>&copy; C4D 2017. All rights reserved.</p>
            </div>
          </div>
        </div>
      </div>
    </footer><!-- End Footer Section -->
    
 <!-- Skill modal -->
 <div id="skillModal" class="modal fade" role="dialog">
  <div class="modal-dialog modal-sm">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Skills</h4>
      </div>
      <div class="modal-body">
      <center>
      <ul id="skillInput">
      <li>
      <input type="text" class="skill_title" placeholder="스킬 :    예)Java" width="600px" style="padding-left: 10px"><input type="number" class="skill_num" placeholder="능력도:    예)85" style="padding-left: 10px">
      </li>
      </ul>
      </center>
      </div>
      <div class="modal-footer">
      <center>
        <button type="button" class="btn btn-primary btn-sm" id="skillplusBtn">스킬 추가</button>
        <button type="button" class="btn btn-warningid btn-sm" data-dismiss="modal" id="skillapplyBtn">스킬저장</button>
      </center>
      </div>
    </div>
  </div>
</div> 

<!-- More Skill -->
<div id="moreSkillModal" class="modal fade" role="dialog">
	<div class="modal-dialog modal-sm">
		<!-- Modal Content -->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title"> More Skills</h4>
			</div>
			<div class="modal-body">
			<div id= "slider_resp" class="rslider"></div>
			</div>
		</div>
	</div>
</div>

	<!-- Javascript files -->
	<script src="assets/js/jquery.js"></script>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="assets/js/jquery.stellar.min.js"></script>
	<script src="assets/js/jquery.sticky.js"></script>
  <script src="assets/js/smoothscroll.js"></script>
	<script src="assets/js/wow.min.js"></script>
  <script src="assets/js/jquery.countTo.js"></script>
  <script src="assets/js/jquery.inview.min.js"></script> 
  <script src="assets/js/jquery.easypiechart.js"></script>
  <script src="assets/js/jquery.shuffle.min.js"></script>
  <script src="assets/js/jquery.magnific-popup.min.js"></script>
  <script src="http://a.vimeocdn.com/js/froogaloop2.min.js"></script>
  <script src="assets/js/jquery.fitvids.js"></script>
  <script src="assets/js/scripts.js"></script>
  <!-- 20170901 jenna kim -->
  <script src="resources/jquery-3.2.1.min.js"></script>
  <!-- 20170904 jenna kim inline editor-->
  <script src="https://cdn.ckeditor.com/4.7.2/standard-all/ckeditor.js"></script>
  <!-- 20170908 jenna kim dialog -->
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <!-- 20170911 jenna kim RoundSlider -->
  <script src="https://cdn.jsdelivr.net/npm/jquery@1.11.3/dist/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/round-slider@1.3/dist/roundslider.min.js"></script>
  
  <!-- 20170904 jenna kim skills-->
  <script>
$(document).ready(function () {
	var skillInput =$("#skillInput");
	 $('#skillplusBtn').on('click', function (e) {
		 skillInput.append('<li><input type="text" class="skill_title" placeholder="스킬 :    예)Java" width="600px" style="padding-left: 10px"><input type="number" class="skill_num" placeholder="능력도:    예)85" style="padding-left: 10px"></li>');
	})
	$('#skillapplyBtn').on('click', function () {
		var skillList = []
		var skill_title = $(".skill_title");
		var skill_num = $(".skill_num");
		$.each(skill_title,function(index, item){
			skillList.push(
				{"skill_title" : $(item).val(), "skill_num" : $(skill_num[index]).val()}		
			);			
		})
		var skillappend = $(".skillappend");
		
		$.each(skillList, function (index, item) {
		 sList = '<div class="skill-progress"><div class="skill-title"><h3>'+item.skill_title+'</h3></div><div class="progress"><div class="progress-bar six-sec-ease-in-out" role="progressbar" aria-valuenow="'+item.skill_num+'" aria-valuemin="0" aria-valuemax="100" style="width: '+item.skill_num+'%;" ><span>'+item.skill_num+'% </span></div></div></div></div>';
		skillappend.append(sList);
		$(".skill_title").val(" ");
		$(".skill_num").val(" ");
		})
=======
<!-- 20170904 jenna kim div to get all html of body -->
<div id="body_html"> 
<!-- Preloader -->
	<div id="tt-preloader">
		<div id="pre-status">
			<div class="preload-placeholder"></div>
		</div>
	</div>

	<!-- Home Section -->
	<section id="home" class="tt-fullHeight" data-stellar-vertical-offset="50" data-stellar-background-ratio="0.2">
		<div class="intro">
			<div class="intro-sub" contenteditable="true">${user.name}</div>
			<span class="editText" id="title" contenteditable="true">
			<h1 >Creative <span>PROGRAMMER</span></h1>
			</span>
			<span class="editText" id="content" contenteditable="true">
			<p>I am a fully professional freelance creative User Interface Designer &amp; Developer<br> Involving with latest web designing and technologies is a great <br> feel free to contact creative.</p>
			</span>
		</div>

		<div class="mouse-icon">
			<div class="wheel"></div>
		</div>
	</section><!-- End Home Section -->

	<!-- Navigation -->
	<header class="header">
		<nav class="navbar navbar-custom" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#custom-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
<%-- 					<c:if test="${id == cv.id }"> --%>
					<a class="navbar-brand" id="webCv_save">Save my CV</a>
<%-- 					</c:if> --%>
				</div>
		</nav>
	</header><!-- End Navigation -->


    <!-- About Section -->
    <section id="about" class="about-section section-padding">
      <div class="container">
        <h2 class="section-title wow fadeInUp" contenteditable="true">About Me</h2>

        <div class="row">

          <div class="col-md-4 col-md-push-8">
            <div class="biography">
              <div class="myphoto">
              <!-- ☆이미지 DB등록 후 변경 예정 -->
                <img src="assets/images/pf2.jpg" alt="">
              </div>
              <ul>
                <li><strong>Name:</strong> ${user.name}</li>
                <li><strong>Date of birth:</strong> ${user.birthdate}</li>
                <li><strong>Address:</strong> ${user.address}</li>
                <li><strong>Phone:</strong> ${user.tel}</li>
                <li><strong>Email:</strong> ${user.email}</li>
              </ul>
            </div>
          </div> <!-- col-md-4 -->

          <div class="col-md-8 col-md-pull-4">
            <div class="short-info wow fadeInUp">
            <span class="editText" id="object">
              <h3 contenteditable="true">Objective</h3>
            </span>
            <span class="editText" id="o_content" contenteditable="true"> 
              <p>An opportunity to work and upgrade oneself, as well as being involved in an organization that believes in gaining a competitive edge and giving back to the community. I'm presently expanding my solid experience in UI / UX design. I focus on using my interpersonal skills to build good user experience and create a strong interest in my employers. I hope to develop skills in motion design and my knowledge of the Web, and become an honest asset to the business. As an individual, I'm self-confident you’ll find me creative, funny and naturally passionate. I’m a forward thinker, which others may find inspiring when working as a team.</p>
            </span>
            </div>

            <div class="short-info wow fadeInUp">
              <span class="editText" id="whatido">
              <h3 contenteditable="true">What I Do ?</h3>
              </span>
              <span class="editText" id="w_content" contenteditable="true">
              <p>I have been working as a web interface designer since. I have a love of clean, elegant styling, and I have lots of experience in the production of CSS3 and HTML5 for modern websites. I loving creating awesome as per my clients’ need. I think user experience when I try to craft something for my clients. Making a design awesome.</p>
			  </span>
            </div>
            <div class="download-button">
              <a class="btn btn-primary btn-lg" href="cv_download?id=${id}"><i class="fa fa-download"></i>download my cv</a>
            </div>
          </div>
        </div> <!-- /.row -->
      </div> <!-- /.container -->
    </section><!-- End About Section -->

    <!-- Resume Section -->
    <section id="resume" class="resume-section section-padding">
        <div class="container">
            <h2 class="section-title wow fadeInUp" contenteditable="true">이력</h2>
            <div class="row">
                <div class="col-md-12">
                    <div class="resume-title">
                        <h3>학력</h3>
                    </div>
                    <div class="resume">
                        <ul class="timeline edulist">
                           <c:forEach var = "edu" items="${elist}" varStatus="stat">
                           <c:choose>
	                           <c:when test="${stat.count%2==0}">
	                           		<li class="timeline-inverted">
                                	<div class="posted-date">
                                    <span class="month" >${edu.edu_startdate}<span>-</span>${edu.edu_enddate}</span>
                             	   </div><!-- /posted-date -->

                                <div class="timeline-panel wow fadeInUp">
                                    <div class="timeline-content">
                                        <div class="timeline-heading">
                                            <h3>${edu.edu_school}</h3>
                                            <span>${edu.edu_major}</span>
                                        </div><!-- /timeline-heading -->

                                        <div class="timeline-body" contenteditable="true">
                                            <p>클릭하여 어필하고 싶은 부분을 입력해주세요.</p>
                                        </div><!-- /timeline-body -->
                                    </div> <!-- /timeline-content -->
                                </div> <!-- /timeline-panel -->
                            </li>
	                           </c:when>
	                           <c:otherwise>
	                           	 <li>
                                <div class="posted-date">
                                    <span class="month">${edu.edu_startdate}<span>-</span>${edu.edu_enddate}</span>
                                </div><!-- /posted-date -->

                                <div class="timeline-panel wow fadeInUp">
                                    <div class="timeline-content">
                                        <div class="timeline-heading">
                                            <h3>${edu.edu_school}</h3>
                                            <span>${edu.edu_major}</span>
                                        </div><!-- /timeline-heading -->

                                        <div class="timeline-body" contenteditable="true">
                                            <p>클릭하여 어필하고 싶은 부분을 입력해주세요.</p>
                                        </div><!-- /timeline-body -->
                                    </div> <!-- /timeline-content -->
                                </div><!-- /timeline-panel -->
                            </li>
	                           </c:otherwise>
                           </c:choose>
                           </c:forEach>
                        </ul>
                    </div>
                </div>
            </div><!-- /row -->

            <div class="row">
                <div class="col-md-12">
                    <div class="resume-title">
                        <h3 contenteditable="true">경력</h3>
                    </div>
                    <div class="resume">
                        <ul class="timeline">
	                          <c:forEach var = "career" items="${clist}" varStatus="stat">
                           <c:choose>
	                           <c:when test="${stat.count%2==0}">
	                           		<li class="timeline-inverted">
                                	<div class="posted-date">
                                    <span class="month" >${career.career_startdate}<span>-</span>${career.career_enddate}</span>
                             	   </div><!-- /posted-date -->

                                <div class="timeline-panel wow fadeInUp">
                                    <div class="timeline-content">
                                        <div class="timeline-heading">
                                            <h3>${career.career_org}</h3>
                                            <span>${career.career_dept}<span>직급: ${career.career_title}</span>
                                        </div><!-- /timeline-heading -->

                                        <div class="timeline-body" contenteditable="true">
                                            <p>클릭하여 어필하고 싶은 부분을 입력해주세요.</p>
                                        </div><!-- /timeline-body -->
                                    </div> <!-- /timeline-content -->
                                </div> <!-- /timeline-panel -->
                            </li>
	                           </c:when>
	                           <c:otherwise>
	                           	 <li>
                                <div class="posted-date">
                                    <span class="month">${career.career_startdate}<span>-</span>${career.career_enddate}</span>
                                </div><!-- /posted-date -->

                                <div class="timeline-panel wow fadeInUp">
                                    <div class="timeline-content">
                                        <div class="timeline-heading">
                                            <h3>${career.career_org}</h3>
                                            <span>${career.career_dept}<span>직급: ${career.career_title}</span>
                                        </div><!-- /timeline-heading -->

                                        <div class="timeline-body" contenteditable="true">
                                            <p>클릭하여 어필하고 싶은 부분을 입력해주세요.</p>
                                        </div><!-- /timeline-body -->
                                    </div> <!-- /timeline-content -->
                                </div><!-- /timeline-panel -->
                            </li>
	                           </c:otherwise>
                           </c:choose>
                           </c:forEach>
                        </ul>
                    </div>
                </div>
            </div><!-- /row -->
        </div><!-- /.container -->
    </section><!-- End Resume Section -->


    <!-- Skills Section -->
    <section id="skills" class="skills-section section-padding">
      <div class="container">
      
        <h2 class="section-title wow fadeInUp skillPlus" data-toggle="modal" data-target="#skillModal">Skills</h2>
        	<div class="row">
         		<div class="col-md-6">
         	
					<div class="skillappend"></div><!-- 사용자가 입력한 스킬이 들어갈 부분 -->
			
				</div><!-- /.col-md-6 -->
			</div><!-- /.row -->
        <div class="skill-chart text-center">
          <h3 class="section-title wow fadeInUp">More skills</h3>
        </div>
        <div class="row more-skill text-center">

           <div class="col-xs-12 col-sm-4 col-md-2">
              <div class="chart moreSkillPlus " data-percent="91" data-color="e74c3c">
                    <span class="percent"></span>
                    <div class="chart-text">
                      <span contenteditable="true" >Responsibility</span>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-4 col-md-2">
              <div class="chart" data-percent="23" data-color="2ecc71">
                    <span class="percent"></span>
                    <div class="chart-text">
                      <span contenteditable="true">Leadership</span>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-4 col-md-2">
              <div class="chart" data-percent="68" data-color="3498db">
                    <span class="percent"></span>
                    <div class="chart-text">
                      <span contenteditable="true">Cooperation</span>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-4 col-md-2">
              <div class="chart" data-percent="68" data-color="3498db">
                    <span class="percent"></span>
                    <div class="chart-text">
                      <span contenteditable="true">Management</span>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-4 col-md-2">
              <div class="chart" data-percent="68" data-color="3498db">
                    <span class="percent"></span>
                    <div class="chart-text">
                      <span contenteditable="true">Communication</span>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-4 col-md-2">
              <div class="chart" data-percent="68" data-color="3498db">
                    <span class="percent"></span>
                    <div class="chart-text">
                      <span contenteditable="true">Motivation</span>
                    </div>
                </div>
            </div>
        </div>

      </div><!-- /.container -->
    </section><!-- End Skills Section -->


    <!-- Works Section -->
    <section id="works" class="works-section section-padding">
      <div class="container">
        <h2 class="section-title wow fadeInUp" contenteditable="true">Works</h2>

        <ul class="list-inline" id="filter">
            <li><a class="active" data-group="all">All</a></li>
            <li><a data-group="design" >Design</a></li>
            <li><a data-group="web" >Web</a></li>
            <li><a data-group="interface">Interface</a></li>
            <li><a data-group="identety">Identity</a></li>
        </ul>

        <div class="row">
          <div id="grid">
            <div class="portfolio-item col-xs-12 col-sm-4 col-md-3" data-groups='["all", "identety", "interface"]'>
              <div class="portfolio-bg">
                <div class="portfolio">
                  <div class="tt-overlay"></div>
                  <div class="links">
                    <a class="image-link" href="assets/images/works/portfolio-1.jpg"><i class="fa fa-search-plus"></i></a>
                    <a href="#"><i class="fa fa-link"></i></a>                          
                  </div><!-- /.links -->
                  <img src="assets/images/works/portfolio-1.jpg" alt="image"> 
                  <div class="portfolio-info">
                    <h3>Portfolio Title</h3>
                  </div><!-- /.portfolio-info -->
                </div><!-- /.portfolio -->
              </div><!-- /.portfolio-bg -->
            </div><!-- /.portfolio-item -->


            <div class="portfolio-item col-xs-12 col-sm-4 col-md-3" data-groups='["all", "identety", "web"]'>
              <div class="portfolio-bg">
                <div class="portfolio">
                  <div class="tt-overlay"></div>
                  <div class="links">
                    <a class="image-link" href="assets/images/works/portfolio-2.jpg"><i class="fa fa-search-plus"></i></a>
                    <a href="#"><i class="fa fa-link"></i></a>                          
                  </div><!-- /.links -->
                  <img src="assets/images/works/portfolio-2.jpg" alt="image"> 
                  <div class="portfolio-info">
                    <h3>Portfolio Title</h3>
                  </div><!-- /.portfolio-info -->
                </div><!-- /.portfolio -->
              </div><!-- /.portfolio-bg -->
            </div><!-- /.portfolio-item -->
            <div class="portfolio-item col-xs-12 col-sm-4 col-md-3" data-groups='["all", "interface"]'>
              <div class="portfolio-bg">
                <div class="portfolio">
                  <div class="tt-overlay"></div>
                  <div class="links">
                    <a class="image-link" href="assets/images/works/portfolio-3.jpg"><i class="fa fa-search-plus"></i></a>
                    <a href="#"><i class="fa fa-link"></i></a>                          
                  </div><!-- /.links -->
                  <img src="assets/images/works/portfolio-3.jpg" alt="image"> 
                  <div class="portfolio-info">
                    <h3>Portfolio Title</h3>
                  </div><!-- /.portfolio-info -->
                </div><!-- /.portfolio -->
              </div><!-- /.portfolio-bg -->
            </div><!-- /.portfolio-item -->
            <div class="portfolio-item col-xs-12 col-sm-4 col-md-3" data-groups='["all", "identety", "design"]'>
              <div class="portfolio-bg">
                <div class="portfolio">
                  <div class="tt-overlay"></div>
                  <div class="links">
                    <a class="image-link" href="assets/images/works/portfolio-4.jpg"><i class="fa fa-search-plus"></i></a>
                    <a href="#"><i class="fa fa-link"></i></a>                          
                  </div><!-- /.links -->
                  <img src="assets/images/works/portfolio-4.jpg" alt="image"> 
                  <div class="portfolio-info">
                    <h3>Portfolio Title</h3>
                  </div><!-- /.portfolio-info -->
                </div><!-- /.portfolio -->
              </div><!-- /.portfolio-bg -->
            </div><!-- /.portfolio-item -->
            <div class="portfolio-item col-xs-12 col-sm-4 col-md-3" data-groups='["all", "identety", "design"]'>
              <div class="portfolio-bg">
                <div class="portfolio">
                  <div class="tt-overlay"></div>
                  <div class="links">
                    <a class="image-link" href="assets/images/works/portfolio-5.jpg"><i class="fa fa-search-plus"></i></a>
                    <a href="#"><i class="fa fa-link"></i></a>                          
                  </div><!-- /.links -->
                  <img src="assets/images/works/portfolio-5.jpg" alt="image"> 
                  <div class="portfolio-info">
                    <h3>Portfolio Title</h3>
                  </div><!-- /.portfolio-info -->
                </div><!-- /.portfolio -->
              </div><!-- /.portfolio-bg -->
            </div><!-- /.portfolio-item -->
            <div class="portfolio-item col-xs-12 col-sm-4 col-md-3" data-groups='["all", "identety", "design"]'>
              <div class="portfolio-bg">
                <div class="portfolio">
                  <div class="tt-overlay"></div>
                  <div class="links">
                    <a class="image-link" href="assets/images/works/portfolio-6.jpg"><i class="fa fa-search-plus"></i></a>
                    <a href="#"><i class="fa fa-link"></i></a>                          
                  </div><!-- /.links -->
                  <img src="assets/images/works/portfolio-6.jpg" alt="image"> 
                  <div class="portfolio-info">
                    <h3>Portfolio Title</h3>
                  </div><!-- /.portfolio-info -->
                </div><!-- /.portfolio -->
              </div><!-- /.portfolio-bg -->
            </div><!-- /.portfolio-item -->
            <div class="portfolio-item col-xs-12 col-sm-4 col-md-3" data-groups='["all", "identety", "web"]'>
              <div class="portfolio-bg">
                <div class="portfolio">
                  <div class="tt-overlay"></div>
                  <div class="links">
                    <a class="image-link" href="assets/images/works/portfolio-7.jpg"><i class="fa fa-search-plus"></i></a>
                    <a href="#"><i class="fa fa-link"></i></a>                          
                  </div><!-- /.links -->
                  <img src="assets/images/works/portfolio-7.jpg" alt="image"> 
                  <div class="portfolio-info">
                    <h3>Portfolio Title</h3>
                  </div><!-- /.portfolio-info -->
                </div><!-- /.portfolio -->
              </div><!-- /.portfolio-bg -->
            </div><!-- /.portfolio-item -->
            <div class="portfolio-item col-xs-12 col-sm-4 col-md-3" data-groups='["all", "design"]'>
              <div class="portfolio-bg">
                <div class="portfolio">
                  <div class="tt-overlay"></div>
                  <div class="links">
                    <a class="image-link" href="assets/images/works/portfolio-8.jpg"><i class="fa fa-search-plus"></i></a>
                    <a href="#"><i class="fa fa-link"></i></a>                          
                  </div><!-- /.links -->
                  <img src="assets/images/works/portfolio-8.jpg" alt="image"> 
                  <div class="portfolio-info">
                    <h3>Portfolio Title</h3>
                  </div><!-- /.portfolio-info -->
                </div><!-- /.portfolio -->
              </div><!-- /.portfolio-bg -->
            </div><!-- /.portfolio-item -->
          </div><!-- /#grid -->
        </div><!-- /.row -->
      </div><!-- /.container -->
    </section><!-- End Works Section -->


    <!-- Facts Section -->
    <section id="facts" class="facts-section text-center" data-stellar-vertical-offset="50" data-stellar-background-ratio="0.2">
      <div class="tt-overlay-bg">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
            <center>
              <div class="count-wrap">
                <div class="col-sm-3 col-xs-6">
                  <i class="fa fa-flask"></i>
                  <h3 class="timer">
                  <span class="editText" id="years_Exp">${workyears}</span>
                  </h3>
                  <p contenteditable="true">Years of Experience</p>
                </div>
                <div class="col-sm-3 col-xs-6"> 
                  <i class="fa fa-thumbs-up"></i>
                  <h3 class="timer">
                  <span class="editText" id="number_prj"> 651</span>
                  </h3>                
                  <p contenteditable="true">Projects Done</p>
                </div>
                 <div class="col-sm-3 col-xs-6">
                  <i class="fa fa-trophy"></i>
                  <h3 class="timer">
                  <span class="editText" id="number_won"> 5 </span>
                  </h3> 
                  <p contenteditable="true">Available Language</p>
                </div> 
                <div class="col-sm-3 col-xs-6">
                  <i class="fa fa-users"></i>
                  <!-- ☆오늘 방문자수 입력예정 -->
                  <h3 class="timer">251</h3> 
                  <p contenteditable="true">Visited Today</p>
                </div>
              </div><!-- /count-wrap -->
              </center>
            </div><!-- /.col-md-12 -->
          </div><!-- /.row -->
        </div><!-- /.container -->
      </div>
    </section> <!-- End Facts Section -->

	<!-- Footer Section -->
    <footer class="footer-wrapper">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="copyright text-center">
              <p>&copy; C4D 2017. All rights reserved.</p>
            </div>
          </div>
        </div>
      </div>
    </footer><!-- End Footer Section -->
    
 <!-- Skill modal -->
 <div id="skillModal" class="modal fade" role="dialog">
  <div class="modal-dialog modal-sm">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Skills</h4>
      </div>
      <div class="modal-body">
      <center>
      <ul id="skillInput">
      <li>
      <input type="text" class="skill_title" placeholder="스킬 :    예)Java" width="600px" style="padding-left: 10px"><input type="number" class="skill_num" placeholder="능력도:    예)85" style="padding-left: 10px">
      </li>
      </ul>
      </center>
      </div>
      <div class="modal-footer">
      <center>
        <button type="button" class="btn btn-primary btn-sm" id="skillplusBtn">스킬 추가</button>
        <button type="button" class="btn btn-warningid btn-sm" data-dismiss="modal" id="skillapplyBtn">스킬저장</button>
      </center>
      </div>
    </div>
  </div>
</div> 

<!-- More Skill -->
<div class="modal fade" id="moreSkillModal" role="dialog">
	<div class="modal-dialog">
		<!-- Modal Content -->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title"> More Skills</h4>
			</div>
			<div class="modal-body">
			<div id= "slider_resp" class="rslider"></div>
			</div>
		</div>
	</div>
</div>
	<!-- Javascript files -->
	<script src="assets/js/jquery.js"></script>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="assets/js/jquery.stellar.min.js"></script>
	<script src="assets/js/jquery.sticky.js"></script>
  <script src="assets/js/smoothscroll.js"></script>
	<script src="assets/js/wow.min.js"></script>
  <script src="assets/js/jquery.countTo.js"></script>
  <script src="assets/js/jquery.inview.min.js"></script> 
  <script src="assets/js/jquery.easypiechart.js"></script>
  <script src="assets/js/jquery.shuffle.min.js"></script>
  <script src="assets/js/jquery.magnific-popup.min.js"></script>
  <script src="http://a.vimeocdn.com/js/froogaloop2.min.js"></script>
  <script src="assets/js/jquery.fitvids.js"></script>
  <script src="assets/js/scripts.js"></script>
  <!-- 20170901 jenna kim -->
  <script src="resources/jquery-3.2.1.min.js"></script>
  <!-- 20170904 jenna kim inline editor-->
  <script src="https://cdn.ckeditor.com/4.7.2/standard-all/ckeditor.js"></script>
  <!-- 20170908 jenna kim dialog -->
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <!-- 20170911 jenna kim RoundSlider -->
  <script src="https://cdn.jsdelivr.net/npm/jquery@1.11.3/dist/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/round-slider@1.3/dist/roundslider.min.js"></script>
  
  <!-- 20170904 jenna kim skills-->
  <script>
$(document).ready(function () {
	var skillInput =$("#skillInput");
	 $('#skillplusBtn').on('click', function (e) {
		 skillInput.append('<li><input type="text" class="skill_title" placeholder="스킬 :    예)Java" width="600px" style="padding-left: 10px"><input type="number" class="skill_num" placeholder="능력도:    예)85" style="padding-left: 10px"></li>');
	})
	$('#skillapplyBtn').on('click', function () {
		var skillList = []
		var skill_title = $(".skill_title");
		var skill_num = $(".skill_num");
		$.each(skill_title,function(index, item){
			skillList.push(
				{"skill_title" : $(item).val(), "skill_num" : $(skill_num[index]).val()}		
			);			
		})
		var skillappend = $(".skillappend");
		
		$.each(skillList, function (index, item) {
		 sList = '<div class="skill-progress"><div class="skill-title"><h3>'+item.skill_title+'</h3></div><div class="progress"><div class="progress-bar six-sec-ease-in-out" role="progressbar" aria-valuenow="'+item.skill_num+'" aria-valuemin="0" aria-valuemax="100" style="width: '+item.skill_num+'%;" ><span>'+item.skill_num+'% </span></div></div></div></div>';
		skillappend.append(sList);
		$(".skill_title").val(" ");
		$(".skill_num").val(" ");
		})
	})
	$("#slider_resp").roundSlider({
		 sliderType: "min-range",
		    value: 37,
		    min: 1,
		    handleSize: "+15",
		    radius: 80,
		    width: 10
	})
	$(".moreSkillPlus").click(function () {
		$("#moreSkillModal").modal();
>>>>>>> branch 'master' of https://github.com/C4DSCITC/c4d_gitrepo.git
	})
}) 
  </script>
  
  
</body>
</html>