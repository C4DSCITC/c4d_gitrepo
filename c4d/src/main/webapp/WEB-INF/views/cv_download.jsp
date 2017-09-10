<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">

<title>Download cv</title>

<style>
table {
	width: 900px;
	border: 2px;
	margin: 0 auto;
}
table, th, td {
	border: 1px solid gray;
	border-collapse: collapse;
}
th{
	text-align: center;
}
h1{
	text-align: center;
}
input {
	width: inherit;
}
</style>

<!-- 20170830 ajax (리스트추가) -->
<script src="resources/jquery-3.2.1.min.js"></script>

<!-- 20170830 ajax (리스트추가) -->
<script src="resources/jquery-3.2.1.min.js"></script>
<script>
	$(document).ready(function () {
		$('#eduplus_btn').hide();
		$('#edusave_btn').hide();
		var edutable = $('#edu_tb');
		$('#eduedit_btn').click(function () {
			$('#eduedit_btn').hide();
			$('#eduplus_btn').show();
			$('#edusave_btn').show();
			$(".edu").removeAttr("readonly");
		})
		$('#eduplus_btn').click(function () {
			edutable.append('<tr><td height="30px"><input type="text" style="border: 0px; width: 215px; height:20px; padding-left:10px" placeholder="예)SCIT대학교" class="edu_school" name="edu_school"></td><td height="30px"><input type="text" style="border: 0px; height:20px; padding-left:10px" placeholder="예)IT학과" class="edu_major" name="edu_major"></td><td height="30px"><input type="date" style="border: 0px; width: 120px; height:20px; padding-left:10px" class="edu_startdate" name="edu_startdate"></td><td height="30px"><input type="date" style="border: 0px; width: 120px; height:20px; padding-left:10px" class="edu_enddate" name="edu_enddate"></td><td height="30px"><input type="text" style="border: 0px; width: 60px; padding-left:10px" placeholder="예)학사" class="edu_degree" name="edu_degree"></td><td height="30px"><input type="number" style="border: 0px; width: 55px; padding-left:10px" placeholder="예)4.2" class="edu_gpa" name="edu_gpa"></td></tr>');
		})
		$('#edusave_btn').on('click', save_edu);
		
		function save_edu() {
			if($('.edu_school').val() == ""){
				alert("학교명을 꼭 입력하세요!");
				return false;
			} else if($('.edu_major').val() == ""){
				alert("전공을 꼭 입력하세요!");
				return false;
			} else if($('.edu_startdate').val() == ""){
				alert("입학일을 꼭 입력하세요!");
				return false;
			} else if($('.edu_enddate').val() == ""){
				alert("졸업일을 꼭 입력하세요!");
				return false;
			} else if($('.edu_degree').val() == ""){
				alert("학위를 꼭 입력하세요!");
				return false;
			}else if($('.edu_gpav').val() == ""){
				alert("학점을 꼭 입력하세요!");
				return false;
			}
			
			var sendedu = [];
			
			var edu_school = $(".edu_school");
			var edu_major = $(".edu_major");
			var edu_startdate = $(".edu_startdate");
			var edu_enddate = $(".edu_enddate");
			var edu_degree = $(".edu_degree");
			var edu_gpa = $(".edu_gpa");
			
			$.each(edu_school, function (index, item) {
				sendedu.push(
					{"edu_school" : $(item).val(),
					 "edu_major" : $(edu_major[index]).val(),
					 "edu_startdate" : $(edu_startdate[index]).val(),
					 "edu_enddate" : $(edu_enddate[index]).val(),
					 "edu_degree" : $(edu_degree[index]).val(),
					 "edu_gpa" : $(edu_gpa[index]).val()
					}
				);
			})
			
			$.ajax({
				method : "post"
				, url  : "cv_edusave"
				, data : JSON.stringify(sendedu)
				, contentType : 'application/json'
				, success: function(resp){
					if(resp == 0){
						alert("다시 시도해주세요.")
					}else{
						alert("등록이 완료되었습니다!")
						callReply();
						$('#text').val(" ");
					}
				}
			});
		}
		
		$('#careerplus_btn').hide();
		$('#careersave_btn').hide();
		var careertable = $('#career_tb');
		$('#careeredit_btn').click(function () {
			$('#careeredit_btn').hide();
			$('#careerplus_btn').show();
			$('#careersave_btn').show();
			$(".career").removeAttr("readonly");
		})
		$('#careerplus_btn').click(function(){
			careertable.append('<tr><td height="30px"  width="200px"align="center"><input type="text" style="border: 0px; width: 215px; height:20px; padding-left:10px" placeholder="SCIT주식회사" class="career_org" name="career_org"></td><td height="30px"><input type="text" style="border: 0px; height:20px; padding-left:10px" placeholder="전략기획부" class="career_dept" name="career_dept"></td><td height="30px"><input type="date" style="border: 0px; width: 120px; height:20px; padding-left:10px" class="career_startdate" name="career_startdate"></td><td height="30px"><input type="date" style="border: 0px; width: 120px; height:20px; padding-left:10px" class="career_enddate" name="career_enddate"></td><td height="30px"><input type="text" style="border: 0px; width: 40px; height:20px; padding-left:10px" placeholder="대리" class="career_title" name="career_title"></td></tr>');
		})	
		$('#careersave_btn').on('click', save_career);
		
		function save_career() {
			if($('.career_org').val() == ""){
				alert("회사명을 꼭 입력하세요!");
				return false;
			} else if($('.career_dept').val() == ""){
				alert("부서명을 꼭 입력하세요!");
				return false;
			} else if($('.career_dept').val() == ""){
				alert("입사일을 꼭 입력하세요!");
				return false;
			} else if($('.career_enddate').val() == ""){
				alert("퇴사일을 꼭 입력하세요!");
				return false;
			} else if($('.career_title').val() == ""){
				alert("직위를 꼭 입력하세요!");
				return false;
			}
			
			var sendcareer = [];
			
			var career_title = $(".career_title");
			var career_org = $(".career_org");
			var career_dept = $(".career_dept");
			var career_startdate = $(".career_startdate");
			var career_enddate = $(".career_enddate");
			
			$.each(career_title, function (index, item) {
				sendcareer.push(
					{"career_title" : $(item).val(),
					 "career_org" : $(career_org[index]).val(),
					 "career_dept" : $(career_dept[index]).val(),
					 "career_startdate" : $(career_startdate[index]).val(),
					 "career_enddate" : $(career_enddate[index]).val(),
					}
				);
			})
			
			$.ajax({
				method : "post"
				, url  : "cv_careersave"
				, data : JSON.stringify(sendcareer)
				, contentType : 'application/json'
				, success: function(resp){
					if(resp == 0){
						alert("다시 시도해주세요.")
					}else{
						alert("등록이 완료되었습니다!")
						callReply();
						$('#text').val(" ");
					}
				}
			});
		}
		
		$('#liccplus_btn').hide();
		$('#liccsave_btn').hide();
		var licctable = $('#licc_tb');
		$('#liccedit_btn').click(function () {
			$('#liccedit_btn').hide();
			$('#liccplus_btn').show();
			$('#liccsave_btn').show();
			$(".licc").removeAttr("readonly");
		})
		$('#liccplus_btn').click(function () {
			licctable.append('<tr><td height="30px" align="center"><input type="text" class="licc_title" name="licc_title" style="border: 0px; width: 265px; height:20px; padding-left:10px" placeholder="예)정보처리기사"></td><td height="30px" align="center"><input type="text" class="licc_org" name="licc_org" style="border: 0px; width: 260px; height:20px; padding-left:10px" placeholder="예)한국산업인력공단"></td><td height="30px" align="center"><input type="date" class="licc_date" name="licc_date" style="border: 0px; width: 150px; height:20px; padding-left:10px" placeholder="예)2011.11.28"></td><td height="30px" align="center"><input type="text" class="licc_ref" name="licc_ref" style="border: 0px; width: 100px; height:20px; padding-left:10px"></td></tr>');
		})
		$('#liccsave_btn').on('click', save_licc);
		
		function save_licc() {
			if($('.licc_title').val() == ""){
				alert("자격증명을 꼭 입력하세요!");
				return false;
			} else if($('.licc_org').val() == ""){
				alert("발급기관명을 꼭 입력하세요!");
				return false;
			} else if($('.licc_date').val() == ""){
				alert("취득일을 꼭 입력하세요!");
				return false;
			}
			
			var sendlicc = [];
			
			var licc_title = $(".licc_title");
			var licc_org = $(".licc_org");
			var licc_ref = $(".licc_ref");
			var licc_date = $(".licc_date");
			
			$.each(licc_title, function (index, item) {
				sendlicc.push(
					{"licc_title" : $(item).val(),
					 "licc_org" : $(licc_org[index]).val(),
					 "licc_ref" : $(licc_ref[index]).val(),
					 "licc_date" : $(licc_date[index]).val(),
					}
				);
			})
			
			$.ajax({
				method : "post"
				, url  : "cv_liccsave"
				, data : JSON.stringify(sendlicc)
				, contentType : 'application/json'
				, success: function(resp){
					if(resp == 0){
						alert("다시 시도해주세요.")
					}else{
						alert("등록이 완료되었습니다!")
						callReply();
						$('#text').val(" ");
					}
				}
			});
		}
	})
</script>
</head>
<body>
	<h1>이력서</h1>
	
	<div>
	<!-- CV 기본정보 부분 -->
	<table>
		<tr>
			<th height="60px" width="120px">이름</th>
			<td height="60px" width="250px" align="center">${user.name}</td>
			<th height="60px" width="120px" >성별</th>
			<td height="60px" width="90px" align="center">${user.gender}</td>
			
			<td rowspan="5" width="202px" align="center">
			<c:if test="${user.image != null}"><img src="${user.image}" alt="사진"></c:if>
			<c:if test="${user.image == null}">마이페이지에서 <br>사진을 등록해주세요.</c:if>
			</td>
			
		</tr>
		<tr>
			<th height="60px" width="120px" >생년월일</th>
			<td height="60px" width="250px" align="center">${user.birthdate}</td>
			<th height="60px" width="120px" >나이</th>
			<td height="60px" width="90px" align="center">만) ${user.age}</td>
		</tr>
		<tr>
			<th height="60px" width="140px" >연락처</th>
			<td height="60px" colspan="3" align="center">${user.tel}</td>
		</tr>
		<tr>
			<th height="60px" width="140px" >e-mail</th>
			<td height="60px" colspan="3" align="center">${user.email}</td>
		</tr>
		<tr>
			<th height="60px" width="140px" >주소</th>
			<td height="60px" colspan="3" align="center">${user.address}</td>
		</tr>
	</table>
	<br>
	<!-- CV 학력사항 부분 -->
	<table id="edu_tb">
		<tr>
			<th colspan="6" height="30px">학력사항
			</th>
		</tr>
		<tr>
			<th height="30px">학교명</th>
			<th height="30px">학과명</th>
			<th height="30px" colspan="2"  align="center">학업기간</th>
			<th height="30px">학위</th>
			<th height="30px">학점</th>
		</tr>
		<c:if test="${elist != null }">
		<c:forEach var="edu" items="${elist}" varStatus="stat" >
		<tr>
			<td height="30px"><input type="text" class="edu" style="border: none; padding-left: 10px; font-size: medium;" height="30px" readonly="readonly" value="${edu.edu_school}"></td>
			<td height="30px"><input type="text" class="edu" style="border: none; padding-left: 10px; font-size: medium;" height="30px" readonly="readonly" value="${edu.edu_major}"></td>
			<td height="30px"><input type="date" class="edu" style="border: none; padding-left: 10px; font-size: medium;" height="30px" readonly="readonly" value="${edu.edu_startdate}"></td>
			<td height="30px"><input type="date" class="edu" style="border: none; padding-left: 10px; font-size: medium;" height="30px" readonly="readonly" value="${edu.edu_enddate}"></td>
			<td height="30px" width="50px"><input type="text" class="edu" style="border: none; font-size: medium; text-align: center;" height="30px" readonly="readonly" value="${edu.edu_degree}"></td>
			<td height="30px" width="50px"><input type="number" class="edu" style="border: none; padding-left: 10px; font-size: medium; text-align: center;" height="30px" readonly="readonly" value="${edu.edu_gpa}"></td>
		</tr>
		</c:forEach>
		</c:if>
		
	</table>
	<!-- 20170830 학력사항 행추가 버튼 -->
	<center>
			<input type="button" value="항목추가" id="eduplus_btn">
			<input type="button" value="항목수정" id="eduedit_btn">
			<input type="button" value="항목저장" id="edusave_btn" >
	</center>
	<br>
	<!-- CV 경력사항 부분 -->
	<table id="career_tb">
		<tr>
			<th height="30px" colspan="6">경력사항</th>
		</tr>
		<tr>
			<th height="30px" >회사명</th>
			<th height="30px" >부서명</th>
			<th height="30px" colspan="2">경력기간</th>
			<th height="30px" >직위</th>
		</tr>
		<c:forEach var="career" items="${clist}" varStatus="stat" >
		<tr>
			<td height="30px" width="200px" align="center"><input type="text" class="career" style="border: none; padding-left: 10px; font-size: medium;" height="30px" readonly="readonly" value="${career.career_org}"></td>
			<td height="30px" ><input type="text" class="career" style="border: none; padding-left: 10px; font-size: medium;" height="30px" readonly="readonly" value="${career.career_dept}"></td>
			<td height="30px"><input type="date" class="career" style="border: none; padding-left: 10px; font-size: medium;" height="30px" readonly="readonly" value="${career.career_startdate}"></td>
			<td height="30px"><input type="date" class="career" style="border: none; padding-left: 10px; font-size: medium;" height="30px" readonly="readonly" value="${career.career_enddate}"></td>
			<td height="30px" width="50px"><input type="text" class="career" style="border: none; font-size: medium; text-align: center;" height="30px" readonly="readonly" value="${career.career_title}"></td>
		</tr>
		</c:forEach>
	</table>
	<!-- 20170830 경력사항 행추가 버튼 -->
	<center>
			<input type="button" value="항목추가" id="careerplus_btn">
			<input type="button" value="항목수정" id="careeredit_btn">
			<input type="button" value="항목저장" id="careersave_btn">
	</center>
	<br>
	<!-- CV 자격사항 부분 -->
	<table id="licc_tb">
		<tr>
			<th height="30px" colspan="4" >자격사항</th>
		</tr>
		<tr>
			<th height="30px" >자격증명</th>
			<th height="30px" >발급기관</th>
			<th height="30px" >취득일</th>
			<th height="30px" >비고</th>
		</tr>
		<c:forEach var="licc" items="${llist}" varStatus="stat" >
		<tr>
			<td height="30px" align="center"><input type="text" class="licc" style="border: none; padding-left: 10px; font-size: medium;" height="30px" readonly="readonly" value="${licc.licc_title}"></td>
			<td height="30px" align="center"><input type="text" class="licc" style="border: none; padding-left: 10px; font-size: medium;" height="30px" readonly="readonly" value="${licc.licc_org}"></td>
			<td height="30px" align="center"><input type="date" class="licc" style="border: none; padding-left: 10px; font-size: medium;" height="30px" readonly="readonly" value="${licc.licc_date}"></td>
			<td height="30px" align="center"><input type="text" class="licc" style="border: none; padding-left: 10px; font-size: medium;" height="30px" readonly="readonly" value="${licc.licc_ref}"></td>
		</tr>
		</c:forEach>
	</table>
	<!-- 20170830 자격사항 행추가 버튼 -->
	<center>
			<input type="button" value="항목추가" id="liccplus_btn">
			<input type="button" value="항목수정" id="liccedit_btn">
			<input type="button" value="항목저장" id="liccsave_btn">
	</center>
	<br>
		<center>
			<a href="pdf"><input type="button" value="PDF로 저장하기"></a>
			<a href="${pageContext.request.contextPath}/"><input type="button" value="메인화면으로 돌아가기"></a>
		</center>
	</div>
<body>
</body>
</html>