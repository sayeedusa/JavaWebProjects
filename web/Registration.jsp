<%-- 
    Document   : Registration
    Created on : Jun 2, 2019, 7:47:50 PM
    Author     : sayee
--%>

<%@page import="java.sql.Date"%>
<%@page import="Controller.EmployeeDAO"%>
<%@page import="Model.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registration File</h1>
        
        <% 
            Employee emp=new Employee();
            //int empn=Integer.parseInt(request.getParameter("empno"));
           // emp.setEmpno(Integer.parseInt(request.getParameter("empno")));
         /*   emp.setFirst_name(request.getParameter("first_name"));
            emp.setLast_name(request.getParameter("Last_name"));
           // emp.setDob(Date.dob);
           emp.setGender(request.getParameter("gender"));
           emp.setEmail(request.getParameter("Email"));
           emp.setSalary(Double.parseDouble(request.getParameter("Salary")));
           emp.setDept_no(Integer.parseInt(request.getParameter("Dept_no")));
           
            
            */
            
            
            int empno=Integer.parseInt(request.getParameter("Empno"));
            EmployeeDAO eDAO=new EmployeeDAO();
            Employee e=null;
        
      emp.setEmpno(empno);
        emp.setFirst_name(request.getParameter("First_name"));
        emp.setLast_name(request.getParameter("Last_name"));
      // Date d=Date.valueOf(request.getParameter("dob"));
        emp.setDob(request.getParameter("dob"));
        emp.setGender(request.getParameter("Gender"));
        emp.setEmail(request.getParameter("Email"));
       // double salary=Double.parseDouble(request.getParameter("salary"));
        emp.setSalary(Double.parseDouble(request.getParameter("Salary")));
        emp.setDept_no(Integer.parseInt(request.getParameter("Dept_no")));
        out.println(emp.getEmpno());
        if(null == e){
            
        
        eDAO.SaveRecord(emp);
        }
        out.println("Record Inserted");
        
        %>
        


        
    </body>
</html>
