package org.apache.jsp.code;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import MyPackage.DatabaseManager;
import java.util.Date;
import java.text.SimpleDateFormat;

public final class registrationcode_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");

    String companyname=request.getParameter("companyname");
    String nature_of_work=request.getParameter("nature_of_work");
    String address=request.getParameter("address");
    String chairperson=request.getParameter("chairperson");
    String tinno=request.getParameter("tinno");
    String panno=request.getParameter("panno");
    String companytype=request.getParameter("companytype");
    int establishmentyear=Integer.parseInt(request.getParameter("establishmentyear"));
    String projectscompleted=request.getParameter("projectscompleted");
    String concern_person=request.getParameter("concern_person");
    int concern_person_contactno=Integer.parseInt(request.getParameter("concern_person_contactno"));
    String concern_person_email=request.getParameter("concern_person_email");
    String concern_person_designation=request.getParameter("concern_person_designation");
    String companyurl=request.getParameter("companyurl");
    String username=request.getParameter("username");
    String email=request.getParameter("email");
    String password=request.getParameter("password");
    SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
    String reg_dt=df.format(new Date());
    String usertype="vendor";
    String status="no";
    //out.println("Hello");
    DatabaseManager dm=new DatabaseManager();
    boolean res=dm.executeNonQuery("insert into vendor_registration values('"+companyname+"','"+nature_of_work+"','"+address+"','"+chairperson+"','"+tinno+"','"+panno+"','"+companytype+"',"+establishmentyear+",'"+projectscompleted+"','"+concern_person+"',"+concern_person_contactno+",'"+concern_person_email+"','"+concern_person_designation+"','"+companyurl+"','"+username+"','"+email+"','"+password+"','"+reg_dt+"')");
    if(res==true)
    {
                if(dm.executeNonQuery("insert into login values('"+username+"','"+password+"','"+usertype+"','"+status+"')"))
                    out.println("<h2>Registration is successful</h2>");
                else
                    out.println("<h2>Registration is done but login details are not saved.</h2>");
    }
            else
                out.println("<h2>Database Error</h2>");
     
     
      out.write('\n');
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
