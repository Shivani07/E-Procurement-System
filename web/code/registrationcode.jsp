<%@page import="MyPackage.DatabaseManager"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
    String c1=request.getParameter("capcode");
    String c2=request.getParameter("captcha");
    if(c1.equals(c2)==true)
    {
    String companyname=request.getParameter("companyname");
    String nature_of_work=request.getParameter("nature_of_work");
    String address=request.getParameter("address");
    String chairperson=request.getParameter("chairperson");
    String tinno=request.getParameter("tinno");
    String panno=request.getParameter("panno");
    String companytype=request.getParameter("companytype");
    String establishmentyear=request.getParameter("establishmentyear");
    String projectscompleted=request.getParameter("projectscompleted");
    String concern_person=request.getParameter("concern_person");
    String concern_person_contactno=request.getParameter("concern_person_contactno");
    String concern_person_email=request.getParameter("concern_person_email");
    String concern_person_designation=request.getParameter("concern_person_designation");
    String companyurl=request.getParameter("companyurl");
    String companyemail=request.getParameter("companyemail");
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    
    SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
    String reg_dt=df.format(new Date());
    String usertype="vendor";
    String status="no";
    //out.println("Hello");
    DatabaseManager dm=new DatabaseManager();
    boolean res=dm.executeNonQuery("insert into vendor_registration values('"+companyname+"','"+nature_of_work+"','"+address+"','"+chairperson+"','"+tinno+"','"+panno+"','"+companytype+"','"+establishmentyear+"','"+projectscompleted+"','"+concern_person+"','"+concern_person_contactno+"','"+concern_person_email+"','"+concern_person_designation+"','"+companyurl+"','"+companyemail+"','"+username+"','"+password+"','"+reg_dt+"')");
    if(res==true)
    {
                if(dm.executeNonQuery("insert into login values('"+username+"','"+password+"','"+usertype+"','"+status+"')"))
                    out.print("<script>alert('Registration is successfull');</script>");
                else
                    out.print("<script>alert('Registration is done but login details are not saved.');</script>");
    }
            else
                out.print("<script>alert('Database Error');</script>");
    }
    else
    {
        out.print("<script>alert('Invalid Captcha Code'); window.location.href='../registration.jsp';</script>");
    }
     %>
