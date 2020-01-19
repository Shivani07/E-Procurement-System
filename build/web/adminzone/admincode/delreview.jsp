<%@page import="MyPackage.DatabaseManager"%>
<%
    String fid=request.getParameter("fid");
    DatabaseManager db=new DatabaseManager();
    boolean res=db.executeNonQuery("delete from review where id='"+fid+"'");
    if(res==true)
        out.println("<script>alert('Review Deleted'); window.location.href='../reviewmgtm.jsp';</script>");
    else
        out.println("<script>alert('Review not Deleted'); window.location.href='../reviewmgtm.jsp';</script>");
    
 %>