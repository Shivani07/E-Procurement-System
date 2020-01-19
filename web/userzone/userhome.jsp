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
        <title>User Home</title>
        <link href="css/userstyle.css" rel="stylesheet" type="text/css"/>
        <link href="css/menu.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
         <% 
                if(session.getAttribute("username")=="" || session.getAttribute("username")==null)
                    response.sendRedirect("../login.jsp");
                else
                {
        %>
        <form>
            <div id="wrapper">
                <div id="header">
                    <div id="logo">
                        <img src="images/ggl.png" width="150" height="150" alt=""/></div>
                    <div id="sidetitle">E-Procurement System</div>
                </div>
                
                <div id="contain1">
                    <div id="date">
                        Current Date:
                        <%
                            SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy hh:mm");
                            String dt=df.format(new Date());
                            out.print(dt);
                        %>
                    </div>
                    <div id="name">
                        Hello, 
                        <%
                            DatabaseManager dm=new DatabaseManager();
                            String username=session.getAttribute("username").toString();
                            ResultSet rs=dm.selectQuery("select concern_person from vendor_registration where username='"+username+"'");
                            if(rs.next()==true)
                                out.print(rs.getString(1));
                            
                        %>
                    </div>
                    
                </div>
                
                    <div id="menu">
                        <ul>
                            <a href="userhome.jsp"><li style="border-left: 2px solid;">HOME</li></a>
                            <a href="download.jsp"><li>DOWNLOAD TENDER</li></a>
                            <a href="review.jsp"><li>REVIEW</li></a>
                            <a href="complain.jsp"><li>COMPLAIN</li></a>
                            <a href="feedback.jsp"><li>FEEDBACK</li></a>
                            <a href="changePassword.jsp"><li>CHANGE PASSWORD</li></a>
                                <a href="../logout.jsp"><li>LOGOUT</li></a>
                            
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
