<%-- 
    Document   : DisplayRecord
    Created on : May 28, 2019, 9:11:25 PM
    Author     : sayee
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Controller.DBUtil"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Employee Records</h1>
        <table border="1" align="center" >
            <thead> Employee Record</thead>
            <tr><td>Emp no</td><td>First Name</td><td>Last Name</td><td>Date of Birth</td><td>Gender</td><td>Email</td><td>Salary</td><td>Dept_no</tr>
  <%  
Connection conn;
conn=DBUtil.getConnection();
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery("select * from emp");
if(rs!=null){
       while (rs.next()) {
           int empno=rs.getInt("empno");
           String fname=rs.getString("first_name");
           String lname=rs.getString("last_name");
           String date=rs.getString("dob");
           String gender=rs.getString("gender");
           String email=rs.getString("email");
           String salary=rs.getString("salary");
           String deptno=rs.getString("dept_no");

          %>
          <tr><td><%=empno%></td> <td><%=fname%></td><td><%=lname%></td><td><%=date%></td><td><%=gender%></td> <td><%=email%></td><td><%=salary%></td><td><%=deptno%></td></tr>
          
           <%
        }//while
    
}// if



            %>
        
        </table>   
        
        
        
        
    </body>
</html>
