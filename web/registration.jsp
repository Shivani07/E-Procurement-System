<%-- 
    Document   : login
    Created on : Jul 24, 2017, 10:14:58 AM
    Author     : USER
--%>

<%@page import="MyPackage.CaptchaGenerator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
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
min-height:1000px;
width:100%;
}
.inner
{
min-height:1000px;
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
input,textarea,select{
    background-color:rgba(0,0,0,0.3);
}

#pswd_info {
	background: #dfdfdf none repeat scroll 0 0;
	color: #fff;
	left: 20px;
	position: absolute;
	top: 115px;
}
#pswd_info h4{
    background: black none repeat scroll 0 0;
    display: block;
    font-size: 14px;
    letter-spacing: 0;
    padding: 17px 0;
    text-align: center;
    text-transform: uppercase;
}
#pswd_info ul {
    list-style: outside none none;
}
#pswd_info ul li {
   padding: 10px 45px;
}



.valid {
	background: rgba(0, 0, 0, 0) url("https://s19.postimg.org/vq43s2wib/valid.png") no-repeat scroll 2px 6px;
	color: green;
	line-height: 21px;
	padding-left: 22px;
}

.invalid {
	background: rgba(0, 0, 0, 0) url("https://s19.postimg.org/olmaj1p8z/invalid.png") no-repeat scroll 2px 6px;
	color: red;
	line-height: 21px;
	padding-left: 22px;
}


#pswd_info::before {
    background: #dfdfdf none repeat scroll 0 0;
    content: "";
    height: 25px;
    left: -13px;
    margin-top: -12.5px;
    position: absolute;
    top: 50%;
    transform: rotate(45deg);
    width: 25px;
}
#pswd_info {
    display:none;
}
</style>
<script>
    $(document).ready(function(){
	
	$('input[type=password]').keyup(function() {
		var pswd = $(this).val();
		
		//validate the length
		if ( pswd.length < 8 ) {
			$('#length').removeClass('valid').addClass('invalid');
		} else {
			$('#length').removeClass('invalid').addClass('valid');
		}
		
		//validate letter
		if ( pswd.match(/[A-z]/) ) {
			$('#letter').removeClass('invalid').addClass('valid');
		} else {
			$('#letter').removeClass('valid').addClass('invalid');
		}

		//validate capital letter
		if ( pswd.match(/[A-Z]/) ) {
			$('#capital').removeClass('invalid').addClass('valid');
		} else {
			$('#capital').removeClass('valid').addClass('invalid');
		}

		//validate number
		if ( pswd.match(/\d/) ) {
			$('#number').removeClass('invalid').addClass('valid');
		} else {
			$('#number').removeClass('valid').addClass('invalid');
		}
		
		//validate space
		if ( pswd.match(/[^a-zA-Z0-9\-\/]/) ) {
			$('#space').removeClass('invalid').addClass('valid');
		} else {
			$('#space').removeClass('valid').addClass('invalid');
		}
		
	}).focus(function() {
		$('#pswd_info').show();
	}).blur(function() {
		$('#pswd_info').hide();
	});
	
});
</script>
    </head>
    <body>
        <form action="index.jsp" method="post"> 
            <div class="outer">
                <div class="col-sm-12 inner">
                    
            <div class="col-sm-1"><a href="index.jsp" class="btn btn-default">Back to Home</a></div>
<!--            <div class="col-sm-5"  style="font-size:50px; color:white; text-align:center; padding-top:18%; font-family:monotype corsiva;">
                Welcome to <b style="color:orange">Green G</b>as Limited
            </div>-->
            <div class="col-sm-3" ></div>
            <div class="col-sm-5" style="background-color:rgba(250,250,250,0.1);margin-top:10px;min-height:800px;">
                    <div class="row" style="background-color:orange; min-height:40px;">
                    <div class="col-sm-12 text-center h1" style="color:black; font-family:monotype-cursiva; text-shadow:4px 2px 5px white">Register Here...</div></div>
                <table align="center" style="color: orange;">
                    <br/>
                        <tr><td>Company Name</td><td><input type="text" name="companyname"/></td></tr>
                        <tr><td>Nature of Work</td><td><select name="nature_of_work"><option>Production</option><option>Service</option>
                           </select></td></tr>
                        <tr><td>Address</td><td><textarea name="address"></textarea></td> </tr>
                        <tr><td>Chairperson Name</td><td><input type="text" name="chairperson"/></td></tr>
                        <tr><td>TIN No.</td><td><input type="text" name="tinno"/></td></tr>
                        <tr><td>PAN No.</td><td><input type="text" name="panno"/></td></tr>
                        <tr><td>Company Type</td><td><select name="companytype"><option>Private Limited</option><option>Limited</option>
                                    <option>Semi Government</option></select></td></tr>
                        <tr><td>Establishment Year</td><td><input type="number" name="establishmentyear"/></td></tr>
                        <tr><td>Projects Completed</td><td><textarea name="projectscompleted"></textarea></td></tr>
                        <tr><td>Concern Person</td><td><input type="text" name="concern_person"/></td></tr>
                        <tr><td>Concern Person Contact No.</td><td><input type="text" name="concern_person_contactno"/></td></tr>
                        <tr><td>Concern Person Email Address</td><td><input type="text" name="concern_person_email"/></td></tr>
                        <tr><td>Concern Person Designation</td><td><input type="text" name="concern_person_designation"/></td></tr>
                        <tr><td>Company URL</td><td><input type="text" name="companyurl"/></td></tr>
                        <tr><td>Company Email Address</td><td><input type="email" name="companyemail"/></td></tr>
                        <tr><td>User Name</td><td><input type="text" name="username"/></td></tr>
                        <tr><td>Password</td><td><input type="password" name="password"/></td></tr>
                        <tr><td><h3>Captcha Code</h3></td>
                            <td style="background-color: rgba(0,0,0,0.7);text-align: center;font-size:15px;border: 1px solid white;">
                            <%  CaptchaGenerator cg=new CaptchaGenerator();
                                String capcode=cg.createCaptcha();
                            %>
                                <h2><strike><%=capcode%></strike></h2>
                                <input type="hidden" name="capcode" value="<%=capcode%>"/>
                            </td></tr>
                        <tr><td>Enter Captcha Code</td><td><input type="text" name="captcha" style="color:black;"/></td></tr>
                        <tr><td></td><td><input type="submit" value="Submit" style="background-color: #ccccff; color: black;"/></td></tr>
                    </table> 
            <br/>
         
            </div>
         
           <div class="col-sm-3">
                               <div class="aro-pswd_info">
				<div id="pswd_info">
					<h4>Password must be requirements</h4>
					<ul>
						<li id="letter" class="invalid">At least <strong>one letter</strong></li>
						<li id="capital" class="invalid">At least <strong>one capital letter</strong></li>
						<li id="number" class="invalid">At least <strong>one number</strong></li>
						<li id="length" class="invalid">Be at least <strong>8 characters</strong></li>
						<li id="space" class="invalid">be<strong> use [~,!,@,#,$,%,^,&,*,-,=,.,;,']</strong></li>
					</ul>
				</div>
			</div>
             </div>

            </div>
        </div>
    </form>
    </body>
</html>
