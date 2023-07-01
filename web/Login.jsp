<%-- 
    Document   : Login
    Created on : May 27, 2019, 3:33:16 PM
    Author     : sayee
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Controller.DBUtil"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%-- <%@page import="javax.jws.soap.SOAPBinding.Use"%> --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            //User user=new User();
        String uname;
        String upass;
        uname=request.getParameter("username");
        upass=request.getParameter("password");
        out.println("uname" +uname);
        System.out.println(uname+"  "+upass);
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn;
        conn=DBUtil.getConnection();
       // conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","Admin123");
        PreparedStatement ps;
        ps=conn.prepareStatement("select * from login_table where user_name=? and password=?");
        System.out.println("PS  "+ ps.toString());
        ps.setString(1,uname);
        ps.setString(2,upass);
                
        ResultSet rs=ps.executeQuery();
        System.out.println("RS "+rs.toString());
        
        if(rs.next()){
            //out.print("found");
           // RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
            response.sendRedirect("index.jsp");
           // response.setStatus(response.SC_MOVED_TEMPORARILY);
            //dispatcher.forward(request,response);
            //rd.forward(request, response);
        }else{
            out.println("Login Failed");
            response.sendRedirect("LoginFailed.jsp");
        }
        
        conn.close();
        
        %>
        
    </body>
</html>
