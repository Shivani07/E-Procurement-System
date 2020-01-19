<%-- 
    Document   : userhome
    Created on : Jul 24, 2017, 6:30:52 PM
    Author     : USER
--%>
<%@page import="MyPackage.DatabaseManager"%>
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
                
                <div id="contain2">
                    <center>
                        <h2 style="color: navy; font-weight: bold;">Feedback Management</h2>
                        <br><br>
                        <table border="1" style="width: 700px">
                            <tr><th>S.No.</th><th>Vendor Name</th><th>Contact No.</th><th>Email Address</th><th>Feedback</th><th>Feedback Date</th><th>Delete Feedback</th></tr>
                             <%
                                    int n=1;
                                    DatabaseManager dm=new DatabaseManager();
                                    java.sql.ResultSet r=dm.selectQuery("select * from feedback");
                                    
                                    while(r.next()==true)
                                    {
                                %>
                                <tr>
                                <td><%=n%></td>
                                <td><%=r.getString("name")%></td>
                                <td><%=r.getString("contactno")%></td>
                                <td><%=r.getString("emailaddress")%></td>
                                <td><%=r.getString("feedbacktext")%></td>
                                <td><%=r.getString("feedbackdt")%></td>
                                <td><a href="admincode/delfeedback.jsp?fid=<%=r.getInt("id")%>">Delete</a></td>
                                </tr>
                                <%
                                    n++;
                                    }
                                %>
                        </table>
                    </center>
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
