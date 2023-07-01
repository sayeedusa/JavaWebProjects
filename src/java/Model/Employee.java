
package Model;

import java.util.Date;


public class Employee {
 
    private int empno;
    private String first_name;
    private String last_name;
    private String dob;
    private String gender;
    private String email;
    private double salary;
    private int dept_no;
public Employee(){
    
}
    public int getEmpno() {
        return empno;
    }

    public void setEmpno(int empno) {
        this.empno = empno;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public int getDept_no() {
        return dept_no;
    }

    public void setDept_no(int dept_no) {
        this.dept_no = dept_no;
    }

    @Override
    public String toString() {
        return "Employee{" + "empno=" + empno + ", first_name=" + first_name + ", last_name=" + last_name + ", dob=" + dob + ", gender=" + gender + ", email=" + email + ", salary=" + salary + ", dept_no=" + dept_no + '}';
    }
    
    
    
}
