<%@ page language="java" contentType="text/javascript; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
$(function(){
    google.charts.load('current', {'packages':['bar']});
    google.charts.setOnLoadCallback(drawChart);
	var d='${avgworkyears}';
    function drawChart() {
    alert(d);
      var data = google.visualization.arrayToDataTable([
        ['', 'whole avg', 'my avg'],
        ['근속년수', 1, d],
        ['ㅇ?', 2, 4] 
      ]);

      var options = {
        chart: {
          title: 'Company Performance',
          subtitle: 'Sales, Expenses, and Profit: 2014-2017',
        },
        bars: 'vertical',
        vAxis: {format: 'decimal'},
        height: 400,
        colors: ['#1b9e77', '#d95f02', '#7570b3']
      };

      var chart = new google.charts.Bar(document.getElementById('bar_chart_div'));

      chart.draw(data, google.charts.Bar.convertOptions(options));

      
    }
 });
 
     