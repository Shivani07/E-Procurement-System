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
        <title>GGL | ABOUT US</title>
        
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>        
        <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
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
                border:1px solid black;
            }
            .main1 p
            {
                margin-left: 15%;
                margin-right: 15%;
                text-align: justify;
                font-size: 15px;
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
          
        </style>
        <script>
function myMap() {
    var center;
var mapProp= {
    center:new google.maps.LatLng(26.8650,81.0025),
    zoom:13,
};
var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
var marker = new google.maps.Marker({position: center});
marker.setMap(map);
}
</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyARuyAhA0a0bguZOypIofxAlYk2mo5Vuic&callback=myMap"></script>
    </head>
    <body onload="myMap()">
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
                    <div class="col-sm-3" style="font-size: 40px;padding-top: 5%;">ABOUT US</div>
                    <div class="col-sm-5"></div>
                    <div class="col-sm-3"></div>
                </div>
            </div>
            
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-3 left1">
                        <h2 style="text-align: center;">Quick Links</h2><hr/><center>
                        <a href="http://webmail.mailhostbox.com/"><p><img src="images/Email.jpg" style="height: 79px; width: 80px;" alt=""/></p><p>Web Mail</p></a>
                        <a href="http://peso.gov.in/"><p><img src="images/peso.png" style="height: 79px; width: 80px;" alt=""/></p><p>Petroleum and Explosives Safety Organisation</p></a>
                        <a href="http://www.gailonline.com/final_site/index.html"><p><img src="images/GAIL_Logo.svg_.png" style="height: 79px; width: 80px;" alt=""/></p><p>GAIL (India) Limited</p></a>
                        <a href="http://www.pngrb.gov.in/newSite/"><p><img src="images/pngRB.png" style="height: 75px; width: 80px;" alt=""/></p><p>Petroleum & Natural Gas Regulatory Board</p></a>
                        </center></div>
                    <div class="col-sm-9 main1"> 
                        <h2 style="text-align: center;">About Us</h2><hr/><br/><h3 style="margin-left: 30px;">Corporate Overview</h3><br/>
                    <br/><p>Pursuant to the directive of Hon’ble Supreme Court of India GAIL had undertaken a study to supply natural gas to the automobile, industrial, commercial and domestic Consumers in the cities of Agra and Lucknow to accomplish improvement of its ambient air quality.</p><br/>
                        <p>Joint Venture agreement (JV) was signed between GAIL (India) Ltd. and Indian Oil Corporation Limited on May 11, 2005, which was followed by incorporation of Green Gas Ltd (GGL). The company was incorporated On October 07, 2005, with the objective of supplying City Gas & CNG in Agra and Lucknow.</p><br/>
                        <p>Currently, GGL is authorized by the Central Government to lay, build, operate or expand City Gas Distribution Projects in Lucknow, Agra cities and Taj Trapezium Zone.</p><br/>
                        <p>GGL will leave no stone unturned in creating the necessary facilities to cater the City Gas demand of transport, domestic, industrial and commercial customers in its area of operation. GGL is committed, aware and fully focused towards Health, Safety, and Environment (HSE). In this endeavor we have in place systems and processes that match up with the best in the world.</p><br/><br/><br/>
                    </div>
                </div>
            </div>

            <div class="row">  
                <div class="col-sm-6 subfooter" style="padding-left: 2%;">Copyright &copy; 2017 to Green Gas Limited</div><div class="col-sm-6 subfooter" style="text-align: right;padding-right: 2%;">Designed and Developed by &nbsp;&nbsp;|&nbsp;&nbsp; Shivani Chaurasia, NPGC</div>
            </div>      
        </div>  
    </body>
</html>
