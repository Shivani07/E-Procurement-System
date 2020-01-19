<%@page import="MyPackage.DatabaseManager"%>
<%
    String fid=request.getParameter("fid");
    DatabaseManager db=new DatabaseManager();
    boolean res=db.executeNonQuery("delete from tender where id='"+fid+"'");
    if(res==true)
        out.println("<script>alert('Tender Deleted'); window.location.href='../uploadtender.jsp';</script>");
    else
        out.println("<script>alert('Tender not Deleted'); window.location.href='../uploadtender.jsp';</script>");
    
 %>