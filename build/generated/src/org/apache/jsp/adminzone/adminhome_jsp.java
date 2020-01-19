package org.apache.jsp.adminzone;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminhome_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Admin Home</title>\n");
      out.write("        <link href=\"admincss/adminstyle.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"admincss/menu.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("  \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
 
                if(session.getAttribute("adminid")=="" || session.getAttribute("adminid")==null)
                out.println("Hello");//response.sendRedirect("../login.jsp");
                else
                {
        
      out.write("\n");
      out.write("        <form>\n");
      out.write("            <div id=\"wrapper\">\n");
      out.write("                <div id=\"header\">\n");
      out.write("                    <div id=\"logo\">\n");
      out.write("                        <img src=\"adminImages/ggl.png\" width=\"150\" height=\"150\" alt=\"\"/></div>\n");
      out.write("                    <div id=\"sidetitle\">E-Procurement System</div>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                    <div id=\"menu\">\n");
      out.write("                        <ul>\n");
      out.write("                            <a href=\"adminhome.jsp\"><li>HOME</li></a>\n");
      out.write("                            <a href=\"uploadtender.jsp\"><li>Upload Tender</li></a>\n");
      out.write("                            <a href=\"feedbackmanagement.jsp\"><li title=\"Feedback Management\">Feedback Mgtm</li></a>\n");
      out.write("                            <a href=\"complainmgtm.jsp\"><li title=\"Complain Management\">Complain Mgtm</li></a>\n");
      out.write("                            <a href=\"reviewmgtm.jsp\"><li title=\"Review Management\">Review Mgtm</li></a>\n");
      out.write("                            <a href=\"enquirymgtm.jsp\"><li title=\"Enquiry Management\">Enquiry Mgtm</li></a>\n");
      out.write("                            <a href=\"changePassword.jsp\"><li>Change Pwd</li></a>\n");
      out.write("                            <a href=\"logout.jsp\"><li>LOGOUT</li></a>\n");
      out.write("                            \n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                \n");
      out.write("                <div id=\"contain2\"></div>\n");
      out.write("                \n");
      out.write("                <div id=\"footer\">\n");
      out.write("                    <div class=\"subfooter\">Copyright &copy; to Green Gas Limited</div>\n");
      out.write("                    <div class=\"subfooter\">Developed by | Shivani</div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("         ");
 } 
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
