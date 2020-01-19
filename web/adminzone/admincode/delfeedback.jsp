<%@page import="MyPackage.DatabaseManager"%>
<%
    String fid=request.getParameter("fid");
    DatabaseManager db=new DatabaseManager();
    boolean res=db.executeNonQuery("delete from feedback where id='"+fid+"'");
    if(res==true)
        out.println("<script>alert('Feedback Deleted'); window.location.href='../feedbackmanagement.jsp';</script>");
    else
        out.println("<script>alert('Feedback not Deleted'); window.location.href='../feedbackmanagement.jsp';</script>");
    
 %>