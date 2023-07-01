/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.GregorianCalendar;
import sun.util.calendar.Gregorian;

/**
 *
 * @author sayee
 */
public class DBUtil {
    public static Connection getConnection() throws Exception{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","Admin123");
        return con;
    }
 /*   public ResultSet executeQuery(String query,Connection con) throws SQLException{
        Statement stmt=con.createStatement();
        return stmt.executeQuery(query);
    }*/
    public static String getDateString(GregorianCalendar gc){
        return "'" +gc.get(GregorianCalendar.MONTH)+"-"
                +gc.get(GregorianCalendar.DATE)+"-"
                +gc.get(GregorianCalendar.YEAR)+"'";
    }
}
