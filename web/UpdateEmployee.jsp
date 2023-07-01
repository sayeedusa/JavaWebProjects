<%-- 
    Document   : UpdateEmployee
    Created on : Jul 7, 2019, 12:47:09 PM
    Author     : sayee
--%>

<%@page import="java.sql.Date"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="Model.Employee"%>
<%@page import="Controller.EmployeeDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UpDate Employee</title>
        <link rel="stylesheet" type="text/css" href="CSS/formcss.css">
        <style>
            form {
  /* Center the form on the page */
  margin: 1 auto;
  /*width: 400px;*/
  /* Form outline */
  padding: 1em; 
  border: 4px solid #CCC;
  border-radius: 1em;
  left: 50%;
    top: 60%;
    margin-left: -15%;
    position: absolute;
    margin-top: -25%;
}

        
</style>
<script src="JavaScript/UpdateEmployeeJS.js" type="text/javascript"></script>
    </head>
    <body style="background-color: greenyellow"> 
   
        
        
    <%
        String submit=(String)request.getParameter("Search");
        if(submit!=null){
          String firstname,lastname,gender,email,salary,deptno;
          
          Date dob;
          int sempno=Integer.parseInt(request.getParameter("empno"));
          System.out.println("Out of try "+sempno);
          try{
              System.out.println(" Inside Try");
              EmployeeDAO eDAO=new EmployeeDAO();
              /*
              */
              
              Employee e=eDAO.getEmployee(sempno);
              int empno=e.getEmpno();
              System.out.println("Update " +empno);
              //JOptionPane.showMessageDialog(null,empno);
              if(sempno == empno){
                  System.out.println("Record Found");
                  request.setAttribute("empno", e.getEmpno());
                  System.out.println("Attribute  "+ request.getAttribute("empno"));
                  request.setAttribute("fname", e.getFirst_name());
                  System.out.println(" attribute Name" + request.getAttribute("fname"));
                 request.setAttribute("lname", e.getLast_name());
                  request.setAttribute("dob", e.getDob());
                  System.out.println("DOB " + request.getAttribute("dob"));
                  request.setAttribute("gender", e.getGender());
                  request.setAttribute("email", e.getEmail());
                  request.setAttribute("salary", e.getSalary());
                  request.setAttribute("deptno", e.getDept_no());
                          
                          
                  
              }else{
                  System.out.println("Record Not Found");
                  
                  
              }
          }catch( Exception ee){
              
          }
        }
        String submitUpdate=(String)request.getParameter("Update");
        if(submitUpdate!=null){
             EmployeeDAO eDAO=new EmployeeDAO();
              Employee e=new Employee();
              
            String firstname,lastname,gender,email;
            String dob;
            double salary;
            int deptno;
            int sempno=Integer.parseInt(request.getParameter("empno"));
            firstname=request.getParameter("fname");
            lastname=request.getParameter("lname");
            //dob=Date.valueOf(request.getParameter("dob"));
            dob=request.getParameter("dob");
            gender=request.getParameter("gender");
            email=request.getParameter("email");
            salary=Double.parseDouble(request.getParameter("salary"));
            deptno=Integer.parseInt(request.getParameter("deptno"));
            
            e.setEmpno(sempno);
            e.setFirst_name(firstname);
            e.setLast_name(lastname);
           e.setDob(dob);
          e.setGender(gender);
          e.setEmail(email);
          e.setSalary(salary);
          e.setDept_no(deptno);
          System.out.println("Update");
          eDAO.UpdateEmp(e);
          
        }
        
String submitDelete=(String)request.getParameter("Delete");
        if(submitDelete!=null){
             EmployeeDAO eDAO=new EmployeeDAO();
              Employee e=new Employee();
              
            String firstname,lastname,gender,email;
            Date dob;
            double salary;
            int deptno;
            int sempno=Integer.parseInt(request.getParameter("empno"));
            firstname=request.getParameter("fname");
            lastname=request.getParameter("lname");
            dob=Date.valueOf(request.getParameter("dob"));
            gender=request.getParameter("gender");
            email=request.getParameter("email");
            salary=Double.parseDouble(request.getParameter("salary"));
            deptno=Integer.parseInt(request.getParameter("deptno"));
            
            e.setEmpno(sempno);
            e.setFirst_name(firstname);
            e.setLast_name(lastname);
           // e.setDob(dob);
          e.setGender(gender);
          e.setEmail(email);
          e.setSalary(salary);
          e.setDept_no(deptno);
          System.out.println("Deleted");
          eDAO.deleteEmployee(e);
          out.print("Deleted");
        }
        %>
       <div class="relative">
    <div class="form-style-3">
        <form style="background-color: #E6E6FA" method="post" action="UpdateEmployee.jsp" onload="inputdisable">
             <pre>
     Employee no    <input type="text" name="empno" value="${empno}" size=25>
     First Name     <input type="text" name="fname" value="${fname}" size=25>
     Last Name      <input type="text" name="lname" value="${lname}" size=25>
     Date of Birth  <input type="text" name="dob" value="${dob}" size=25>
     Gender         <input type="text" name="gender" value="${gender}" size=25>
     Email          <input type="text" name="email" value="${email}" size=25>
     Salary         <input type="text" name="salary" value="${salary}" size=25>
     Dept no        <input type="text" name="deptno" value="${deptno}" size=25>
        
<br>
<pre>
<pre>
    <table >
                <tr><td><input type="submit" name="Search" value="Search"></td>
                <td> <input type="submit" name="Update" value="Update"></td>
                <td> <input type="submit" name="Delete" value="Delete"></td>
                </tr>
    </table>
</pre>
</pre>
  </div>
        </div>
    </pre>
    </form>
</body>
        
        
    
</html>
