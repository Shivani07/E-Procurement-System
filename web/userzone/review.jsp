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
        <form action="usercode/reviewcode.jsp" method="post">
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
                            SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
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
                
                    <div id="contain2" style="height: 200px;">
                        <h2 style="color: blue; text-align: center;">Submit Your Review</h2>
                        <div style="margin:0 auto; width:700px;margin-bottom:20px;padding: 25px;border: 1px solid rgb(0,200,5);background-color: rgba(0,150,5,0.3);border-radius: 10px;">
                        <table align="center" >
                            <tr><td>Rating</td><td><select name="rating">
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                    </select></td></tr>
                            <tr><td>Enter Review Text:</td><td><textarea name="reviewtext" style="max-height: 230px; max-width: 430px;"></textarea></td></tr>
                            <tr><td>&nbsp;</td><td><input type="submit" value="Submit"/></td></tr>
                        </table>
                        </div>
                        <div style="margin:0 auto; width:700px; height: auto; min-height: 300px; padding:20px;color: white; background-color: rgba(100,100,250,0.4);border-radius: 10px;">
                            <table align="center" border="1" style="width:600px;">
                                <tr><th>S.No.</th><th>Review</th><th>Rating</th><th>Posted By</th><th>Posted Date</th></tr>
                                <%
                                    int n=1;
                                    ResultSet r=dm.selectQuery("select * from review");
                                   
                                    while(r.next()==true)
                                    {
                                %>
                                <tr>
                                <td><%=n%></td>
                                <td><%=r.getString("reviewtext")%></td>
                                <td><%=r.getString("rating")%></td>
                                <td><%=r.getString("postedby")%></td>
                                <td><%=r.getString("reviewdt")%></td>
                                </tr>
                                <%
                                    n++;
                                    }
                                %>
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
