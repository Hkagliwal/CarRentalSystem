<!DOCTYPE html>

<html>
<head>

<title></title>

<link href='https://fonts.googleapis.com/css?family=Lato:400,300,700' rel='stylesheet' type='text/css'>
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="css1.css" rel="stylesheet" type="text/css" media="all" />
<!--<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />-->

<style>
.abc {
background : #363636;
}

.map h1{
color :#ffffff;
font-family : "Lato", sans-serif;
font-size : 18px;
text-transform : capitalize;
font-weight : 800;
text-transform : uppercase;
padding: 0em 0em 2em 0em;
}
.map{position:relative;text-align : center;padding-right:15px;padding-left:15px;margin-right:auto;padding: 3em ;margin-left:auto;width:1120px;}

</style>
</head>
<body>
    
    <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
<div id="header-wrapper">
  <div id="header" class="container">
    <div id="logo">
	<img src= "images/logo.jpg" alt = "SILVERCABS" class="ar">
      
    </div>
    <div id="menu">
      <ul>
        <li><a href="index.jsp" accesskey="1" title="">Homepage</a></li>
        <li><a href="services/services.html" accesskey="2" title="">services</a></li>
	<li><a href="about us/about.html" accesskey="3" title="">About us</a></li>
        <li><a href="gallery/gallery.html" accesskey="4" title="">GALLERY</a></li>
        <li class="current_page_item"><a href="#" accesskey="5" title="">BOOk ride</a></li>
<!--        <li><a href="../LogIn/login.html" accesskey="6" title="">LogIn</a></li>-->
         <li><a href="logout" accesskey="6" title="">Logout</a></li>
	<!--<li><a href="#" accesskey="6" title="">Coming soon</a></li>-->
      </ul>
    </div>
  </div>

</div>
<div id="head">

	<h1><b>|</b> &nbsp; Book your Ride</h1>
</div>



<div id="header-featured"> </div>

<div id="page-wrapper">
	<form method="post" action="carbook" class="ccform">
	<div id="extra2" class="contain">
		<div class="title">
			<h2><b>Book Your Car</b></h2>
		</div>
		<div class="tbox1">
			<div class="padding-bottom">
				 <label id="heading">Name</label>
                                 <input class="inputfield" type="text" name="customername" placeholder="Name" required="True" >
			</div>
			<div class="padding-bottom">
				<label>Pick up location</label>    
            <input class="inputfield" type="text" name="pickuploc"  placeholder="Pick-up place" required="True" >
			</div>
			<div>
			<label>Pick up date</label>    
            <input class="inputfield" type="date" name="pickupdate" placeholder="dd/mm/yyyy" required="True" >
                <!--</label>-->
		</div>
		</div>
		<div class="tbox2">
			<div class="padding-bottom">
				<label>Drop off location</label> 
        <input class="inputfield" type="text" name="dropoffloc" placeholder="Drop off place" required="True">
			</div>
			<div class="padding-bottom">
				<label>Drop off date</label>    
            <input class="inputfield" type="date" name="dropoffdate" placeholder="dd/mm/yyyy" required="True">
			</div>
			<div>
				<label>Car name</label> 
        <input class="inputfield" type="text" name="carname" placeholder="Car name" required="True" >
			</div>
		</div>
	</div>
	<div class = "butt">
		<input  name="submit" type="submit" value="Submit" id="button"/>
	</div>
</form>
</div>



<div class ="abc">
<div class="map">
	<h1>Find us here</h1>
	<div id="googleMap" style="width:100%;height:300px;"></div>

						
</div>

 </div>      
<div id="footer">
	<div class="container">
		<div class="fbox1">
		<span class="icon icon-map-marker"></span>
			<div class="pan2">
  		 
       		 <img src="11.png" />
      		 
     		 </div>
			<span>NIT Raipur
			<br />Chhattisgarh 492010</span>
		</div>
		<div class="fbox1">
			<span class="icon icon-phone"></span>
			<div class="pan2">
  		 
       		 <img src="12.png" />
      		 
     		 </div>
   		 
			<span>
				Telephone: +91 8290146763
			</span>
		</div>
		<div class="fbox1">
			<span class="icon icon-envelope"></span>
			<div class="pan2">
  		 
       		 <img src="13.png" />
      		 
     		 </div>
			<span>carrental@gmail.com</span>
		</div>
	</div>
</div>
<!--<div id="copyright">
	<p>&copy; Untitled. All rights reserved. | Designed and Handcrafted by <a href="http://Ankush.com/">Ankush</a> & <a href="http://Persis.co" rel="nofollow">Persis</a>.</p>
	
</div>-->


<script src="https://maps.googleapis.com/maps/api/js"></script>

<script>


function initialize(){

	var mapOptions = {zoom: 14,
scrollwheel: false,
center: new google.maps.LatLng(21.2497,81.6050)
};

	var map = new google.maps.Map(document.getElementById('googleMap'),
mapOptions);

	var marker = new google.maps.Marker({
position: map.getCenter(),
animation:google.maps.Animation.BOUNCE,
icon: 'map-marker.png',
map: map
});

}

google.maps.event.addDomListener(window, 'load', initialize);


</script>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">

        <script type="text/javascript">
            var status = document.getElementById("status").value;
            if(status == "success"){
                swal("Congrats","Car booked successfully","success");
            }
            if(status == "failed")
                swal("Sorry","Please fill out the details again correctly","error");
            </script>
</body>
</html>







