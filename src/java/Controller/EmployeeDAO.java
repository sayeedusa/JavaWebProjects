/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Employee;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author sayee
 */
public class EmployeeDAO {

    public EmployeeDAO() {
    }
    ;
    
    public void deleteEmployee(Employee e) throws Exception{
        Connection con=DBUtil.getConnection();
        Statement stmt=con.createStatement();
        System.out.println("Delete working");
        String str;
        str="Delete from emp where empno='"+e.getEmpno()+"'";
        
        System.out.println(str);
        stmt.executeUpdate(str);
    }
    public void SaveRecord(Employee emp) throws Exception{
        Connection con=DBUtil.getConnection();
        Statement stmt=con.createStatement();
        int empno=emp.getEmpno();
        String fname=emp.getFirst_name();
        String lname=emp.getLast_name();
        String dob=emp.getDob();
        String gender=emp.getGender();
        String email=emp.getEmail();
        double salary=emp.getSalary();
        int deptno=emp.getDept_no();
        System.out.println(empno);
        //String strSql="insert into emp(empno,first_name,last_name,dob,gender,email,salary,dept_no) values('"+
         //       empno+"','"+fname+"','"+lname+"','"+dob+"','"+gender+"'"+email+"',"+salary+"',"+deptno+"')";
       String strSql="insert into emp(empno,first_name,last_name,dob,gender,email,salary,dept_no) values('"+
               empno+"','"+fname+"','"+lname+"','"+dob+"','"+gender+"','"+email+"','"+salary+"','"+deptno+"')";
// String strSql="insert into emp(empno) values('"+empno+"')";//,'"+dob+"')";
         stmt.executeUpdate(strSql);
        stmt.close();
        stmt.close();
    }
    
    public void UpdateEmp(Employee e) throws Exception{
          Connection con=DBUtil.getConnection();
          Statement stmt=con.createStatement();
          String strSQL;
          strSQL="UPDATE EMP SET empno="
                  +"'"+e.getEmpno()+"',"
                  +"first_name='"+e.getFirst_name()+"',"
                  +"last_name='"+e.getLast_name()+"',"
                  +"dob='"+e.getDob()+"',"
                  +"gender='"+e.getGender()+"',"
                  +"email='"+e.getEmail()+"',"
                  +"salary='"+e.getSalary()+"',"
                  +"dept_no='"+e.getDept_no()+"'"
                  +"where empno='"+e.getEmpno()+"'";
         
          stmt.executeUpdate(strSQL);
          System.out.println("Update Success");
          stmt.close();
         con.close();
      }  
    public Employee getEmployee(int empno) throws EmployeeNotFoundException,Exception{
        System.out.println("getEmployee"+empno);
        Employee e=new Employee();
        Connection con;
        Statement stmt = null;
        
             con = DBUtil.getConnection();
            stmt=con.createStatement();
            System.out.println("STMT");

            // String str="select empno,first_name,last_name,gender,email,salary,dept_no"
            //       + "from emp where empno='"+empno+"'";
           // String str="select * from  emp where empno='"+empno+"'";
           String str="select empno,first_name,last_name,dob,gender,email,salary,dept_no from emp where empno='"+empno+"'";
            //       + "from emp where empno='"+empno+"'";
           ResultSet rs=stmt.executeQuery(str);
            System.out.println("Test   "+rs.toString());
             if(!rs.next()){
            System.out.println("inside rs");
            throw new EmployeeNotFoundException();
            
            }
        
            System.out.println("out side rs");
            int i=1;
            empno=Integer.parseInt(rs.getString(i++));
            System.out.println(" i++" + empno);
           
            String fastname=rs.getString(i++);
            System.out.println("Fast Name"+ fastname);
            String lastname=rs.getString(i++);
            System.out.println(" Last Name" + lastname);
           // Date dob=rs.getDate(i++);   //rs.getString(i++);
           
            String dob=rs.getString(i++);
           // Date dob=new SimpleDateFormat("yyyy/MM/dd").parse(dob1);
             System.out.println("DOB EMPLOYEEdao " +dob);
            String gender=rs.getString(i++);
            String email=rs.getString(i++);
            String salary=rs.getString(i++);
            String deptno=rs.getString(i++);
            System.out.println("Dept No" + deptno);
           // e = new Employee();
            e.setEmpno(empno);
            
            e.setFirst_name(fastname);
            String st=e.getFirst_name();
            System.out.println("st   " +st);
            System.out.println("e.getfirstname" +e.getFirst_name());
            e.setLast_name(lastname);
            e.setDob(dob);
            e.setGender(gender);
            e.setEmail(email);
            e.setSalary(Double.parseDouble(salary));
           e.setDept_no(Integer.parseInt(deptno));
            stmt.close();
            con.close();
        System.out.println("e.getemno" + e.toString());
        return e;   
    }
        
    }
    
    

