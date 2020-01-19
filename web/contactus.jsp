<%-- 
    Document   : index
    Created on : Jul 20, 2017, 12:31:43 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GGL | NEWS </title>
        
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>        
        <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <style>
            body
            {
                background-image: url('images/4.jpg');
                background-size: 100% 100%;
                background-repeat: no-repeat;
            }
            .up1{
                min-height: 150px;
                background-color: white;
                color:black;
                margin-top:0;
                
            }
            .cont
            {
                background-color: white;
            }
            .left1{
                min-height: 400px;
                background-color: white;
                color:black;
                margin-top: 1%;
                border:1px solid black;
            }
            .left1 p
            {
               margin-bottom: 20px;
                color: black;
                
            }
            .main1{
                min-height: 400px;
                background-color: white;
                color:black;
                margin-top: 1%;
               
            }
            
            .subfooter
            {
                margin-top: 1%;
                background-color: black;
                color: white;
                border-radius: 0 0px 7px 7px;
            }
            .info-box
            {
                border:4px solid #175200;
                margin: 20px 0px;
                padding: 2px 2px;
                text-align: center;
                width: 100%;
            }
            .botborder
            {
                border:2px solid #175200;
                font-weight: bold;
                background-color:rgba(200,200,200,0.5);
                color:blue;
            }
            .slid
            {
                border:2px solid black;
            }
            .map1{
                min-height: 184px;
                border:2px solid black;
            }
          tr.spaceUnder>td {
                    //padding-bottom: 1em;
                    padding: 1em;
                }
                
                .content-header{
  font-family: 'Oleo Script', cursive;
  color:#fcc500;
  font-size: 45px;
}

.section-content{
  text-align: center; 

}
#contact{
    
    font-family: 'Teko', sans-serif;
  padding-top: 60px;
  width: 100%;
  height: 550px;
  background: #3a6186; /* fallback for old browsers */
  background: -webkit-linear-gradient(to left, #3a6186 , #89253e); /* Chrome 10-25, Safari 5.1-6 */
  background: linear-gradient(to left, darkseagreen, black ); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
    color : #fff;    
}
.contact-section{
  padding-top: 40px;
}
.contact-section .col-md-6{
  width: 50%;
}

.form-line{
  border-right: 1px solid #B29999;
}

.form-group{
  margin-top: 10px;
}
label{
  font-size: 1.3em;
  line-height: 1em;
  font-weight: normal;
}
.form-control{
  font-size: 1.3em;
  color: #080808;
}
textarea.form-control {
    height: 135px;
   /* margin-top: px;*/
}

.submit{
  font-size: 1.1em;
  float: right;
  width: 150px;
  background-color: transparent;
  color: black;

}

        </style>
        <script>
function myMap() {
    var center;
var mapProp= {
    center:new google.maps.LatLng(26.8650,81.0025),
    zoom:13
};
var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
var marker = new google.maps.Marker({position: center});
marker.setMap(map);
}
</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyARuyAhA0a0bguZOypIofxAlYk2mo5Vuic&callback=myMap"></script>
    </head>
    <body onload="myMap()">
        <form action="SaveEnquiry" method="post">
        <div class="container" style="border:1px solid white; border-radius: 5px;">
            <div class="row" style="border: 4px solid black; border-radius: 10px;">
                <div class="col-sm-3" style="margin-top: 2px; min-height: 150px; background-size:100% 100%; background-image: url('images/ggl.png');border-radius: 10px 0px 0px 10px;"></div>
                <div class="col-sm-9" style="margin-top: 2px;min-height: 150px; background-color: white; background-image:url('images/gglLogo.png'); background-size:100% 100%;border-radius: 0px 10px 10px 0px;"></div>
            </div> 
                
                <div class="col-sm-12">
                    <div class="row">
                     <nav class="navbar navbar-inverse" style="margin-top:5px; margin-bottom: 5px;"  >
                      <div class="container-fluid">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                          </button>
                          
                        </div>

                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" >
                          <ul class="nav navbar-nav" >
                              <li class="active"><a href="index.jsp"><span class="glyphicon glyphicon-home"></span> HOME <span class="sr-only">(current)</span></a></li>
                            <li><a href="aboutus.jsp">ABOUT US</a></li>
                            <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">SERVICES <span class="caret"></span></a>
                              <ul class="dropdown-menu">
                                <li><a href="safety.jsp">Safety Awareness</a></li>
                                <li><a href="social.jsp">Social Responsibilty</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="news.jsp">GGL News</a></li>
                               
                              </ul>
                            </li>
                            <li><a href="userzone/download.jsp">TENDER</a></li>
                            <li><a href="recruitment.jsp">RECRUITMENT</a></li>
                            <li><a href="enquiry.jsp">ENQUIRY</a></li>
                             <li><a href="contactus.jsp">CONTACT US</a></li>
                          </ul>
                          
                          <ul class="nav navbar-nav navbar-right">
                              <li><a href="login.jsp">LOG IN</a></li>
                              <li><a href="registration.jsp">REGISTER</a></li>
                          </ul>
                        </div><!-- /.navbar-collapse -->
                      </div><!-- /.container-fluid -->
                    </nav>
                    </div>
                </div>
                
                
            
            <div class="col-sm-12" >
                <div class="row" >
                    <marquee style=" background-color: rgba(200,200,200,0.5);color:yellow; font-size:28px; font-family:monotype corsiva;border-radius: 3px;"><span class="glyphicon glyphicon-triangle-right" style="color:darkgreen;"></span> Welcome to Green Gas Limited E-Procurement System</marquee>
                </div>
            </div> 
            
           
            <div class="col-sm-12 up1" style="background-image:url('images/TitleBarbg3.jpg'); background-size: 100% 100%; background-repeat: no-repeat; " >
                <div class="row" >
                    <div class="col-sm-1"></div>
                    <div class="col-sm-5" style="font-size: 40px;padding-top: 5%;">Recruitment</div>
                    <div class="col-sm-3"></div>
                    <div class="col-sm-3"></div>
                </div>
            </div>
            
            <div class="col-sm-12 cont">
                <div class="row">
                    <div class="col-sm-3 left1">
                        <h2 style="text-align: center;">Quick Links</h2><hr/><center>
                        <a href="http://webmail.mailhostbox.com/"><p><img src="images/Email.jpg" style="height: 72px; width: 80px;" alt=""/></p><p>Web Mail</p></a>
                        <a href="http://peso.gov.in/"><p><img src="images/peso.png" style="height: 79px; width: 80px;" alt=""/></p><p>Petroleum and Explosives Safety Organisation</p></a>
                        <a href="http://www.gailonline.com/final_site/index.html"><p><img src="images/GAIL_Logo.svg_.png" style="height: 79px; width: 80px;" alt=""/></p><p>GAIL (India) Limited</p></a>
                        <a href="http://www.pngrb.gov.in/newSite/"><p><img src="images/pngRB.png" style="height: 75px; width: 80px;" alt=""/></p><p>Petroleum & Natural Gas Regulatory Board</p></a>
                        </center></div>
                    <div class="col-sm-9 main1">
                    <section id="contact" style="height: 670px; width:100%;">
			<div class="section-content">
				<h1 class="section-header">Get in <span class="content-header wow fadeIn " data-wow-delay="0.2s" data-wow-duration="2s"> Touch with us</span></h1>
				<h3>Contact Us for Recruitments, Jobs, Queries...</h3>
			</div>
			<div class="contact-section">
			<div class="col-sm-12">
					<div class="col-sm-6 form-line">
			  			<div class="form-group">
			  				<label for="exampleInputUsername">Your name</label>
					    	<input type="text" class="form-control" id="" placeholder=" Enter Name">
				  		</div>
				  		<div class="form-group">
					    	<label for="exampleInputEmail">Email Address</label>
					    	<input type="email" class="form-control" id="exampleInputEmail" placeholder=" Enter Email id">
					  	</div>	
					  	<div class="form-group">
					    	<label for="telephone">Mobile No.</label>
					    	<input type="tel" class="form-control" id="telephone" placeholder=" Enter 10-digit mobile no.">
			  			</div>
			  		</div>
			  		<div class="col-sm-6">
			  			<div class="form-group">
			  				<label for ="description"> Message</label>
			  			 	<textarea  class="form-control" id="description" placeholder="Enter Your Message"></textarea>
			  			</div>
			  			<div>

			  				<button type="button" class="btn btn-default submit"><i class="fa fa-paper-plane" aria-hidden="true"></i>  Send Message</button>
			  			</div>
			  			
					</div>
				</div>
                        </div>
                    </section>
                    </div>
                </div></div>
                <div class="row">  
                    <div class="col-sm-6 subfooter" style="padding-left: 2%;">Copyright &copy; 2017 to Green Gas Limited</div><div class="col-sm-6 subfooter" style="text-align: right;padding-right: 2%;">Designed and Developed by &nbsp;&nbsp;|&nbsp;&nbsp; Shivani Chaurasia, NPGC</div>
                </div>      
            </div>  
        </form>
    </body>
</html>
