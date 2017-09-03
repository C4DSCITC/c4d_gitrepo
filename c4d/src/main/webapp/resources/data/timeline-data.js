 
$(function(){
	 google.charts.load('current', {'packages':['timeline']});
	
	 var cdata;
	 var pdata; 

	 var arr = [];
	 var bigarr=[];
	 
	 $.ajax({
			url : "getUserCareer"
			,method: "post"
			,success : function(data){
				cdata=data;
				
				for(var i=0;i<data.length; i++){
					var array = $.map(data[i], function(value, index) {
						if(index=='startdate'||index=='enddate'){
							return new Date(value);
						}
						else
							return [value];
					});
					bigarr.push(array);
				}//for 
			  }//function
			,error : function(){ alert("getUserCareer:error");}
				
		})
		
		 $.ajax({
			url : "getUserPJ"
			,method: "post"
			,success : function(data){
				cdata=data;
				for(var i=0;i<data.length; i++){
					var array = $.map(data[i], function(value, index) {
						if(index=='startdate'||index=='enddate'){
							alert("value : "+value);
							return new Date(value);
						}
						else
							return [value];
					});
					bigarr.push(array);
				}//for 
				 google.charts.setOnLoadCallback(drawChart);
			  }//function
			,error : function(){ alert("getUserPJ:error");}
				
		})
	
	 
     function drawChart() {
       var container = document.getElementById('timeline');
       var chart = new google.visualization.Timeline(container);
       var dataTable = new google.visualization.DataTable();
       
       dataTable.addColumn({ type: 'string', id: 'type' });
       dataTable.addColumn({ type: 'string', id: 'org' });
       dataTable.addColumn({ type: 'date', id: 'startdate' });
       dataTable.addColumn({ type: 'date', id: 'enddate' });
       dataTable.addRows(bigarr/*[
         [ 'Org', 'Washington', new Date(1789, 3, 30), new Date(1797, 2, 4) ],
         [ 'Org','Adams',      new Date(1797, 2, 4),  new Date(1801, 2, 4) ],
         [ 'Org','Jefferson',  new Date(1801, 2, 4),  new Date(1809, 2, 4) ]]);
       dataTable.addRows([
           [ 'Pj', 'Washington', new Date(1789, 3, 30), new Date(1797, 2, 4) ],
           [ 'Pj','Adams',      new Date(1797, 2, 4),  new Date(1801, 2, 4) ],
           [ 'Pj','Jefferson',  new Date(1801, 2, 4),  new Date(1809, 2, 4) ]]*/);

       var options = {
    		      timeline: { colorByRowLabel: true }
    		    };
       chart.draw(dataTable,options);
     }
 });
 
     