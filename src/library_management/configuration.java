/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package library_management;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Rafiq
 */
public class configuration {
    
    static Connection con;
    public  static Connection db_connect(){
        try {
             con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library_management","root","");
             System.out.println("Connected");
             return con;
        } catch (Exception e) {
            System.out.println("Not Connected");
            return null;
        }
    }
    
}
