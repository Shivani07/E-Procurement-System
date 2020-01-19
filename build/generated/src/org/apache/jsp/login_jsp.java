package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Home</title>\n");
      out.write("        <link href=\"css/generalstyle.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <script>\n");
      out.write("        var allImgs=[\"1.jpg\",\"2.jpg\",\"3.jpg\",\"5.jpg\",\"6.jpg\",\"7.jpg\",\"8.jpg\"];\n");
      out.write("        var imgno=0,slide;\n");
      out.write("\tfunction slider()\n");
      out.write("\t{\n");
      out.write("\t\tslide=document.getElementById(\"imslider\");\n");
      out.write("\t\tslide.src=\"images/\"+allImgs[imgno];\n");
      out.write("\t\timgno++;\n");
      out.write("\t\tif(imgno==allImgs.length)\n");
      out.write("\t\t{\n");
      out.write("\t\t\timgno=0;\n");
      out.write("\t\t}\n");
      out.write("\t\twindow.setTimeout(\"slider()\",5000);\n");
      out.write("\t\t\t\n");
      out.write("\t}\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body onload=\"slider()\">\n");
      out.write("        <form action=\"code/logincode.jsp\" method=\"post\">\n");
      out.write("        <div id=\"wrapper\">\n");
      out.write("            <div id=\"header\">\n");
      out.write("                <div id=\"logo\">\n");
      out.write("                    <img src=\"images/logo.jpg\" width=\"150px\" height=\"150px;\"alt=\"\"/>\n");
      out.write("                </div>\n");
      out.write("                <div id=\"banner\">\n");
      out.write("                    <img src=\"images/banner.gif\" width=\"850px\" height=\"150px\" alt=\"\"/>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div id=\"menu\">\n");
      out.write("                <ul>\n");
      out.write("                    <a href=\"index.jsp\"><li>HOME</li></a>\n");
      out.write("                    <a href=\"services.jsp\"><li>SERVICES</li></a>\n");
      out.write("                    <a href=\"#\"><li>REGISTRATION</li></a>\n");
      out.write("                    <a href=\"#\"><li>RECRUITMENT</li></a>\n");
      out.write("                    <a href=\"#\"><li>LOGIN</li></a>\n");
      out.write("                    <a href=\"enquiry.jsp\"><li style=\"border-right: 0px\">ENQUIRY</li></a>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"slider\">\n");
      out.write("              <img id=\"imslider\" height=\"250px\" width=\"1000px;\" src=\"images/1.jpg\"/>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div id=\"container\">\n");
      out.write("                <div id=\"left\"></div>\n");
      out.write("                <div id=\"main\">\n");
      out.write("                    <table align=\"center\"  style=\"padding: 30px;\">\n");
      out.write("                        <h2 style=\"text-align:center\"><u>Login please...</u></h2>\n");
      out.write("                        <tr><td>User Name</td><td><input type=\"text\" name=\"username\" required=\"true\"/></td></tr>\n");
      out.write("                        <tr><td>Password</td><td><input type=\"password\" name=\"password\" required=\"true\"/></td></tr>\n");
      out.write("                        <tr><td></td><td><input type=\"submit\" value=\"Log In\"/></td></tr>\n");
      out.write("                    </table>   \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div id=\"footer\">\n");
      out.write("                <div id=\"lfooter\"></div>\n");
      out.write("                <div id=\"rfooter\"></div>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
