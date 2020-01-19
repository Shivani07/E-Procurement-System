<%@page import="MyPackage.DatabaseManager"%>
<%
    String fid=request.getParameter("fid");
    DatabaseManager db=new DatabaseManager();
    boolean res=db.executeNonQuery("delete from enquiry where id='"+fid+"'");
    if(res==true)
        out.println("<script>alert('Enquiry Deleted'); window.location.href='../enquirymgtm.jsp';</script>");
    else
        out.println("<script>alert('Enquiry not Deleted'); window.location.href='../enquirymgtm.jsp';</script>");
    
 %>