<%-- 
    Document   : userhome
    Created on : Jul 24, 2017, 6:30:52 PM
    Author     : USER
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="MyPackage.DatabaseManager"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <form action="admincode/changepasswordcode.jsp" method="post">
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
                
                    <div id="contain2">
                        <h2 style="text-align: center; color:red;">Change Password</h2>
                        <div style="margin:0 auto; width:700px;margin-bottom:20px;padding: 25px;background-color: rgba(0,5,255,0.3);border-radius: 10px;">
                        <table align="center" border="1">
                            
                            <tr><th>Enter Old Password:</th><td><input type="password" name="oldpass"/></td></tr>
                            <tr><th>Enter New Password:</th><td><input type="password" name="newpass"/></td></tr>
                            <tr><th>Re-Enter New Password:</th><td><input type="password" name="confirmpass"/></td></tr>
                            <tr><td colspan="2" align="center"><input type="submit" value="Change Password"/></td></tr>
                        </table>
                        </div>
                    </div>
                
                <div id="footer">
                    <div class="subfooter">Copyright &copy; to Green Gas Limited</div>
                    <div class="subfooter">Developed by | Shivani</div>
                </div>
            </div>
        </form>
       <% } %>
    </body>
</html>
