<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>C4D - StatsPage </title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <link href="css/agency.min.css" rel="stylesheet">

	<style type="text/css">
	
		 body {
        font: 10px sans-serif;
    }
    .axis path,
    .axis line {
        fill: none;
        stroke: #000;
        shape-rendering: crispEdges;
    }
    /*.x.axis path {
        display: none;
    }*/
    .line {
        fill: none;
        stroke: steelblue;
        stroke-width: 1.5px;
    }
	</style>
	<script src="vendor/jquery/jquery.min.js"></script>
	<script>
		 
	 </script>

  </head>

  <body id="page-top">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">C4D</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#services">Services</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#portfolio">Portfolio</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#about">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#team">Team</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#contact">Contact</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Header -->
    <header class="masthead">
      <div class="container">
        <div class="intro-text">
          <div class="intro-lead-in">C4D - Prototype id : ${id }</div>
          <div class="intro-heading">Resume</div>
          <a class="btn btn-xl js-scroll-trigger" href="#services">Tell Me More</a>
        </div>
      </div>
    </header>

    <!-- Services -->
    <section id="services">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading">Services</h2>
            <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
          </div>
        </div>
        
        <div class="row text-center">
        <!-- ///////////////////////////////////////////////////// -->
          <div class="col-md-4">
         	<div class="st1wrapper">
    			 <div id="morris-donut-chart"></div>
 			 </div>
            <h4 class="service-heading">Fields ratio</h4>
            <p class="text-muted">${fieldsratio }.</p>
          </div>
          
          <!-- ///////////////////////////////////////////////////// -->
          <div class="col-md-4">
          	<div class="st1wrapper">
    			 <div id="morris-donut-chart2"></div>
 			 </div>
            <h4 class="service-heading">Languages ratio</h4>
            <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>
          </div>
          <!-- ///////////////////////////////////////////////////// -->
          <div class="col-md-4">
            <div id=avgworkyears>
            ${avgworkyears}
            </div>
            <h4 class="service-heading">평균 근속 기간</h4>
            <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>
          </div>
        </div>
      </div>
    </section>

	 <!-- Services -->
    <section id="services2">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading">Experiences</h2>
            <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
          </div>
        </div>
        
        <!-- experiences-->
        <div class="row text-center">
          <div id="timeline" style="height: 200px; width:100%;"></div>
          <div id="bar_chart_div"></div><!-- ${avgworkyears} -->
        </div>
        
        
        <div class="row text-center">
        <!-- ///////////////////////////////////////////////////// -->
          <div id="chart_div" style="width: 900px; height: 500px;"></div>
        </div>
      </div>
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
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-twitter"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-facebook"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-linkedin"></i>
                </a>
              </li>
            </ul>
          </div>
          <div class="col-md-4">
            <ul class="list-inline quicklinks">
              <li class="list-inline-item">
                <a href="#">Privacy Policy</a>
              </li>
              <li class="list-inline-item">
                <a href="#">Terms of Use</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </footer>

    
    
    <!-- stats -->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
     <script src="http://d3js.org/d3.v3.min.js" charset="utf-8"></script>
	 <!-- jQuery -->
    
    <!-- Morris Charts JavaScript -->
    <script src="resources/vendor/raphael/raphael.min.js"></script>
    <script src="resources/vendor/morrisjs/morris.min.js"></script>
    <script src="resources/data/morris-data.js"></script><!--done-->
    <script src="resources/data/timeline-data.js"></script>
    <script src="resources/data/bar-data.jsp"></script> 
    <script src="resources/data/annotation-data.js"></script> 
    <!-- /stats -->
    
    <!-- Bootstrap core JavaScript -->
  <!--   <script src="vendor/jquery/jquery.min.js"></script> -->
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Contact form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/agency.min.js"></script>

  </body>

</html>
