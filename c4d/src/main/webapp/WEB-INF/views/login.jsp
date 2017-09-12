<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 20170901 jenna kim -->
<script src="resources/jquery-3.2.1.min.js"></script>
<script>
$(document).ready(function () {
	var changing = false;
	//태그이릅이 span이면서 아이디가 있는 것을 spans 변수에 담기
	if(!document.getElementsByTagName){return;}
	var spans = document.getElementsByTagName("span");
	for (var i = 0; i < spans.length; i++) {
		var spn = spans[i];
		if (((' '+spn.className+' ').indexOf("edit") != -1) && (spn.id)) {
			spn.onclick = function(){editBox(this);}
			spn.style.cursor= "pointer";
			spn.title = "Click to edit!";
		}
	}
	
	//수정박스
	function editBox(actual) {
		if(!changing){
			width = widthEl(actual.id) + 20;
			height =heightEl(actual.id) + 2;

			if(height < 40){
				if(width < 100)	width = 150;
				actual.innerHTML = "<input id=\""+ actual.id +"_field\" style=\"width: "+width+"px; height: "+height+"px;\" maxlength=\"254\" type=\"text\" value=\"" + actual.innerHTML + "\" onkeypress=\"return fieldEnter(this,event,'" + actual.id + "')\" onfocus=\"highLight(this);\" onblur=\"noLight(this); return fieldBlur(this,'" + actual.id + "');\" />";
			}else{
				if(width < 70) width = 90;
				if(height < 50) height = 50;
				actual.innerHTML = "<textarea name=\"textarea\" id=\""+ actual.id +"_field\" style=\"width: "+width+"px; height: "+height+"px;\" onfocus=\"highLight(this);\" onblur=\"noLight(this); return fieldBlur(this,'" + actual.id + "');\">" + actual.innerHTML + "</textarea>";
			}
			changing = true;
		}

			actual.firstChild.focus();
	}
	//text 객체의 너비
	function widthEl(span){
		if(document.layers){
			w=document.layers[span].clip.width;
		} else if (document.all && !document.getElementById){
			w=document.all[span].offsetWidth;
		} else if(document.getElementById){
			w=document.getElementById(span).offsetWidth;
		}
		return w;
	}

	//text 객체의 높이 
	function heightEl(span){

		if(document.layers){
			h=document.layers[span].clip.height;
		} else if (document.all && !document.getElementById){
			h=document.all[span].offsetHeight;
		} else if(document.getElementById){
			h=document.getElementById(span).offsetHeight;
		}
		return h;
	}
	
	function highLight(span){
		span.style.border = "1px solid #54CE43";          
	}

	function noLight(span){
		span.style.border = "0px";   
	}
})


</script>
</head>
<body>
	<div>
		<form action="login" method="post">
		<div>
			<input type="text" name="id" placeholder="Username">
			<input type="password" name="password" placeholder="Password">
			<input type="submit" value="SING IN">
		</div>	
		</form>
	</div>
	<div>
		<h1><span class="editText" id="id1">노는게 제일좋앙</span></h1>
		<span><p>모여라 칭구들</p></span>
</head>
	</div>
</body>
</html>