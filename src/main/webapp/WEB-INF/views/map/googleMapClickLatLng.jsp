<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Simple Map</title>
<meta name="viewport" content="initial-scale=1.0">
<meta charset="utf-8">
<style>
/* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
#map {
   height: 100%;
}
/* Optional: Makes the sample page fill the window. */
html, body {
   height: 100%;
   margin: 0;
   padding: 0;
}
</style>
</head>
<body>
   <div id="map"></div>
   <script>
      var map;
      function initMap() {
    	  
    	  
         map = new google.maps.Map(
            document.getElementById('map'), 
            {
            	zoom : 8,	
               center : {
                  lat : 37.62610258652223,
                  lng : 127.01920030533188
                  
            },
            level : 12
            
         }
            
         );
         
         
         var myHome = {
        		 lat : 37.62610258652223,
                 lng : 127.01920030533188
   	  };
         var marker = new google.maps.Marker({
        	 position : myHome,
        	 map : map
         });
         google.maps.event.addListener(map,'click',function(event){
        	 console.log(event.latLng.lat());
        	 console.log(event.latLng.lng());
        	 
         });
      }
      
      
      
      
   </script>
   <script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAYmbgrfMmphClYvmpDPDpGeo-XeVcK6VM &callback=initMap"
      async defer></script>
</body>
</html>






