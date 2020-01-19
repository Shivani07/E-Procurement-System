<%@page import="MyPackage.DatabaseManager"%>
<%
    String oldpass=request.getParameter("oldpass");
    String newpass=request.getParameter("newpass");
    String confirmpass=request.getParameter("confirmpass");
    String username=session.getAttribute("adminid").toString();
    DatabaseManager db=new DatabaseManager();
    String query="update login set passwd='"+newpass+"' where userid='"+username+"' and passwd='"+oldpass+"'";
    
    if(newpass.equals(confirmpass))
    {
    boolean res=db.executeNonQuery(query);
    if(res==true)
        out.print("<script>alert('Password Changed Successfully'); window.location.href='../../login.jsp';</script>");
    else
        out.print("<script>alert('Problem occured!! Password did not update. Try again later.');</script>");
    }
    else
    {
        out.print("<script>alert('Confirm Password did not match. Reenter password correctly.'); window.location.href='../changePassword.jsp';</script>");
    }
%>