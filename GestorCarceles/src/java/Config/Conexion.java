/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Config;

import java.sql.*;
public class Conexion {
    String url ="jdbc:postgresql://localhost:5432/GestorCarceles";
    String usuario= "postgres";
    String contraseña = "admin";
    Connection conexion;
    public Connection getConnection(){
         try {
            Class.forName("org.postgresql.Driver");
            conexion =DriverManager.getConnection(url,usuario,contraseña);
        } catch (Exception e){
        
            System.out.println("Error de conexion "+ e.getMessage());
        }
         
         return conexion;
    }
    
}
