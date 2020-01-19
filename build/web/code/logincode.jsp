<%@page import="java.sql.*"%>
<%@page import="MyPackage.DatabaseManager"%>
<%
    DatabaseManager dm=new DatabaseManager();
    
    String userid=request.getParameter("username");
    String password=request.getParameter("password");
    ResultSet rs=dm.selectQuery("select usertype from login where userid='"+userid+"' and passwd='"+password+"'");
    if(rs.next()==true)
    {
        String usertype=rs.getString(1);
        if(usertype.equals("vendor"))
        {
        session.setAttribute("username", userid);
        response.sendRedirect("../userzone/userhome.jsp");
        }
        else if(usertype.equals("admin"))
        {
            session.setAttribute("adminid",userid);
            response.sendRedirect("../adminzone/adminhome.jsp");
        }
    }
    else
    {
        out.println("<script>alert('Invalid User'); window.location.href='../login.jsp';</script>");
    }
%>