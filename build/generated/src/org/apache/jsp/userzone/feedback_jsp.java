package org.apache.jsp.userzone;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import MyPackage.DatabaseManager;
import java.util.Date;
import java.text.SimpleDateFormat;

public final class feedback_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>User Home</title>\n");
      out.write("        <link href=\"css/userstyle.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/menu.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         ");
 
                if(session.getAttribute("username")=="" || session.getAttribute("username")==null)
                    response.sendRedirect("../login.jsp");
                else
                {
        
      out.write("\n");
      out.write("        <form action=\"usercode/feedbackcode.jsp\" method=\"post\">\n");
      out.write("            <div id=\"wrapper\">\n");
      out.write("                <div id=\"header\">\n");
      out.write("                    <div id=\"logo\">\n");
      out.write("                        <img src=\"images/logo.jpg\" width=\"150\" height=\"150\" alt=\"\"/></div>\n");
      out.write("                    <div id=\"sidetitle\">E-Procurement System</div>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <div id=\"contain1\">\n");
      out.write("                    <div id=\"date\">\n");
      out.write("                        Current Date:\n");
      out.write("                        ");

                            SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
                            String dt=df.format(new Date());
                            out.print(dt);
                        
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div id=\"name\">\n");
      out.write("                        Hello, \n");
      out.write("                        ");

                            DatabaseManager dm=new DatabaseManager();
                            String username=session.getAttribute("username").toString();
                            ResultSet rs=dm.selectQuery("select concern_person from vendor_registration where username='"+username+"'");
                            if(rs.next()==true)
                                out.print(rs.getString(1));
                            
                        
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                    <div id=\"menu\">\n");
      out.write("                        <ul>\n");
      out.write("                            <a href=\"userhome.jsp\"><li>HOME</li></a>\n");
      out.write("                            <a href=\"#\"><li>REVIEW</li></a>\n");
      out.write("                            <a href=\"#\"><li>COMPLAIN</li></a>\n");
      out.write("                            <a href=\"feedback.jsp\"><li>FEEDBACK</li></a>\n");
      out.write("                            <a href=\"changePassword.jsp\"><li>CHANGE PASSWORD</li>\n");
      out.write("                            <a href=\"../logout.jsp\"><li>LOGOUT</li>\n");
      out.write("                            \n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                \n");
      out.write("                    <div id=\"contain2\">\n");
      out.write("                        <h2 style=\"color: blue; text-align: center;\">Feedback Form</h2>\n");
      out.write("                        <table align=\"center\">\n");
      out.write("                            <tr><td>Enter Feedback Text:</td><td><textarea name=\"feedbacktext\" required=\"true\"></textarea></td></tr>\n");
      out.write("                            <tr><td>&nbsp;</td><td><input type=\"submit\" value=\"Submit\"/></td></tr>\n");
      out.write("                        </table>\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                \n");
      out.write("                <div id=\"footer\">\n");
      out.write("                    <div class=\"subfooter\">Copyright &copy; to Green Gas Limited</div>\n");
      out.write("                    <div class=\"subfooter\">Developed by | Shivani</div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("       ");
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
