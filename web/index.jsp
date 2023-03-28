

<% 
    if(session.getAttribute("name")==null)
    {
        response.sendRedirect("login.jsp");
    }
 %>
<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="css.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
    </head>
    <body>
        <div id="header-wrapper">
  <div id="header" class="container">
    <div id="logo">
	<img src= "images/logo.jpg" alt = "SILVERCABS" class="ar">
      
    </div>
    <div id="menu">
      <ul>
        <li class="current_page_item"><a href="#" accesskey="1" title="">Homepage</a></li>
        <li><a href="services/services.html" accesskey="2" title="">services</a></li>
        <li><a href="about us/about.html" accesskey="3" title="">About us</a></li>
        <li><a href="gallery/gallery.html" accesskey="4" title="">GALLERY</a></li>
        <li><a href="contact.jsp" accesskey="5" title="">BOOk ride</a></li>
<!--	<li><a href="logout" accesskey="6" title="">Logout</a></li>-->
        <li><a href="logout"><%=session.getAttribute("name")%></a></li>
      </ul>
    </div>
  </div>
</div>


<div id="header-featured"> 
<div class="images">
  <img class="mySlides" src="1.jpg" style="width:100%">
  <img class="mySlides" src="2.jpg" style="width:100%">
  <img class="mySlides" src="3.jpg" style="width:100%">
<img class="mySlides" src="4.jpg" style="width:100%">
  <img class="mySlides" src="5.jpg" style="width:100%">
</div>

<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}
    x[myIndex-1].style.display = "block";
    setTimeout(carousel, 2500); 
}
</script>
</div>

<div id="wrapper">
   
   <div id="extra1" class="container">
		<div class="title">
			<h2>Welcome to our website</h2>
		</div>
		<p>SilverCabs offers you cars for rental as well as for buying. Cars can be bought from our website. We have ties with almost all the car companies in the world. Some of the honourable mentions are Mercedes, BMW, Nissan, Audi, Bently, Aston Martin and many more. </p>

       <a href="services/services.html" class="button">Learn More</a>
   </div>
<div id="featured-wrapper">
   <div id="featured" class="container">
      
      <div class="column1"> 
        <img src= "images/GG.jpg" alt = "CAR" class="az">
      </div>
      
      
      <div class="column2"> 
        <div class="title">
          <h2>WHAT <b>WE DO?<b></h2>
        </div>
        <p>What we basically do is ,we help the customers to buy they desire. You've come across a cars that you've been wanting to buy for a while
		but always face some kind of complications? Too much transportaion charge? Dealer is asking for too much commission? Too much paper work?
		We've got this covered for you.<br/><br>
        We're different because we provide the best experience which other car sites fail to provide, We have our branches all over the world. And we provide
		free Servicing for next 5 years after buying the car from Silvercabs*.
        </p>
      </div>
	
   </div>
   </div>




<div id="page-wrapper">
	<div id="extra3" class="container">
		<div class="title">
			<h2>Get our <b>best offers<b></h2>
		</div>
		<div class="tboxa">
			<div class="padding-bottom">
				<h2>Featured Luxury Cars</h2>
				<!--Type-coupe | Top Speed-155 mph<br/>333-hp supercharged 3.0-liter V-6<br/>-->
				</p>
			</div>
			<div class="padding-bottom">
				<h2>Insurance Included</h2>
				<!--Type-coupe | Top Speed-155 mph<br/>333-hp supercharged 3.0-liter V-6<br/>-->
				</p>
			</div>
			
				<h2>Available 12 640 Cars</h2>
				<!--Type-coupe | Top Speed-155 mph<br/>333-hp supercharged 3.0-liter V-6<br/>-->
				</p>
			
			
		</div>
		<div class="tboxc">
			<div class="padding-bottom">
				
				<img src="images/offer.jpg" alt="car" />
				
			</div>
			
		</div>
		<div class="tboxb">
			<div class="padding-bottom">
				<h2>Any Locations Rent</h2>
				<!--Type-coupe | Top Speed-155 mph<br/>333-hp supercharged 3.0-liter V-6<br/>Type-coupe | Top Speed-155 mph<br/>333-hp supercharged 3.0-liter V-6<br/>Type-coupe | Top Speed-155 mph<br/>333-hp supercharged 3.0-liter V-6<br/>Type-coupe | Top Speed-155 mph<br/>333-hp supercharged 3.0-liter V-6<br/>-->
				</p>
			</div>
			<div class="padding-bottom">
				<h2>Cleaning Included</h2>
				<!--p>Type-coupe | Top Speed-155 mph<br/>333-hp supercharged 3.0-liter V-6<br/>Type-coupe | Top Speed-155 mph<br/>333-hp supercharged 3.0-liter V-6<br/>Type-coupe | Top Speed-155 mph<br/>333-hp supercharged 3.0-liter V-6<br/>Type-coupe | Top Speed-155 mph<br/>333-hp supercharged 3.0-liter V-6<br/>-->
				</p>
			</div>
			
				<h2>Online 24 / 7 Support</h2>
				<!--p>Type-coupe | Top Speed-155 mph<br/>333-hp supercharged 3.0-liter V-6<br/>Type-coupe | Top Speed-155 mph<br/>333-hp supercharged 3.0-liter V-6<br/>Type-coupe | Top Speed-155 mph<br/>333-hp supercharged 3.0-liter V-6<br/>Type-coupe | Top Speed-155 mph<br/>333-hp supercharged 3.0-liter V-6<br/>-->
				</p>
			
		</div>
	</div>
</div>



   <div id="extra" class="container">
       <h2>about us</h2>
       <br>
<!--       <span>Qutrum id, congue, and nibh</span> -->
       <p>SilverCabs offers you cars for rental as well as for buying. Cars can be bought from our website. We have ties with almost all the car companies in the world. Some of the honourable mentions are Mercedes, BMW, Nissan, Audi, Bently, Aston Martin and many more.SilverCabs offers you cars for rental as well as for buying. Cars can be bought from our website. We have ties with almost all the car companies in the world. Some of the honourable mentions are Mercedes, BMW, Nissan, Audi, Bently, Aston Martin and many more.SilverCabs offers you cars for rental as well as for buying. Cars can be bought from our website. We have ties with almost all the car companies in the world. Some of the honourable mentions are Mercedes, BMW, Nissan, Audi, Bently, Aston Martin and many more.</p>

       <a href="about us/about.html" class="button">Learn More</a>
   </div>

   
</div>

<div id="page-wrapper">
	<div id="extra2" class="contain">
		<div class="title">
			<h2>meet our fleet</h2>
		</div>
		<div class="tbox1">
			<div class="padding-bottom">
				<h2>Audi s5 2017</h2>
				<img src="images/img01.jpg" alt="" />
				<p>Type-coupe | Top Speed-155 mph<br/>333-hp supercharged 3.0-liter V-6</p>
				<a href="contact us/contact.jsp" class="button">book now</a>
			</div>
			<div>
				<h2>Audi s5 2017</h2>
				<img src="images/u.jpg" alt="" />
				<p>Type-coupe | Top Speed-155 mph<br/>333-hp supercharged 3.0-liter V-6</p>
				<a href="contact us/contact.jsp" class="button">book now</a>
			</div>
		</div>
		<div class="tbox2">
			<div class="padding-bottom">
				<h2>Audi s5 2017</h2>
				<img src="images/z.jpg" alt="" />
				<p>Type-coupe | Top Speed-155 mph<br/>333-hp supercharged 3.0-liter V-6</p>
				<a href="contact us/contact.jsp" class="button">book now</a>
			</div>
			<div>
				<h2>Audi s5 2017</h2>
				<img src="images/w.jpg" alt="" />
				<p>Type-coupe | Top Speed-155 mph<br/>333-hp supercharged 3.0-liter V-6</p>
				<a href="contact us/contact.jsp" class="button">book now</a>
			</div>
		</div>
		<div class="tbox3">
			<div class="padding-bottom">
				<h2>Audi s5 2017</h2>
				<img src="images/x.jpg" alt="" />
				<p>Type-coupe | Top Speed-155 mph<br/>333-hp supercharged 3.0-liter V-6</p>
				<a href="contact us/contact.jsp" class="button">book now</a>
			</div>
			<div>
				<h2>Audi s5 2017</h2>
				<img src="images/y.jpg" alt="" />
				<p>Type-coupe | Top Speed-155 mph<br/>333-hp supercharged 3.0-liter V-6</p>
				<a href="contact us/contact.jsp" class="button">book now</a>
                                <br>
			</div>
		</div>
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


<div id="copyright">
	<p>&copy; Untitled. All rights reserved. | Designed and Handcrafted by Harshit.</p>
	
</div>

</body>
</html>
   
