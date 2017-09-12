$(function() {
	var fielddata;
	var langdata;
	
	$.ajax({
		url : "fieldratios"
		,data:JSON
		,method: "post"
		,success : function(data){
			fielddata=data;
			Morris.Donut({
		        element: 'morris-donut-chart',
		        resize: true,
		        data: fielddata,
		        resize: true
		    });
		    $(window).on('resize', function() {
		        if (!window.recentResize) {
		           window.m.redraw();
		           window.recentResize = true;
		           setTimeout(function(){ window.recentResize = false; }, 200);
		        }
		     });
		}
		,error : function(){ alert("error");}
			
	})
	
	$.ajax({
		url : "langratios"
		,data:JSON
		,method: "post"
		,success : function(data){ 
				langdata=data
			Morris.Donut({
		        element: 'morris-donut-chart2',
		        data: langdata,
		        resize: true
		    });
		    
		}
		,error : function(){ alert("error");}
			
	})
	
	Morris.Donut({
        element: 'morris-donut-chart3',
        resize: true,
        data: langdata,
        display: hidden
    });
}); 