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
        <form action="../uploadcode" method="post" enctype="multipart/form-data">
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
                            <a href="logout.jsp"><li>LOGOUT</li></a>
                            
                        </ul>
                    </div>
                
                <div id="contain2">
                    <center>
                        <h2 style="color: navy; font-weight: bold;">Upload Tenders</h2>
                        <br/><br/>
                        <table>
                            <tr><td>Tender Name:</td><td><input type="text" name="tname" required="true"/></td></tr>
                            <tr><td>Tender Description:</td><td><textarea name="tdescription" required="true"></textarea></td></tr>
                            <tr><td>Upload File:</td><td><input type="file" name="file" required="true"/></td></tr>
                            <tr><td colspan="2" align="center"><input type="submit" value="Upload"</td></tr>
                        </table>
                        <br/><br/>
                        <table>
                            <tr><th>S.No.</th>
                            <th>Tender</th>
                            <th>Description</th>
                            <th>File Uploaded</th>
                            <th>Download</th>
                            <th>Uploaded Date</th>
                            <th>Delete</th></tr>
                            <%
                            int i=1;
                            DatabaseManager db= new DatabaseManager();
                            java.sql.ResultSet rs=db.selectQuery("select * from tender");
                            while(rs.next())
                            {
                            %>
                            <tr>
                                <td><%=i %></td>
                                <td><%=rs.getString(2) %></td>
                                <td><%=rs.getString(3) %></td>
                                <td><%=rs.getString(4) %></td>
                                <td><a target="_blank" href="<%=request.getContextPath()+"/uploadFiles/"+rs.getString(4) %>">Download</a></td>
                                <td><%=rs.getString(5) %></td>
                                <td><a href="admincode/deltender.jsp?fid=<%=rs.getInt("tid")%>">Delete</a></td>
                            </tr>
                            <%
                                i++;
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
