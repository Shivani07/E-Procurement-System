package org.apache.jsp.userzone;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import MyPackage.DatabaseManager;
import java.util.Date;
import java.text.SimpleDateFormat;

public final class review_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <form action=\"usercode/reviewcode.jsp\" method=\"post\">\n");
      out.write("            <div id=\"wrapper\">\n");
      out.write("                <div id=\"header\">\n");
      out.write("                    <div id=\"logo\">\n");
      out.write("                        <img src=\"images/logo.jpg\" width=\"150\" height=\"150\" alt=\"\"/></div>\n");
      out.write("                    <div id=\"sidetitle\">E-Procurement System</div>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <div id=\"contain1\">\n");
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
      out.write("                    <div id=\"date\">\n");
      out.write("                        Current Date:\n");
      out.write("                        ");

                            SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
                            String dt=df.format(new Date());
                            out.print(dt);
                        
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                    <div id=\"menu\">\n");
      out.write("                        <ul>\n");
      out.write("                            <a href=\"userhome.jsp\"><li>HOME</li></a>\n");
      out.write("                            <a href=\"review.jsp\"><li>REVIEW</li></a>\n");
      out.write("                            <a href=\"complain.jsp\"><li>COMPLAIN</li></a>\n");
      out.write("                            <a href=\"feedback.jsp\"><li>FEEDBACK</li></a>\n");
      out.write("                            <a href=\"changePassword.jsp\"><li>CHANGE PASSWORD</li></a>\n");
      out.write("                                <a href=\"../logout.jsp\"><li>LOGOUT</li></a>\n");
      out.write("                            \n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                \n");
      out.write("                    <div id=\"contain2\" style=\"height: 200px;\">\n");
      out.write("                        <h2 style=\"color: blue; text-align: center;\">Submit Your Review</h2>\n");
      out.write("                        <div style=\"margin:0 auto; width:700px;margin-bottom:20px;padding: 25px;background-color: rgba(0,5,255,0.3);border-radius: 10px;\">\n");
      out.write("                        <table align=\"center\" >\n");
      out.write("                            <tr><td>Rating</td><td><select name=\"rating\">\n");
      out.write("                                        <option>1</option>\n");
      out.write("                                        <option>2</option>\n");
      out.write("                                        <option>3</option>\n");
      out.write("                                        <option>4</option>\n");
      out.write("                                        <option>5</option>\n");
      out.write("                                    </select></td></tr>\n");
      out.write("                            <tr><td>Enter Review Text:</td><td><textarea name=\"reviewtext\" style=\"max-height: 230px; max-width: 430px;\"></textarea></td></tr>\n");
      out.write("                            <tr><td>&nbsp;</td><td><input type=\"submit\" value=\"Submit\"/></td></tr>\n");
      out.write("                        </table>\n");
      out.write("                        </div>\n");
      out.write("                        <div style=\"margin:0 auto; width:700px; height: auto; min-height: 300px; padding:20px;color: white; background-color: rgba(0,0,0,0.8);border-radius: 10px;\">\n");
      out.write("                            <table align=\"center\" border=\"1\" style=\"width:600px;\">\n");
      out.write("                                <tr><th>S.No.</th><th>Review</th><th>Rating</th><th>Posted By</th><th>Posted Date</th></tr>\n");
      out.write("                                ");

                                    int n=1;
                                    ResultSet r=dm.selectQuery("select * from review");
                                    String rev="<table>";
                                    while(r.next()==true)
                                    {
                                
      out.write("\n");
      out.write("                                <tr>\n");
      out.write("                                <td>");
      out.print(n);
      out.write("</td>\n");
      out.write("                                <td>");
      out.print(r.getString("reviewtext"));
      out.write("</td>\n");
      out.write("                                <td>");
      out.print(r.getString("rating"));
      out.write("</td>\n");
      out.write("                                <td>");
      out.print(r.getString("postedby"));
      out.write("</td>\n");
      out.write("                                <td>");
      out.print(r.getString("reviewdt"));
      out.write("</td>\n");
      out.write("                                </tr>\n");
      out.write("                                ");

                                    n++;
                                    }
                                
      out.write("\n");
      out.write("                            </table>\n");
      out.write("                        </div>\n");
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
