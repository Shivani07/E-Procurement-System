<%@page import="MyPackage.DatabaseManager"%>
<%
    String fid=request.getParameter("fid");
    DatabaseManager db=new DatabaseManager();
    boolean res=db.executeNonQuery("delete from complain where id='"+fid+"'");
    if(res==true)
        out.println("<script>alert('Complain Deleted'); window.location.href='../complainmgtm.jsp';</script>");
    else
        out.println("<script>alert('Complain not Deleted'); window.location.href='../complainmgtm.jsp';</script>");
    
 %>