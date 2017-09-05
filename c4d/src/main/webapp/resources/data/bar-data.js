
$(function(){
    google.charts.load('current', {'packages':['bar']});
    google.charts.setOnLoadCallback(drawChart);
    var bigarr=[];
    var cdata=['', 'whole avg', 'my avg'];
    bigarr.push(cdata);
    	$.ajax({
			url : "getExperiences"
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
			  }//function
			,error : function(){ alert("getExperiences:error");}
				
		})
    
    function drawChart() {
      var data = google.visualization.arrayToDataTable(bigarr);

      var options = {
        chart: {
          title: 'Company Performance',
          subtitle: 'Sales, Expenses, and Profit: 2014-2017'
        },
      
        bars: 'horizontal',
        vAxis: {format: 'decimal'},
        height: 200,
        colors: ['#1b9e77', '#d95f02', '#F4F4F4']
        ,backgroundColor: {
        'fill': '#F4F4F4',
        'opacity': 50
     }
      };

      var chart = new google.charts.Bar(document.getElementById('bar_chart_div'));
      chart.draw(data, google.charts.Bar.convertOptions(options));

      
    }
})