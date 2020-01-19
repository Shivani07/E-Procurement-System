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
                        <h2 style="color: navy; font-weight: bold;">Enquiry Management</h2>
                        <br><br>
                        <table border="1" style="width: 800px">
                            <tr><th>S.No.</th><th>Vendor Name</th><th>Gender</th><th>Address</th><th>Contact No.</th><th>Email Address</th><th>Enquiry Question</th><th>Enquiry Date</th><th>Delete Enquiry</th><th>Reply</th></tr>
                             <%
                                    int n=1;
                                    DatabaseManager dm=new DatabaseManager();
                                    java.sql.ResultSet r=dm.selectQuery("select * from enquiry");
                                    
                                    while(r.next()==true)
                                    {
                                %>
                                <tr>
                                <td><%=n%></td>
                                <td><%=r.getString("name")%></td>
                                <td><%=r.getString("gender")%></td>
                                <td><%=r.getString("address")%></td>
                                <td><%=r.getString("contactno")%></td>
                                <td><%=r.getString("emailaddress")%></td>
                                <td><%=r.getString("message")%></td>
                                <td><%=r.getString("enquirydt")%></td>
                                <td><a href="admincode/delenquirycode.jsp?fid=<%=r.getInt("id")%>">Delete</a></td>
                                <td><a href="admincode/enquirycode.jsp?fid=<%=r.getInt("id")%>">Reply</a></td>
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
