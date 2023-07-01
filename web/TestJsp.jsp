<%-- 
    Document   : TestJsp
    Created on : May 28, 2019, 6:15:35 PM
    Author     : sayee
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Test JSP</h1>
        <% 
try{
    out.println("inside");
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","Admin123");
out.print("   conn "+conn);
    Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery("select * from logintable");
if(rs!=null){
    out.print("Record Foung");
}


conn.close();
stmt.close();
}catch (ClassNotFoundException cle){
    cle.printStackTrace();
}catch(SQLException sqle){
    sqle.printStackTrace();
}
        
        
        
        %>
        
        
        
    </body>
</html>
