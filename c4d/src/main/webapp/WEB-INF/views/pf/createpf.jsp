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

      <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
         rel = "stylesheet">
      <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
      <script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
	<style type="text/css">
	#test{
		height: 348px;
		wieght: 100%;
	}
	
	#hiddenUpload{
    width:100%;
    height:100%;
    opacity:0;
}

 

	</style>
	<script>
		   var fd =new FormData(); //file data 유지
	   $(function() {
		   var old_parent;
		   var new_parent;
      	 //sortable
      	 $("#sortable-table").sortable({
      		 	connectWith:".list-inline",
      		    items: "tr",
      		    constraint:"parent",
      		    appendTo: "parent",
      		    helper: "clone" ,
      		    axis:'y',
      		    start:function(event,ui){
      		    	//get old class name of parent table
      		    	old_parent=$(ui.item).attr('class');
      		    },
      		    update:function(event, ui) {
      		    	//get current index;
      		    	var current_index=ui.item.index();
					//get class name of parent table
					var new_parent =$(ui.item).closest('table').attr('class');
					
					//transform
					if(old_parent!=new_parent){
						if(old_parent=='inner-row'){//inner to outter
							$(ui.item).html(transForm($(ui.item)));
							$(ui.item).attr('class','sortable-row');
						}
					}
					//get current html
					var item_html= $(ui.item).html();
					
					//
					var className = $('#sidebar div:eq(14)').attr('class');//get class name
      	        }
      		})
      	 
      	 //editable의 경우, sortable 해제 필요,
      	 //해제 및 재적용
          $(".editable").click(function(){
          	$("#sortable-table").sortable({
          		disabled:false
          	})
          	
          	
          }).dblclick(function(){ 
          	$("#sortable-table").sortable({
          		disabled:true
          	})
          	$(this).focus();
          })
          
          //file upload 시 바로 출력
          $("#hiddenUpload").change(function(){
              readURL(this);
          });
      	
      
      	 
       });
       
       //attr변경으로 바로 출력
       function readURL(input) {
           if (input.files && input.files[0]) {
               var reader = new FileReader();
               reader.onload = function (e) {
                   $("#hiddenUpload").attr('type','hidden');
                   $('#blah').attr('src', e.target.result);
                   $('#blah').attr('style',"max-height:100%;max-width:100%;position:relative;");
                   $('#img-delete-btn').html('<div class="button2"><a href="#"> BdddddddddUTTON </a></div>');
 					
 
               }
               reader.readAsDataURL(input.files[0]);
               fdSetting(input.files);
           }
       }
       function fdSetting(files) {
    	    //파일의 길이만큼 반복하며 formData에 셋팅해준다.
    	    //일단은 한개로 테스트
    	    var megaByte = 1024*1024;
    	    for (var i = 0; i < files.length; i++) {
    	   //   if( files[i].size/megaByte) <= 20 ){
    	        fd.append("tempname",files[i]);  
    	   //   }
    	   //else{
    	        //중복되는 정보 확인 위해 콘솔에 찍음
    	        
    	          alert(files[i].name+"은(는) \n 20메가 보다 커서 업로드가 할 수 없습니다.");
    	         
    	      //}
    	    }
    	  }
		
	//col 2개->col 1개
       function transForm(item){
			var html;
			var text="";
			var id=item.children(".editable").attr("id");
			//alert(item.children(".editable").text());잘 가는데
			text+="<span class ='label' >"+item.children(".label").text()+"</span>";
			text+=":";
			text+="<span class ='editable' id='"+id+"'>"+item.children(".editable").text()+"</span>";
			html="<td>"+text+"</td>"
			
			return html;
			
       }
	 
       
       function smtBtnClick(){ //sbmit button click event
     	  alert("here");
           //save to localStorage ?
			
           var html="<input id='project_role' type='hidden' value='' name='project_role' />";//role
           html+="<input id='project_title' type='hidden' value='' name='project_title' />";//title
			$(html).appendTo("#savepfform");//붙이고
			
           document.getElementById('project_role').value=$("#role").text();
           document.getElementById('project_title').value=$('#title').text();//공백있게 setting
				 
           fd.append('temp',$('#temp').val());
           //ajax로 이루어진 파일 전송 함수를 수행시킨다.
           sendFileToServer();


           //send code
           var saveCode=$("#pf-form").html();
           html="<input id='saveCode' type='hidden' value='' name='saveCode' />";
           $(html).appendTo("#savepfform");//붙이고
           document.getElementById('saveCode').value=saveCode;//value setting
         
           //.submit
           document.getElementById("savepfform").submit();
           
       }
       function sendFileToServer(){
			$.ajax({
			     type : "POST",
			      url : "saveImage", //Upload URL
			      data : fd,
			      contentType : false,
			      processData : false,
			      cache : false,
			      success : function(data) {
			        if(data) {
			          alert('성공');
			        }else {
			          alert('실패');
			        }
			      },
				error:function(){
					alert("err:saveImage");
				}
			})
		}

	 </script>

  </head>

  <body id="page-top">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
      <div class="container" >
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
<!-- ------------------------------------------------------- -->
<form action="savePF" method="POST" id="savepfform"  enctype="multipart/form-data" >
	   <!--to  table style -->
	  <div class="container" id="pf-form">
		
		<div id="templet-header" contenteditable="true" style="height:100px">
			<h2 id="title">your project name</h2><!-- center -->
			<p class="item-intro text-muted">enter short explanation about your project</p>
		</div>
		
	 <div id="templet-body">
      <table id = "sortable-table" >
         <tr class="sortable-row" class="image-row">
         
         <td class="img-container" style="width:100%; height:250px; background-color:red;text-align:center; vertical-align:middle">
          <img id="blah" class="img"> <!-- class="img-fluid d-block mx-auto"  -->
          
    	   <input type="file" id="hiddenUpload" name="upload"  ><!-- 이미지만 받게 수정필요 -->
         </td>
         
         </tr>
         
         
         <tr class="sortable-row" contenteditable='true'>
         <td>
         	<p>Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!</p>
         </td>
         </tr>
         
         <tr class="sortable-row">
         <td>
         <table id="inline-table" class="inner-table" style="width:100%;">
                   <tr class="inner-row"><td class="editable" contenteditable='true'> <span class="label">Date</span>: <span>January 2017</span> </td></tr> 
                   <tr class="inner-row"><td class="editable" contenteditable='true'> <span class="label">Client</span>: <span>Threads</span> </td></tr> 
                   </table>
         </td>
         </tr>
         
         
         <tr class="sortable-row">
         <td id = "2" class = "default" >       
         <table class="inner-table" >
				<tr class="inner-row">
					<td class="label" contenteditable='false'>description아 이 표 내에서도 왔다갔다 해야 하나?</td>
					<td class="editable" contenteditable='true'>program description</td>
				</tr>
				<tr class="inner-row">
				<td class="label" contenteditable='false'>category</td>
				<td class="editable"  contenteditable='true' >
					<select name="field">
						<option value="">--</option>
						<option value="mobile">mobile</option>
						<option value="web">web</option>
					</select>
				</td>
				<tr class="inner-row">
					<td class="label" contenteditable='false'>languages</td>
					<td class="editable" contenteditable='true' id="language">checkboxes? 아이콘이나, 텍스트 클릭해서 선택</td>
				</tr > 
				<tr class="inner-row">
					<td class="label" contenteditable='false' >role</td>
					<td class="editable" contenteditable='true' id="role">, 없으면택</td>
				</tr>
				<tr class="inner-row">
					<td class="label" contenteditable='false'>etc</td>
					<td class="editable" contenteditable='true' id="dsc1">자유, 단어 추출할 수 있으면 하고, 시간 없으면 빼고</td>
				</tr>
		</table>
      </td>
      </tr>
      </table>
      </div>
       
    </div><!-- !container -->
        <button class="btn btn-primary" data-dismiss="modal" type="button" onClick="smtBtnClick()" > SAVE PORTFOLIO</button>
  
</form>                
                  
<!-- ------------------------------------------------------- -->

     
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