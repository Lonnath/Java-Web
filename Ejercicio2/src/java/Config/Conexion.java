
package Config;

import java.sql.*;

public class Conexion {

    Connection con;

    public Conexion() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/academia", "root", "");
        } catch (Exception e) {
            System.err.println("Error: " + e.getMessage());
        }
    }
    
    public Connection getConnection(){
        return con;
    }
}
