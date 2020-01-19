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
        <title>GGL | HOME</title>
        
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
            .left1{
                min-height: 400px;
                background-color: white;
                color:black;
                margin-top: 1%;
                border:1px solid black;
            }
            .left1 p
            {
                margin-left: 20px;
                margin-right: 20px;
                color: black;
                font-weight:bold;
            }
            .main1{
                min-height: 400px;
                background-color: white;
                color:black;
                margin-top: 1%;
                padding-left: 40px;
                padding-right: 40px;
                border:1px solid black;
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
            
            
            <div class="row">
                <div class="col-sm-12">
                     <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                      <!-- Indicators -->
                      <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                      </ol>

                      <!-- Wrapper for slides -->
                      <div class="carousel-inner" role="listbox">
                        <div class="item active">
                          <img src="images/g0.jpg" style="height:300px; width:100%;" alt="...">
                          <div class="carousel-caption">
                            “Environment pollution is an incurable disease. It can only be prevented”
                                                -Barry Commoner
                          </div>
                        </div>
                        <div class="item">
                          <img src="images/g2.jpg" style="height:300px; width:100%;" alt="...">
                          
                        </div>
                        <div class="item">
                          <img src="images/g3.jpg" style="height:300px; width:100%;"  alt="...">
                          <div class="carousel-caption">
                           “The only way forward, if we are going to improve the environment, is to get everybody involved”
                                                                            -Richard Rogers
                          </div>
                        </div>
                          <div class="item">
                          <img src="images/g4.jpg" style="height:300px; width:100%;"  alt="...">
                          
                        </div>
                      </div>

                      <!-- Controls -->
                      <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                      </a>
                      <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                      </a>
                    </div> 
                </div>
            </div> 
                          
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-4 left1">
                        <h2 style=" margin:0px 0px;background-color: grey; color:darkgreen;text-align: center; border-radius: 0px 0px 5px 5px;">News Updates</h2>
                        <marquee behavior="scroll" direction="up" scrollamount="3" onmouseover="stop();" onmouseout="start()"> <br/>
                            <p><span class="glyphicon glyphicon-hand-right" style="color:darkgreen;"></span> Now You Can Register Online For Domestic PNG Connection.</p>
                            <p><span class="glyphicon glyphicon-hand-right" style="color:darkgreen;"></span> Commercial CNG Sale has been commenced at Prakash Auto Faizabad Road.</p>
                            <p><span class="glyphicon glyphicon-hand-right" style="color:darkgreen;"></span> Upcoming CNG Stations:Lucknow: GGL – Vrindavan Yojna-18, M/s SS Filling Stn- Kanpur Road, M/s Buddeshwar FS- Mohan Road, M/s Kalawati FS-Sultanpur Road,
                                Agra: Brij Auto NH-2 Sikandra, Kant Auto Tundla, Sudhir Filling Station-Runukta, Jhalak Kishori Shamshabad Road, Kalindi Vihar, </p>
                        </marquee> 
                    </div>
                    <div class="col-sm-8 main1">
                        <h2 style=" margin:0px 0px;background-color: grey; color:darkgreen;text-align: center; border-radius: 0px 0px 5px 5px;">Green Gas Limited (GGL)</h2>
                        <br/><p>Green Gas Limited (GGL) is a Joint Venture of GAIL (India) Limited [GAIL] and Indian Oil Corporation Limited [IOCL].</p>
                        <p>It has been incorporated for the implementation of City Gas Projects for supply of Piped Natural Gas (PNG) to domestic, commercial and industrial</p>  
                        <h3>Overview</h3>
                        <p>Joint Venture agreement (JV) was signed between GAIL (India) Ltd. and Indian Oil Corporation Limited on May 11, 2005, which was followed by incorporation of Green Gas Ltd (GGL). The company was incorporated On October 07, 2005, with the objective of supplying City Gas & CNG in Agra and Lucknow.</p>
                        <p>Currently, GGL is authorized by the Central Government to lay, build, operate or expand City Gas Distribution Projects in Lucknow, Agra cities and Taj Trapezium Zone.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 info-box">
                <div class="botborder">
                 CIN : U23201UP2005PLC030834  PHONE : 0522-4088530, 4088526 FAX : 0522-4088529 www.gglonline.net. 
                </div>
            </div>  
            
            <div class="col-sm-12">
                <div class="col-sm-6 map1" id="googleMap">
                    
                </div>
                <div class="col-sm-6">
                    <div class="row slid">
                     <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                     
                      <!-- Wrapper for slides -->
                      <div class="carousel-inner" role="listbox">
                        <div class="item active">
                          <img src="images/step1-3-640x250.jpg" style="height:180px; width:100%;" alt="...">
                          
                        </div>
                        <div class="item">
                          <img src="images/step2-3-640x250.jpg" style="height:180px; width:100%;" alt="...">
                          
                        </div>
                        <div class="item">
                          <img src="images/step3-640x250.jpg" style="height:180px; width:100%;"  alt="...">
                          
                        </div>
                          <div class="item">
                          <img src="images/step4-3-640x250.jpg" style="height:180px; width:100%;"  alt="...">
                          
                        </div>
                      </div>

                      <!-- Controls -->
                      <a class="left carousel-control" style="display:none;" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                      </a>
                      <a class="right carousel-control"  style="display:none;" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                      </a>
                    </div> 
                </div>
            </div>
                </div>
            <div class="row">  
                <div class="col-sm-6 subfooter" style="padding-left: 2%;">Copyright &copy; 2017 to Green Gas Limited</div><div class="col-sm-6 subfooter" style="text-align: right;padding-right: 2%;">Designed and Developed by &nbsp;&nbsp;|&nbsp;&nbsp; Shivani Chaurasia, NPGC</div>
            </div>      
        </div>  
    </body>
</html>
