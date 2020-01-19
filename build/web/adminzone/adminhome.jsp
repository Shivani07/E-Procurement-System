<%-- 
    Document   : userhome
    Created on : Jul 24, 2017, 6:30:52 PM
    Author     : USER
--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Home</title>
        <link href="admincss/adminstyle.css" rel="stylesheet" type="text/css"/>
        <link href="admincss/menu.css" rel="stylesheet" type="text/css"/>
  
    </head>
    <body>
        <% 
                if(session.getAttribute("adminid")=="" || session.getAttribute("adminid")==null)
                response.sendRedirect("../login.jsp");
                else
                {
        %>
        <form>
            <div id="wrapper">
                <div id="header">
                    <div id="logo">
                        <img src="adminImages/ggl.png" width="150" height="150" alt=""/></div>
                    <div id="sidetitle">E-Procurement System</div>
                </div>
                
                    <div id="menu">
                        <ul>
                            <a href="adminhome.jsp"><li>HOME</li></a>
                            <a href="uploadtender.jsp"><li>Upload Tender</li></a>
                            <a href="feedbackmanagement.jsp"><li title="Feedback Management">Feedback Mgtm</li></a>
                            <a href="complainmgtm.jsp"><li title="Complain Management">Complain Mgtm</li></a>
                            <a href="reviewmgtm.jsp"><li title="Review Management">Review Mgtm</li></a>
                            <a href="enquirymgtm.jsp"><li title="Enquiry Management">Enquiry Mgtm</li></a>
                            <a href="changePassword.jsp"><li>Change Pwd</li></a>
                            <a href="logout.jsp"><li style="border-right: 0px">LOGOUT</li></a>
                            
                        </ul>
                    </div>
                
                <div id="contain2"></div>
                
                <div id="footer">
                    <div class="subfooter">Copyright &copy; to Green Gas Limited</div>
                    <div class="subfooter">Developed by | Shivani</div>
                </div>
            </div>
        </form>
         <% } %>
    </body>
</html>
