<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%-- <%@ page import="sesoc.global.c4d.vo.Edu" %>
<%@ page import="sesoc.global.c4d.vo.Career" %>
<%@ page import="sesoc.global.c4d.vo.Licc" %> --%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Download cv</title>

<!-- 20170830 ajax (리스트추가) -->
<script src="resources/jquery-3.2.1.min.js"></script>
<script>
$(document).ready(function () {
	
	var edutable = $('#edu_tb');
	var careertable = $('#career_tb');
	var licctable = $('#licc_tb');
	$('#eduplus_btn').click(function () {
		edutable.append('<tr><td height="30px"><input type="text" style="border: 0px; width: 215px; height:20px; padding-left:10px" placeholder="예)SCIT대학교" class="edu_school" name="edu_school"></td><td height="30px"><input type="text" style="border: 0px; height:20px; padding-left:10px" placeholder="예)IT학과" class="edu_major" name="edu_major"></td><td height="30px"><input type="text" style="border: 0px; width: 120px; height:20px; padding-left:10px" placeholder="시작일 예)2007.03" class="edu_startdate" name="edu_startdate"></td><td height="30px"><input type="text" style="border: 0px; width: 120px; height:20px; padding-left:10px" placeholder="종료일 예)2010.10" class="edu_enddate" name="edu_enddate"></td><td height="30px"><input type="text" style="border: 0px; width: 60px; padding-left:10px" placeholder="예)학사" class="edu_degree" name="edu_degree"></td><td height="30px"><input type="text" style="border: 0px; width: 55px; padding-left:10px" placeholder="예)4.25" class="edu_gpa" name="edu_gpa"></td></tr>');
	})
	$('#careerplus_btn').click(function () {
		careertable.append('<tr><td height="30px"  width="200px"align="center"><input type="text" style="border: 0px; width: 215px; height:20px; padding-left:10px" placeholder="SCIT주식회사" class="career_org" name="career_org"></td><td height="30px" align="center"><input type="text" style="border: 0px; height:20px; padding-left:10px" placeholder="전략기획부" class="career_dept" name="career_dept"></td><td height="30px"><input type="text" style="border: 0px; width: 120px; height:20px; padding-left:10px" placeholder="입사일 예)2010.03" class="career_startdate" name="career_startdate"></td><td height="30px"><input type="text" style="border: 0px; width: 120px; height:20px; padding-left:10px" placeholder="퇴사일 예)2013.03" class="career_enddate" name="career_enddate"></td><td height="30px"><input type="text" style="border: 0px; width: 80px; height:20px; padding-left:6px" placeholder="예)4년1개월"></td><td height="30px"><input type="text" style="border: 0px; width: 40px; height:20px; padding-left:10px" placeholder="대리" class="career_title" name="career_title"></td></tr>');
	})
	$('#liccplus_btn').click(function () {
		licctable.append('<tr><td height="30px" align="center"><input type="text" class="licc_title" name="licc_title" style="border: 0px; width: 265px; height:20px; padding-left:10px" placeholder="예)정보처리기사"></td><td height="30px" align="center"><input type="text" class="licc_org" name="licc_org" style="border: 0px; width: 260px; height:20px; padding-left:10px" placeholder="예)한국산업인력공단"></td><td height="30px" align="center"><input type="text" class="licc_date" name="licc_date" style="border: 0px; width: 150px; height:20px; padding-left:10px" placeholder="예)2011.11.28"></td><td height="30px" align="center"><input type="text" class="licc_ref" name="licc_ref" style="border: 0px; width: 100px; height:20px; padding-left:10px"></td></tr>');
	})
	$('#save_btn').on('click',save_cv);
})

function save_cv() {
	var senddata1 = [];
	var senddata2 = [];
	var senddata3 = [];
	
	var edu_school = $(".edu_school");
	var edu_major = $(".edu_major");
	var edu_startdate = $(".edu_startdate");
	var edu_enddate = $(".edu_enddate");
	var edu_degree = $(".edu_degree");
	var edu_gpa = $(".edu_gpa");
	
	$.each(edu_school, function (index, item) {
		senddata1.push(
			{"edu.edu_school" : $(item).val(),
			 "edu.edu_major" : $(edu_major[index]).val(),
			 "edu.edu_startdate" : $(edu_startdate[index]).val(),
			 "edu.edu_enddate" : $(edu_enddate[index]).val(),
			 "edu.edu_degree" : $(edu_degree[index]).val(),
			 "edu.edu_gpa" : $(edu_gpa[index+1]).val()
			}
		);
	})
	var career_org = $(".career_org");
	var career_dept = $(".career_dept");
	var career_startdate = $(".career_startdate");
	var career_enddate = $(".career_enddate");
	var career_title = $(".career_title");
	
	$.each(career_org, function (index, item) {
		senddata2.push(
			{"carr.career_org" : $(item).val(),
			 "carr.career_dept" : $(career_dept[index]).val(),
			 "carr.career_startdate" : $(career_startdate[index]).val(),
			 "carr.career_enddate" : $(career_enddate[index]).val(),
			 "carr.career_title" : $(career_title[index]).val()
			}
		);
	})
	var licc_title = $(".licc_title");
	var licc_org = $(".licc_org");
	var licc_date = $(".licc_date");
	var licc_ref = $(".licc_ref");
	
	$.each(licc_title, function (index, item) {
		senddata3.push(
			{"licc.licc_title" : $(item).val(),
			 "licc.licc_org" :  $(licc_org[index]).val(),
			 "licc.licc_date" : $(licc_date[index]).val(),
			 "licc.licc_ref" : $(licc_ref[index]).val()
			}		
		);
	})
	
	$.ajax({
		method : "post"
		, url  : "cv_save1"
		, data : JSON.stringify(senddata1)
		, contentType : 'application/json'
		, success: function(resp){
			alert(resp);
		}
	});
	
/* 	$.ajax({
		method : "post"
		, url  : "cv_save2"
		, async : false
		, data : JSON.stringify(senddata2)
		, contentType : 'application/json'
		, success: function(resp){
			alert(resp);
		}
	});	
	
	$.ajax({
		method : "post"
		, url  : "cv_save3"
		, async : false
		, data : JSON.stringify(senddata3)
		, contentType : 'application/json'
		, success: function(resp){
			alert(resp);
		}
	});	 */
}
</script>
</head>
<body>
	<center><h1>이력서</h1></center>
	
	<div>
	<!-- CV 기본정보 부분 -->
	<table border="1" align="center">
		<tr>
			<td height="60px" width="120px" align="center">이름</td>
			<td height="60px" width="250px" align="center">${user.name}</td>
			<td height="60px" width="120px" align="center">성별</td>
			<td height="60px" width="90px" align="center">${user.gender}</td>
			
			<td rowspan="4" width="202px" align="center">
			<c:if test="${user.image != null}"><img src="${user.image}" alt="사진"></c:if>
			<c:if test="${user.image == null}">마이페이지에서 <br>사진을 등록해주세요.</c:if>
			</td>
			
		</tr>
		<tr>
			<td height="60px" width="120px" align="center">생년월일</td>
			<td height="60px" width="250px" align="center">${user.birthdate}</td>
			<td height="60px" width="120px" align="center">나이</td>
			<td height="60px" width="90px" align="center">만) ${user.age}</td>
		</tr>
		<tr>
			<td height="60px" width="140px" align="center">연락처</td>
			<td height="60px" colspan="3" align="center">${user.tel}</td>
		</tr>
		<tr>
			<td height="60px" width="140px" align="center">e-mail</td>
			<td height="60px" colspan="3" align="center">${user.email}</td>
		</tr>
		<tr>
			<td height="60px" width="140px" align="center">주소</td>
			<td height="60px" colspan="5" align="center">${user.address}</td>
		</tr>
	</table>
	<br>
	<!-- CV 학력사항 부분 -->
	<form>
	<table border="1" align="center" id="edu_tb">
		<tr>
			<td colspan="6" height="30px" width="700px" align="center">학력사항
			</td>
		</tr>
		<tr>
			<td height="30px" align="center">학교명</td>
			<td height="30px" align="center">학과명</td>
			<td height="30px" colspan="2"  align="center">학업기간</td>
			<td height="30px" align="center">학위</td>
			<td height="30px" align="center">학점</td>
		</tr>
		<tr>
			<td height="30px"><input type="text" name="edu_school" style="border: 0px; width: 215px; height:20px; padding-left:10px" placeholder="예)SCIT대학교"></td>
			<td height="30px"><input type="text" class="edu_major" name="edu_major" style="border: 0px; height:20px; padding-left:10px" placeholder="예)IT학과"></td>
			<td height="30px"><input type="text" class="edu_startdate" name="edu_startdate" style="border: 0px; width: 120px; height:20px; padding-left:10px" placeholder="시작일 예)2007.03"></td>
			<td height="30px"><input type="text" class="edu_enddate" name="edu_enddate" style="border: 0px; width: 120px; height:20px; padding-left:10px" placeholder="종료일 예)2010.10"></td>
			<td height="30px"><input type="text" class="edu_degree" name="edu_degree" style="border: 0px; width: 60px; padding-left:10px" placeholder="예)학사"></td>
			<td height="30px"><input type="text" class="edu_gpa" name="edu_gpa" style="border: 0px; width: 55px; padding-left:10px" placeholder="예)4.25"></td>
		</tr>
	</table>
	<!-- 20170830 학력사항 행추가 버튼 -->
	<center>
			<input type="button" value="항목추가" id="eduplus_btn">
	</center>
	
	<br>
	<!-- CV 경력사항 부분 -->
	<table border="1" align="center" id="career_tb">
		<tr>
			<td colspan="6" height="30px" width="700px" align="center">경력사항</td>
		</tr>
		<tr>
			<td height="30px" align="center">회사명</td>
			<td height="30px" align="center">부서명</td>
			<td height="30px" colspan="3"align="center">경력기간</td>
			
			<td height="30px" align="center">직위</td>
		</tr>
		<tr>
			
			<td height="30px"  width="200px"align="center"><input type="text" class="career_org" name="career_org" style="border: 0px; width: 215px; height:20px; padding-left:10px" placeholder="SCIT주식회사"></td>
			<td height="30px" align="center"><input type="text" class="career_dept" name="career_dept" style="border: 0px; height:20px; padding-left:10px" placeholder="전략기획부"></td>
			<td height="30px"><input type="text" class="career_startdate" name="career_startdate" style="border: 0px; width: 120px; height:20px; padding-left:10px" placeholder="입사일 예)2010.03"></td>
			<td height="30px"><input type="text" class="career_enddate" name="career_enddate" style="border: 0px; width: 120px; height:20px; padding-left:10px" placeholder="퇴사일 예)2013.03"></td>
			<td height="30px"><input type="text" class="career_period" name="career_period" style="border: 0px; width: 80px; height:20px; padding-left:6px" placeholder="예)4년1개월"></td>
			<td height="30px"><input type="text" class="career_title" name="career_title" style="border: 0px; width: 40px; height:20px; padding-left:10px" placeholder="대리"></td>
		</tr>
	</table>
		<!-- 20170830 경력사항 행추가 버튼 -->
	<center>
			<input type="button" value="항목추가" id="careerplus_btn">
	</center>
	
	<br>
	<!-- CV 자격사항 부분 -->
	<table border="1" align="center" id="licc_tb">
		<tr>
			<td height="30px" width="700px" colspan="4" align="center">자격사항</td>
		</tr>
		<tr>
			<td height="30px" align="center">자격증명</td>
			<td height="30px" align="center">발급기관</td>
			<td height="30px" align="center">취득일</td>
			<td height="30px" align="center">비고</td>
		</tr>
		<tr>
			<td height="30px" align="center"><input type="text" class="licc_title" name="licc_title" style="border: 0px; width: 265px; height:20px; padding-left:10px" placeholder="예)정보처리기사"></td>
			<td height="30px" align="center"><input type="text" class="licc_org" name="licc_org" style="border: 0px; width: 260px; height:20px; padding-left:10px" placeholder="예)한국산업인력공단"></td>
			<td height="30px" align="center"><input type="text" class="licc_date" name="licc_date" style="border: 0px; width: 150px; height:20px; padding-left:10px" placeholder="예)2011.11.28"></td>
			<td height="30px" align="center"><input type="text" class="licc_ref" name="licc_ref" style="border: 0px; width: 100px; height:20px; padding-left:10px"></td>
		</tr>
	</table>
		<!-- 20170830 자격사항 행추가 버튼 -->
		<center>
			<input type="button" value="항목추가" id="liccplus_btn">
		</center>
	<br>
	<center>
	<input type="button" value="이력서 수정" id="save_btn">
	<input type="button" value="이력서 내보내기" id="print_btn">
		<a href="cv?id=${id}"><input type="button" value="내 이력서로 돌아가기"></a> 		
	</center>
	</form>
	</div>
</body>
</html>