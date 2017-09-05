//20170831 seongminwoo
//방문자 수 인데, 

$(function(){
	var bigarr=[];
	google.charts.load('current', {packages: ['corechart', 'line']});
	google.charts.setOnLoadCallback(drawCurveTypes);
	//var temparr=['일주일 전','5일 전','4일 전','3일 전','어제','오늘'];
	$.ajax({
		url : "getVisitCnt"
		,method: "post"
		,success : function(data){
			cdata=data;
			for(var i=0;i<data.length; i++){
				var array = $.map(data[i], function(value, index) {
						return [value];
				});
			bigarr.push(array);
			}//for 
			drawChart();
			alert(JSON.stringify(bigarr));
		  }//function
		,error : function(){ alert("getVisitCnts:error");}
	})
	
	function drawCurveTypes() {
		 
	      var data = new google.visualization.DataTable();
	      data.addColumn('string', 'visitdate');
	      data.addColumn('number', 'cnt');
	      //data.addColumn('number', 'Contacts');

	      data.addRows(bigarr/*[
	        ['-5', 0, 0],    ['1', 10, 5],   ['2', 23, 15],  ['3', 17, 9],   ['4', 18, 10],  ['5', 9, 5]
	      ]*/);

	      var options = {
	        hAxis: {
	          title: 'Time'
	        },
	        vAxis: {
	          title: 'Popularity'
	        },
	        series: {
	          0: {curveType: 'function'}
	        }
	      };

	      var chart = new google.visualization.LineChart(document.getElementById('popularity-chart'));
	      chart.draw(data, options);
	    }
	 });
 
     