<%-- 
    Document   : login
    Created on : Jul 24, 2017, 10:14:58 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LogIn Here</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/hover-min.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <style>
.outer{
background-image:url('images/unnamed.jpg');
background-repeat:no-repeat;
background-size:100% 100%;
min-height:620px;
width:100%;
}
.inner
{
min-height:620px;
background-color:rgba(0,0,0,0.8);
}
.login
{
background:rgba(255,255,255,0.8);
padding:6%;
padding-bottom:20%;
margin-top:10%;
}
.btn1{
background-color:orange;
color:white;
}
.form-control
{
min-height:45px;
}

#animated_div
 {
 color:#ffffff;
 animation:animated_div 2s infinite;
 -moz-animation:animated_div 25s 5;
 -webkit-animation:animated_div 25s 5;
 border-radius:10px;
 -webkit-border-radius:10px;
 }

@keyframes animated_div
 {
 0% {left:0px;}
 20% {left:40px;}
 40% {left:80px;}
 60% {left:60px;}
 80% {left:40px;}
 100% {left:0px;}
 }

 @-webkit-keyframes animated_div
 {
 0% {left:0px;}
 20% {left:40px; margin-top: 50px;}
 40% {left:80px;margin-top: 0px;}
 60% {left:100px;margin-top: 50px;}
 80% {left:40px;margin-top: 0px;}
 100% {left:0px;}
 }
 @-moz-keyframes animated_div
 {
 0% {left:0px;}
 20% {left:40px;}
 40% {left:80px;}
 60% {left:100px;}
 80% {left:40px; }
 100% {left:0px;}
 }
</style>

    </head>
    <body>
        <form action="code/logincode.jsp" method="post"> 
            <div class="outer">
                <div class="col-sm-12 inner">
                    
                    <div class="col-sm-1"><a href="index.jsp" class=" btn btn-default">Back to Home</a></div>
            <div class="col-sm-4" id="animated_div" style="font-size:50px; color:white; text-align:center; padding-top:18%; font-family:monotype corsiva;">
                Welcome to <b style="color:orange">Green G</b>as Limited
            </div>
            <div class="col-sm-1"></div>
            <div class="col-sm-4" style="background-color:rgba(250,250,50,0.3);margin-top:80px;min-height:450px; border-radius: 0px 0px 16px 16px;">
                    <div class="row" style=" min-height:100px; background-image:url('images/branding-text.gif'); background-repeat: no-repeat; background-size: 100% 100%;opacity:0.9;">
                        <div class="col-sm-12"></div></div>
                    <br/>
                    <br/>
                     <div class="input-group">
                         <span style="color:wheat;">New Here? &nbsp;&nbsp;</span><a href="registration.jsp" style="color: navy; font-weight: bold;">Register Now</a>
                     </div><br/>
                    <div class="input-group">
                            <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-user"></span></span><input type="text" name="username" class="form-control" placeholder="Enter UserId..." aria-describedby="basic-addon2">
                            
                    </div>
                    <br/>
                    <div class="input-group">
              <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-lock"></span></span>
              <input type="password"  name="password" class="form-control" placeholder="Enter Password..." aria-describedby="basic-addon1">
            </div>
            <div class="input-group">
                         <span style="color:black;">LogIn Problem? &nbsp;&nbsp;</span><a href="registration.jsp" style="color: navy; font-weight: bold;">Forgot Password</a>
            </div><br/><br/> 

            <center><button class="btn btn-primary" style="width:195px;">Sign in</button></center><br/>
                       
            </div>
            
            
                     
            <div class="col-sm-2">
            </div>

            </div>
        </div>
    </form>
    </body>
</html>
