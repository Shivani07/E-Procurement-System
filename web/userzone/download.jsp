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
        <style>
            tr.spaceUnder>td {
                    //padding-bottom: 1em;
                    padding: 1em;
                }
        </style>
    </head>
    <body>
         <% 
                if(session.getAttribute("username")=="" || session.getAttribute("username")==null)
                {
                    out.println("<script>alert('Please Login first...');window.location.href='../login.jsp';</script>");
                } 
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
                
                    <div id="contain2" style="min-height: 400px;">
                         <center>
                         <h2 style="color: blue; text-align: center;">Submit Your Review</h2>
                        <div style="margin:0 auto; width:700px;margin-bottom:20px;padding: 25px;border: 1px solid rgb(0,200,5);background-color: rgba(0,150,5,0.3);border-radius: 10px;">
                        
                        <table>
                            <tr class="spaceUnder"><th>S.No.</th>
                            <th>Tender</th>
                            <th>Description</th>
                            <th>File Uploaded</th>
                            <th>Uploaded Date</th>
                            <th>Download</th>
                            <%
                            int i=1;
                            
                            ResultSet r=dm.selectQuery("select * from tender");
                            while(r.next())
                            {
                            %>
                            <tr class="spaceUnder">
                                <td><%=i %></td>
                                <td><%=r.getString(2) %></td>
                                <td><%=r.getString(3) %></td>
                                <td><%=r.getString(4) %></td>
                                <td><%=r.getString(5) %></td>
                                <td><a target="_blank" href="<%=request.getContextPath()+"/uploadFiles/"+r.getString(4) %>">Download</a></td>
                                
                            </tr>
                            <%
                                i++;
                            }
                            %>
                        </table>
                        </div>
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
