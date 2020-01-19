package Servlets;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import MyPackage.DatabaseManager;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
@WebServlet(urlPatterns = {"/uploadcode"})
public class uploadcode extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet uploadcode</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet uploadcode at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       try{
           String tname=request.getParameter("tname");
           String desc=request.getParameter("tdescription");
           SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
           String date=df.format(new java.util.Date());
           Part p=request.getPart("file");
           String filename=p.getSubmittedFileName();
           InputStream is= p.getInputStream();
           DatabaseManager db=new DatabaseManager();
           String q="select nvl(max(tid),0)+1 from tender";
           ResultSet rs=db.selectQuery(q);
           rs.next();
           int id=rs.getInt(1);
           boolean res=db.executeNonQuery("insert into tender values('"+id+"','"+tname+"','"+desc+"','"+(id+filename)+"','"+date+"')");
           if(res==true)
           {
               File f=new File(request.getRealPath("/uploadFiles"),id+filename);
               Files.copy(is, f.toPath());
               response.sendRedirect("adminzone/uploadtender.jsp");
           }
           else
               response.sendRedirect("adminzone/uploadtender.jsp");
       }
       catch(Exception e)
       {
           response.sendRedirect("adminzone/uploadtender.jsp?err="+e);
       }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
