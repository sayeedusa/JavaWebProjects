/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author sayee
 */
public class Login_servlet extends HttpServlet {

    
    Connection conn;
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        
        try{
          Class.forName("com.mysql.jdbc.Driver");
            try {
                conn=DBUtil.getConnection();//DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","123");
            } catch (SQLException ex) {
                Logger.getLogger(Login_servlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }catch(ClassNotFoundException clf) {
            
        }
        String userName=request.getParameter("username");
        String pass=request.getParameter("password");
        PreparedStatement ps;
        Statement stmt;
        stmt = conn.createStatement();
        try{
        ps=conn.prepareStatement("select * from login_table where user_name=? and password=?");
            System.out.println("PS "+ps.toString());
        ps.setString(1,userName);
        ps.setString(2,pass);
                System.out.println("Test userName "+userName);
        ResultSet rs=ps.executeQuery();
        ResultSet rs1=stmt.executeQuery("select * from login_table");
            System.out.println("STMT " +rs1.getString("password"));
            System.out.println("  RS "+ rs.getString("user_Name"));
        if(rs.next()){
           
          
            RequestDispatcher dispatcher=request.getRequestDispatcher("Menu.jsp");
            dispatcher.forward(request, response);
        }else{
         System.out.println("Login Failed");   
        }
        }catch(SQLException sqle){
            
        }finally{
            
            
            
        }
        //response.setContentType("text/html;charset=UTF-8");
        //try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
         //   out.println("<!DOCTYPE html>");
         //   out.println("<html>");
         //   out.println("<head>");
         //   out.println("<title>Servlet Login_servlet</title>");            
         //   out.println("</head>");
         //   out.println("<body>");
            
        //    out.println("<h1>Servlet Login_servlet at Sayeed : " + request.getContextPath() + "</h1>");
        //    out.println("</body>");
          //  out.println("</html>");
        //}
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
        } catch (Exception ex) {
            Logger.getLogger(Login_servlet.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (Exception ex) {
            Logger.getLogger(Login_servlet.class.getName()).log(Level.SEVERE, null, ex);
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
