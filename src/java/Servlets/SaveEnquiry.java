/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Servlets;

import MyPackage.DatabaseManager;
import MyPackage.SmsSender;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author USER
 */
@WebServlet(name = "SaveEnquiry", urlPatterns = {"/SaveEnquiry"})
public class SaveEnquiry extends HttpServlet {

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
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SaveEnquiry</title>");            
            out.println("</head>");
            out.println("<body>");
            DatabaseManager dm=new DatabaseManager();
            String name=request.getParameter("name");
            String gender=request.getParameter("gender");
            String address=request.getParameter("address");
            String contactno=request.getParameter("contactno");
            String email=request.getParameter("emailaddress");
            String message=request.getParameter("message");
            SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
            String enquirydt=df.format(new Date());
            ResultSet rs=dm.selectQuery("select nvl(max(id),0)+1 from enquiry");
            rs.next();
            int id=rs.getInt(1);
            out.println(id);
            boolean res=dm.executeNonQuery("insert into enquiry values("+id+",'"+name+"','"+gender+"','"+address+"','"+contactno+"','"+email+"','"+message+"','"+enquirydt+"')");
            if(res==true)
            {
                SmsSender sms=new SmsSender();
                sms.SendSms(contactno,"Hello! "+name+"\n  Your Enquiry is successful.");
                out.println("<script>alert('Thank you for your feedback');window.location.href='enquiry.jsp';</script>");
            }
            else
            {
                out.println("<h2>Database Error <a href='enquiry.jsp'>Back</a></h2>");
            }
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SaveEnquiry.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(SaveEnquiry.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SaveEnquiry.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(SaveEnquiry.class.getName()).log(Level.SEVERE, null, ex);
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
